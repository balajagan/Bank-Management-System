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
<table border='1' rules='all'>
<tr>
<th colspan="8">
<h2>Customer Details</h2>
</th></tr>
<tr>
<th>Id</th>
<th>Name</th>
<th>Phone Number</th>
<th>Address</th>
<th>Date Of Birth</th>
<th>Account Type</th>
<th>Update</th>
<th>Delete</th>
</tr>
<%
ArrayList<Customer> a= d.view();
for(Customer c:a)
{
    out.print("<tr>");
    out.print("<td>"+c.getId()+"</td>");
    out.print("<td>"+c.getN()+"</td>");
    out.print("<td>"+c.getPno()+"</td>");
    out.print("<td>"+c.getA()+"</td>");
    out.print("<td>"+c.getD()+"</td>");
    out.print("<td>"+c.getAt()+"</td>");
    out.print("<td><a href='Update.jsp?id="+c.getId()+"'>Update</td>");
    out.print("<td><a href='Delete.jsp?id="+c.getId()+"'>Delete</td>");
    out.print("</tr>");
}
%>

</table>
<a href="Home.jsp">Home</a>
</body>
</html>