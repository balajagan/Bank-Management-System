<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="pack.Customer"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="d" class="pack.Dbcode"></jsp:useBean>
<%
int id=Integer.parseInt(request.getParameter("id"));
ArrayList<Customer> a= d.view();
for(Customer c:a)
{
    if(id==c.getId()){
%>
<h1>Customer Details</h1>
<form action="Del.jsp">
<label>Id</label><br>
<input type="number" name="id" value="<%=id %>"><br>
<input type="submit" value="Delete">
</form>
<%
}
}
%>
<a href="Home.jsp">Home</a>

</body>
</html>