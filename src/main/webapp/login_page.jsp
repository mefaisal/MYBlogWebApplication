<%@page
	import="com.mysql.cj.x.protobuf.MysqlxNotice.SessionStateChangedOrBuilder"%>
<%@page import="com.myweb.blog.entities.Message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BlogWebPage</title>

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

	<main
		class="d-flex align-items-center primary-background banner-background"
		style="height: 75vh">
		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">

					<div class="card">


						<div class="card-header text-white primary-background text-center">
							<span class="fa fa-3x fa-user-circle"></span> <br>
							<p>login here</p>
						</div>


						<!--  // login page error message -->
						<%
						Message m = (Message) session.getAttribute("msg");

						if (m != null) {
						%>

						<div class="alert <!--alert-danger--> <%=m.getCssClass()%>"
							role="alert">

							<%=m.getContent()%>

						</div>

						<%
						session.removeAttribute("msg");
						}
						%>


						<div class="card-body">
							<form method="post" action="loginServlet">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Email
										address</label> <input type="email" class="form-control" required
										name="email" id="exampleInputEmail1"
										aria-describedby="emailHelp">
									<div id="emailHelp" class="form-text">We'll never share
										your email with anyone else.</div>
								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Password</label>
									<input type="password" class="form-control" required
										name="password" id="exampleInputPassword1">
								</div>
								<div class="container text-center">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>

							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</main>

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
</body>
</html>