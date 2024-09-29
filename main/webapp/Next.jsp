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
if(d.update(request.getParameter("n"),
        Long.parseLong(request.getParameter("p")),
        request.getParameter("ad"),
        request.getParameter("db"),
        request.getParameter("ac"),
        Integer.parseInt(request.getParameter("id")))>0)
{
    out.print("Updated");
}
%>
<a href="View.jsp">View page</a>
</body>
</html>