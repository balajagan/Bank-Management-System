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
<form action="Next.jsp">
<label>Id</label><br>
<input type="number" name="id" value="<%=id %>" readonly="readonly"><br>
<label>Name</label><br>
<input type="text" name="n" value="<%=c.getN() %>"><br>
<label>Phone Number</label><br>
<input type="number" name="p" value="<%=c.getPno() %>"><br>
<label>Address</label><br>
<input type="text" name="ad" value="<%=c.getA() %>"><br>
<label>Date of Birth</label><br>
<input type="date" name="db" value="<%=c.getD() %>"><br>
<label>Account Type</label><br>
<select name="ac">
    <option><%=c.getAt() %></option>
    <option>Current AC</option>
    <option>Savings AC</option>
</select><br>
<br>
<input type="submit" value="Update">
</form>
<%
}
}
%>
<a href="Home.jsp">Home</a>
</body>
</html>