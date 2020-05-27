<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file ="components/common-css-js.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file ="components/navbar.jsp" %>
<body>
<div class="row mt-5">
<div class= "col-md-4 offset-md-4">
<form>
<div class="form-group">
    <label for="name">User name</label>
    <input type="text" class="form-control" id="name"  placeholder="Enter name">
  </div>
  <div class="form-group">
    <label for="email"> Email</label>
    <input type="email" class="form-control" id="email"  placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="password">Password </label>
    <input type="password" class="form-control" id="password"  placeholder="Enter password">
  </div>
  <div class="form-group">
    <label for="number"> number</label>
    <input type="number" class="form-control" id="number"  placeholder="Enter phone number">
  </div>
  <div class="form-group">
    <label for="name">Address</label>
<textarea style ="height:120px;" class ="form-control" placeholder="enter your address"></textarea>
  </div>
  <div class ="container text-center">
  <button type="submit" class="btn btn-primary">Register</button>
    <button class="btn btn-outline-warning">Reset</button>
    </div>
  
</form>
</div>
</div>
</body>
</html>