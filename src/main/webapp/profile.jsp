<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.myweb.blog.entities.Users"%>
<%@page errorPage="error_page.jsp"%>

<!--  jab tak session me value rahega tb tk user(banda) login rahega refer by loginServlet page -->
<%
Users user = (Users) session.getAttribute("currentUser");
if (user == null) {
	response.sendRedirect("login_page.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- fontwsome4 icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">

<link rel="stylesheet" href="css/MyStyle.css" type="text/css">
<style>
.banner-background {
	clip-path: polygon(50% 0%, 100% 0, 100% 90%, 75% 100%, 37% 92%, 0 100%, 0 0);
}
</style>
</head>
<body>
	<%-- 
	<h1>welcome page </h1><br>
	<%= user.getId() %>
	<%= user.getName() %>
	<%= user.getEmail() %>
	<%= user.getPassword() %>  --%>



	<!-- nav-bar start -->
	<nav
		class="navbar navbar-expand-lg navbar-dark primary-background shadow">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> MY BLOG </a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">

				<ul class="navbar-nav me-auto mb-2 mb-lg-0">

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp"><i class="fa fa-home">
						</i>Home</a></li>

					<li class="nav-item"><a class="nav-item nav-link" href="#"><i
							class="fa fa-user-o "> </i> About </a></li>

					<li class="nav-item"><a class="nav-link" href="#"> <i
							class="fa fa-image"></i>Gallery
					</a></li>

					<li class="nav-item"><a class="nav-link" href="#"><i
							class="fa fa-address-book-o"> </i> Contact </a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							<i class="fa fa-mortar-board"> </i> Categories
					</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#"> Programming
									Language </a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#"> Project
									Implementation </a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#"> Data Structure </a></li>
						</ul></li>
				</ul>

				<ul class="navbar-nav d-flex">

					<li class="nav-item"><a class="nav-link" href="#"
						class="btn btn-primary" data-bs-toggle="modal"
						data-bs-target="#profile-modal"> <i class="fa fa-user-circle"
							aria-hidden="true"></i> <%=user.getName()%>
					</a></li>
					<span>&nbsp;</span>
					<li class="nav-item"><a class="nav-link" href="logoutServlet">
							<i class="fa fa-sign-out"> </i>&nbsp; Logout
					</a></li>


				</ul>



			</div>
		</div>
	</nav>
	<!-- nav-bar end -->


	<!-- start profile modal -->

	<!-- Button trigger modal -->
	<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#profile-modal">Launch demo modal</button> -->

	<!-- Modal -->
	<div class="modal fade" id="profile-modal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header primary-background text-white">
					<h5 class="modal-title" id="exampleModalLabel">Details</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center">
					<img src="profile-pics/<%=user.getProfile()%>" width="200px"
						style="border-radius: 50%;" height="200px;"></img> <br>


					<!-- start profile details table  -->
					<div id="profile-details">
						<h5 class="modal-title" id="exampleModalLabel"><%=user.getName()%></h5>
						<table class="table">
							<tbody>
								<tr>
									<th scope="row">ID :</th>
									<td><%=user.getId()%></td>
								</tr>
								<tr>
									<th scope="row">Email :</th>
									<td><%=user.getEmail()%></td>
								</tr>
								<tr>
									<th scope="row">Gender :</th>
									<td><%=user.getGender().toUpperCase()%></td>
								</tr>
								<tr>
									<th scope="row">Status :</th>
									<td colspan="2"><%=user.getAbout()%></td>
								</tr>
								<tr>
									<th scope="row">Register on :</th>
									<td colspan="2"><%=user.getDateTime()%></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- end profile details table -->

					<!-- Edit Profile  -->
					<div id="profile-edit" style="display: none;">
						<h3>Please Edit Carefully</h3>
						<form action="EditServlet" method="post" enctype="multipart/form-data">
							<table class="table">
								<tbody>
									<tr>
										<th scope="row">ID :</th>
										<td><%=user.getId()%></td>
									</tr>
									<tr>
										<th scope="row">Name :</th>
										<td><input name="profie_name" type="text"
											value="<%=user.getName()%>"></td>
									</tr>
									<tr>
										<th scope="row">Email :</th>
										<td><input name="profie_email" type="email"
											value="<%=user.getEmail()%>"></td>
									</tr>
									<tr>
										<th scope="row">Password :</th>
										<td><input name="profie_password" type="text"
											value="<%=user.getPassword()%>"></td>
									</tr>
									<tr>
										<th scope="row">Status :</th>
										<td colspan="2"><textarea name="profie_status"
												class="form-control" rows="3"><%=user.getAbout()%> </textarea></td>
									</tr>
									<tr>
										<th scope="row">Update Profile :</th>
										<td><input type="file" name="profie_pic"></td>
									</tr>
								</tbody>
							</table>

							<button type="submit"
								class="btn btn-outline-light  primary-background ">
								Save</button>

						</form>
					</div>
					<!-- End Edit Profile -->

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="edit-profile-btn">Edit</button>
				</div>
			</div>
		</div>
	</div>

	<!-- end profile modal -->





	<!--Bootstrap java script -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>

	<!-- jquery cdn -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>

	<script src="js/myjs.js" type="text/javascript"></script>

	<script>
		$(document).ready(function() {

			let editStatus = false;

			$('#edit-profile-btn').click(function() {

				//toggle logic
				if (editStatus == false) {
					$("#profile-details").hide();
					$("#profile-edit").show();

					editStatus = true;
					$(this).text("Back");
				} else {
					$("#profile-details").show();
					$("#profile-edit").hide();

					editStatus = false;
					$(this).text("Edit");
				}

			});
		});
	</script>
</body>
</html>