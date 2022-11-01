 <!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title>  
</head>  
<body>  
  
<%@page import="com.ranjith.dao.UserDao,com.ranjith.bean.*,java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>  
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
  <jsp:useBean id="u" class="com.ranjith.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>
<h1>Users List</h1>  
  
<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90">
  
<tr>
<th>MOVIE ID</th>
<th>MOVIE IMAGE</th>
<th>MOVIE NAME</th>
<th>MOVIE YEAR</th>
<th>MOVIE TIME</th>
<th>MOVIE LANGUAGE</th>
<th>MOVIE RELEASED DATE</th>
<th>MOVIE RELEASED COUNTRY</th>
<th>MOVIE BUDGET</th>
<th>ABOUT MOVIE</th>
<th>ACTOR 1 NAME</th>
<th>ACTOR 1 ROLE</th>
<th>ACTOR 2 NAME</th>
<th>ACTOR 2 ROLE</th>
<th>DIRECTOR NAME</th>
<th>DIRECTOR PHONO</th>
<th>PRODUCER NAME</th>
<th>PRODUCER PHONO</th>
<th>RATINGS</th>
<th>NO OF RATINGS</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>
<c:forEach items="${list}" var="u" >
<tr>
<td>${u.getMOV_ID()}</td>
<td></td>
<td>${u.getMOV_NAME()}</td>
<td>${u.getMOV_YEAR()}</td>
<td>${u.getMOV_TIME()}</td>
<td>${u.getMOV_LANG()}</td>
<td>${u.getMOV_REL_DATE()}</td>
<td>${u.getMOV_REL_COUNTRY()}</td>
<td>${u.getMOV_BUDGET()}</td>
<td>${u.getABOUT_MOV()}</td>
<td>${u.getACT1_NAME()}</td>
<td>${u.getACT1_ROLE()}</td>
<td>${u.getACT2_NAME()}</td>
<td>${u.getACT2_ROLE()}</td>
<td>${u.getDIR_NAME()}</td>
<td>${u.getDIR_PHONO()}</td>
<td>${u.getPRO_NAME()}</td>
<td>${u.getPRO_PHONO()}</td>
<td>${u.getRATINGS()}</td>
<td>${u.getNO_OF_RATINGS()}</td>
  
<td><a href="editform.jsp?MOV_ID=${u.getMOV_ID()}">Edit</a></td>  
<td><a href="Delete_Movie.jsp?MOV_ID=${u.getMOV_ID()}">Delete</a></td>
</tr> 
</c:forEach>  
</table>  
<br/><a href="adduserform.jsp">Add New User</a>  
 <br/><a href="index.jsp">Movie List</a>  
  <%


            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fileupload", "root", "");
                Statement st = con.createStatement();
                String sql = "SELECT filename FROM image_table where id=1";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    String filename = rs.getString("filename");
        %>

        <table style="width:100%">
            <tr>
                <th>Image</th>

            </tr>
            <tr>
                <td><image src="<%=filename%>" width="200" height="200"/></td>
                                <td><image src="<%=filename%>" width="200" height="200"/></td>
                

            </tr>
        </table>
        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %><br>
    <center><a href="viewAll.jsp">View All </a></center>
</body>  
</html>  