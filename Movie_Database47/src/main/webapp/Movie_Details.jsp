<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style3.css">
    <style type="text/css">
    
   body{
       background-image:linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(11111.jpg);
       background-repeat: repeat;
          }    
   
   a{
  margin-left: 400px;
   }
   
   .buttons {
    text-align: center;
}

.btn-hover {
    width: 200px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 0;
    height: 55px;
    text-align:center;
    border: none;
    background-size: 400% 200%;
    border-radius: 10px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:focus {
    outline: none;
}

.btn-hover.color-2 {
    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
    margin-left: 650px;
}
.btn-hover.color-1 {
    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
}
   
    </style>
</head>
<body>
	<%@page import="com.ranjith.dao.UserDao"%>
	<%@page import="com.ranjith.bean.User"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
  <jsp:useBean id="u" class="com.ranjith.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>
	<%
	String MOV_ID = request.getParameter("MOV_ID");
	User uu = UserDao.getRecordById(Integer.parseInt(MOV_ID));
	%>
			

  <div class="container movie-details">
      <div class="row">
          <div class="col-md-61 left-box">
              <h1><%=uu.getMOV_NAME() %></h1>
              <input type="hidden" name="MOV_ID" value="<%=uu.getMOV_ID()%>">
              <P>Movie Title:-&emsp;&emsp;&emsp;&emsp;&emsp;<%=uu.getMOV_NAME() %></P><br>
              <P>Movie Year:-&emsp;&emsp;&emsp;&emsp;&emsp;<%=uu.getMOV_YEAR()%></P><br>
              <P>Movie Duration:-&emsp;&emsp;&emsp;<%=uu.getMOV_TIME() %></P><br>
              <P>Movie Language:-&emsp;&emsp;&ensp;<%=uu.getMOV_LANG() %></P><br>
              <P>Movie Release Date:-&emsp;<%=uu.getMOV_REL_DATE()%></P><br>
              <P>Movie Release Country:-&emsp;<%=uu.getMOV_REL_COUNTRY()%></P><br>
              <P>Movie Budget:-&emsp;&emsp;&emsp;&emsp;&emsp;<%=uu.getMOV_BUDGET()%></P><br>
              <P><%=uu.getACT1_ROLE()%>:-&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<%=uu.getACT1_NAME() %></P><br>
              <P><%=uu.getACT2_ROLE()%>:-&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<%=u.getACT2_NAME()%></P><br>
              <P>Director Name:-&emsp;&emsp;&emsp;&emsp;<%=uu.getDIR_NAME()%>:&emsp;Director Phono:-&emsp;<%=uu.getDIR_PHONO()%></P><br>
              <P>Producer Name:-&emsp;&emsp;&emsp;&emsp;<%=uu.getPRO_NAME()%>:&emsp;Producer Phono:-&emsp;<%=uu.getPRO_PHONO() %></P><br>
              <P>Movie Category:-&emsp;<%=uu.getCategory1()%>&emsp;<%=uu.getCategory2()%>&emsp;<%=uu.getCategory3()%>&emsp;<%=uu.getCategory4()%>&emsp;<%=uu.getCategory5()%></P><br>
              <P>Movie Ratings:-&emsp;<%=uu.getRATINGS()%>&ensp;Ratings</P><br>
              <P>Total Ratings:-&emsp;<%=uu.getNO_OF_RATINGS()%></P>
<a href="Delete_Movie.jsp?MOV_ID=${u.getMOV_ID()}" ><button class="btn-hover color-1">Delete Movie</button></a>
<a href="Edit_Movie_Form.jsp?MOV_ID=${u.getMOV_ID()}" ><button class="btn-hover color-1">Edit Movie Details</button></a>

          </div>
         
      </div>
  </div>

</body>
</html>