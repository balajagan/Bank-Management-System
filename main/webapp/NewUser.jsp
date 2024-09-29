<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
<h1>Customer Registration Page</h1>
<form>
<label>Name</label><br>
<input type="text" name="n"><br>
<label>Phone Number</label><br>
<input type="number" name="p"><br>
<label>Address</label><br>
<input type="text" name="a"><br>
<label>Date of birth</label><br>
<input type="date" name="d"><br>
<label>Account Type</label><br>
<select name="ac">
    <option>Current AC</option>
    <option>Savings AC</option>
</select>
<br><br>
<input type="submit" value="Register" name="s">
</form>
<jsp:useBean id="d" class="pack.Dbcode"></jsp:useBean>
<%
String s=request.getParameter("s");
if(s!=null)
{
    if(d.insert(request.getParameter("n"),
    		Long.parseLong(request.getParameter("p")),
            request.getParameter("a"),
            request.getParameter("d"),
            request.getParameter("ac"))>0)
    {
        out.print("Register Successfully");
    }
    d.conclose();
}

%>
<a href="Home.jsp">Home</a>
</body>
</html>