<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="components/common-css-js.jsp"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>
	<%@ include file="components/message.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card mt-3">
					<div class="card-header custom-bg ">
						<h3>Login here</h3>
					</div>
					<div class="card-body">

						<form action ="loginServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" name="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" name="password" class="form-control"
									id="exampleInputPassword1" placeholder="Password">
							</div>

							<a href="register.jsp" class=" d-block mb-2">If not register
								click here</a>
							<div style="text-align: center">
								<button type="submit" class="btn btn-primary" align="center">Submit</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

</body>
</html>