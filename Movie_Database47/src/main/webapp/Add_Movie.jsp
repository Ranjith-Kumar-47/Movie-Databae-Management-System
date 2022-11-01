<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.ranjith.dao.UserDao" %>
    <jsp:useBean id="u" class="com.ranjith.bean.User"></jsp:useBean>
    <jsp:setProperty property="*" name="u"/>
    <%
int i = UserDao.save(u);
if(i>0)
{
	response.sendRedirect("AddMovie-Success.jsp");
}
else
{
	response.sendRedirect("AddMovie-Error.jsp");
}
%>