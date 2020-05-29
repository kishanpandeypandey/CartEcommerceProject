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
<%@ include file ="components/navbar.jsp" %>
<%@ include file ="components/message.jsp" %>
<div class="row mt-5">
<div class= "col-md-4 offset-md-4">
<form action ="RegisterServlet" method="post">
<div class="form-group">
    <label for="name">User name</label>
    <input type="text" name="username" class="form-control" id="name"  placeholder="Enter name">
  </div>
  <div class="form-group">
    <label for="email"> Email</label>
    <input type="email" name ="useremail"class="form-control" id="email"  placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="password">Password </label>
    <input type="password"name ="userpassword" class="form-control" id="password"  placeholder="Enter password">
  </div>
  <div class="form-group">
    <label for="number"> number</label>
    <input type="number" name="usernumber"class="form-control" id="number"  placeholder="Enter phone number">
  </div>
  <div class="form-group">
    <label for="name">Address</label>
<textarea style ="height:120px;"name ="useraddress" class ="form-control" placeholder="enter your address"></textarea>
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