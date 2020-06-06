<%@page import="com.java.ecommerce.helper.FactoryProvider"%>
<%@page import="com.java.ecommerce.dao.CategoryDao"%>
<%@ page import="com.java.ecommerce.entitys.*"%>
<%@ page import="java.util.*"%>
<%
	User user = (User) session.getAttribute("current-user");
	if (user == null) {

		session.setAttribute("message", "Login first!! ");
		response.sendRedirect("login.jsp");
		return;
	} else {
		if (user.getUserType().equals("normal")) {
			session.setAttribute("message", "you are not a admin user");
			response.sendRedirect("login.jsp");
			return;
		}
	}
%>

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

	<div class="container admin">
		<div class="row mt-3">
			<div class="col-md-4">
				<div class="card" style="width: 15rem;">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width: 50px" class="img-fluid" src="img/user.png"
								alt="user-icon">
							<h5>5243</h5>
							<h5>User</h5>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card" style="width: 15rem;">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width: 50px" class="img-fluid"
								src="img/unnamed.png" alt="user-icon">
							<h5>5243</h5>
							<h5>Category</h5>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card" style="width: 15rem;">
					<div class="card-body text-center">
						<div class="container">
							<img style="max-width: 50px" class="img-fluid"
								src="img/product.png" alt="user-icon">
							<h5>5243</h5>
							<h5>Product</h5>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div class="container">
			<div class="row mt-3">
				<div class="col-md-6">
					<div class="card" data-toggle="modal" data-target="#exampleModal"
						style="width: 15rem;">
						<div class="card-body text-center">
							<div class="container">
								<img style="max-width: 50px" class="img-fluid"
									src="img/add category.png" alt="user-icon">
								<h5>5243</h5>
								<h5>Add Category</h5>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6">
					<div class="card" data-toggle="modal" data-target="#exampleModal2"
						style="width: 15rem;">
						<div class="card-body text-center">
							<div class="container">
								<img style="max-width: 50px" class="img-fluid"
									src="img/add product.png" alt="user-icon">
								<h5>5243</h5>
								<h5>Add Product</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Button trigger modal -->


	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="container">
						<form action="ProductOpreationServlet" method="POST">
							<input type="hidden" name="operation" value="add category">
							<div class="form-group font-weight-bold">
								<label for="exampleInputEmail1">Category Title</label> <input
									type="Title" name="ctitle" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter category title" required>
							</div>
							<div class="form-group font-weight-bold">
								<label for="exampleInputEmail1">Category Discription</label>

								<textarea style="height: 200px;" name="cdiscription"
									class="form-control" placeholder="Enter category discription"
									name="cDiscription" required></textarea>

							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Button trigger modal -->


	<!-- Modal -->
	<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add product</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<form action ="ProductOpreationServlet" method="POST" enctype="multipart/form-data">
					<input type ="hidden" name="operation" value="add product">
						<div class="form-group font-weight-bold">
							<label for="exampleInputEmail1">Product Name</label> <input
								type="text" class="form-control" name="pName"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter email">
						</div>

						<div class="form-group font-weight-bold">
							<label for="exampleInputEmail1">Price</label> <input
								type="number" class="form-control" name="pPrice"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter product price">
						</div>
						<div class="form-group font-weight-bold">
							<label for="exampleInputEmail1">Discount</label> <input
								type="number" class="form-control" name="pDiscount"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Discount">
						</div>
						<div class="form-group font-weight-bold">
							<label for="exampleInputEmail1">Quentity</label> <input
								type="number" class="form-control" name="pQuantity"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Quantity">
						</div>
						<%
							CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
							List<Category> list = cdao.getCategory();
						%>
						<div class="form-group font-weight-bold">
							<label for="exampleInputEmail1">Category</label> <select
								name="CatId" class="form-control" id=" ">

								<%
									for (Category c : list) {
								%>
								<option value="<%=c.getCategoryId()%>"><%=c.getCategoryTittle()%></option>
								<%
									}
								%>
							</select>
						</div>
						<div class="form-group">
						<label for="pPic"> Select Photo</label><br	>
						<input type ="file" id="pPic" name="pPic" >
 						</div>
						<div class="form-group font-weight-bold">
							<label for="exampleInputEmail1">Category Discription</label>

							<textarea style="height: 200px;" name="pDiscription"
								class="form-control" placeholder="Enter category discription"
								name="cDiscription" required></textarea>

						</div>
						<div class="text-center">

							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>

</body>
</html>