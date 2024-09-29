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
if(d.delete(Integer.parseInt(request.getParameter("id")))>0)
{
    out.print("Details Deleted");
}
%>
<a href="View.jsp">View page</a>
</body>
</html>