<%@page import="com.java.ecommerce.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file ="components/common-css-js.jsp" %>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="components/navbar.jsp" %>

<h1> hello jarvesh</h1>
<%
out.println(FactoryProvider.getFactory());
%>

</body>
</html>