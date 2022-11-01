<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
if(username.equals("rock47")  && password.equals("12345") )
{
	response.sendRedirect("Movies_List.jsp");
}
else
{
	response.sendRedirect("error.jsp");
}
%>

</body>
</html>