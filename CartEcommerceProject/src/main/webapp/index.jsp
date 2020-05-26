<%@page import="com.java.ecommerce.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> hello jarvarse</h1>
<%
out.println(FactoryProvider.getFactory());

%>
</body>
</html>