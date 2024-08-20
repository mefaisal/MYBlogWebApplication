<%@page import="com.myweb.blog.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BlogWebApplication</title>
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

	<!--START NAVBAR-->
	<%@include file="normalNavbar.jsp"%>
	<!--END NAVBAR-->

	<!--banner-->
	<div class="container-fluid p-0 m-o banner-background ">
		<div class=" mt-0 p-8 primary-background text-white">

			<div class="container">
				<h1 class="display-3">
					<br> Welcome To MY BLOG
				</h1>
				<p>We give you a warm welcome!</p>
				<br>

				<button class="btn btn-outline-light" type="submit">
					<span class="fa fa-smile-o"> </span> start ! its Free
				</button>
				<a href="login_page.jsp" class="btn btn-outline-light" type="submit">
					<span class="fa fa-globe fa-spin"> </span> Login
				</a>
				<br> <br> <br>
			</div>
		</div>
	</div>
	<!--end banner-->

	<!--cards start-->

	<div class="container mt-5 p-0">
		<div class="row">

			<div class="col-md-4 ">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">JAVA</h5>
						<h6 class="card-subtitle mb-2 text-muted">Programming
							Language</h6>
						<p class="card-text">Get Noticed by the Top Hiring Companies
							with Simplilearn's Job Assist Program. Enroll Now! Complete Full
							Stack Java Developer Course</p>
						<button class="btn btn-outline-light primary-background "
							type="submit">
							<span class="fa fa-globe fa-spin"> </span> read more...
						</button>
					</div>
				</div>
			</div>

			<div class="col-md-4 ">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">JSP</h5>
						<h6 class="card-subtitle mb-2 text-muted">Programming
							Language</h6>
						<p class="card-text">Get Noticed by the Top Hiring Companies
							with Simplilearn's Job Assist Program. Enroll Now! Complete Full
							Stack Java Developer Course</p>
						<button class="btn btn-outline-light primary-background "
							type="submit">
							<span class="fa fa-globe fa-spin"> </span> read more...
						</button>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Project Implementation</h5>
						<h6 class="card-subtitle mb-2 text-muted">Programming
							Language</h6>
						<p class="card-text">Get Noticed by the Top Hiring Companies
							with Simplilearn's Job Assist Program. Enroll Now! Complete Full
							Stack Java Developer Course</p>
						<button class="btn btn-outline-light primary-background "
							type="submit">
							<span class="fa fa-globe fa-spin"> </span> read more...
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="container mt-3 p-0">
		<div class="row">

			<div class="col-md-4 ">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Data Structure</h5>
						<h6 class="card-subtitle mb-2 text-muted">Programming
							Language</h6>
						<p class="card-text">Get Noticed by the Top Hiring Companies
							with Simplilearn's Job Assist Program. Enroll Now! Complete Full
							Stack Java Developer Course</p>
						<button class="btn btn-outline-light primary-background "
							type="submit">
							<span class="fa fa-globe fa-spin"> </span> read more...
						</button>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Python</h5>
						<h6 class="card-subtitle mb-2 text-muted">DBMS</h6>
						<p class="card-text">Get Noticed by the Top Hiring Companies
							with Simplilearn's Job Assist Program. Enroll Now! Complete Full
							Stack Java Developer Course</p>
						<button class="btn btn-outline-light primary-background "
							type="submit">
							<span class="fa fa-globe fa-spin"> </span> read more...
						</button>
					</div>
				</div>
			</div>

			<div class="col-md-4 ">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Swing</h5>
						<h6 class="card-subtitle mb-2 text-muted">Programming
							Language</h6>
						<p class="card-text">Get Noticed by the Top Hiring Companies
							with Simplilearn's Job Assist Program. Enroll Now! Complete Full
							Stack Java Developer Course</p>
						<button class="btn btn-outline-light primary-background "
							type="submit">
							<span class="fa fa-globe fa-spin"> </span> read more...
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--cards end-->



	<%-- <%
	Connection con = ConnectionProvider.getConnection();
	%>
	<h1><%= con %></h1> --%>


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
	
	<!-- to check jquery is enable or not 
	  <script>
	    $(document).ready(function(){
	    	alert("document loded")
	    })
	</script> -->

</body>
</html>