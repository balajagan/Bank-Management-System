<%@page import="pack.Dbcode"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="d" class="pack.Dbcode"></jsp:useBean>
<%

if(d.login(request.getParameter("u"), request.getParameter("p")))
{
%>
<jsp:forward page="Home.jsp"></jsp:forward>
<%
}
else
{
%>
<p>Invalid Username OR Password</p>
<jsp:include page="Login.jsp"></jsp:include>
<%
}
d.conclose();
%>
</body>
</html>