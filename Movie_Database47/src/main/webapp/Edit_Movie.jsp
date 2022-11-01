<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ranjith.dao.UserDao"%>  
<jsp:useBean id="u" class="com.ranjith.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  
UserDao.update(u);  
response.sendRedirect("Movies_List.jsp");  
%> 
</body>
</html>