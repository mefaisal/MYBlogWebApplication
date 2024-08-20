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
<!-- fontAwsome4 icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
<!-- sweetAlert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="sweetalert2.all.min.js"></script>

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

	<main class="primary-background banner-background"
		style="padding-bottom: 70px;">
		<div class="container">
			<div class="row">
				<div class="col-md-5 offset-md-3">

					<div class="card">

						<div class="card-header text-white primary-background text-center">
							<span class="fa fa-3x fa-user-plus"></span><br>
							<p>Register Here</p>
						</div>

						<div class="card-body">

							<form id="reg-form" action=RegisterServlet method="post">

								<div class="mb-3">
									<label for="User_Name" class="form-label"> User Name</label> <input
										type="text" class="form-control" id="User_Name"
										name="User_Name" required>
								</div>

								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Email
										Address</label> <input type="email" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										name="User_Email" required>
									<div id="emailHelp" class="form-text">We'll never share
										your email with anyone else.</div>
								</div>

								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Password</label>
									<input type="password" class="form-control"
										id="exampleInputPassword1" name="User_Password" required>
								</div>

								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Select
										Gender :</label><br> <input type="radio" name="gender"
										value="Male"> Male &nbsp; <input type="radio"
										name="gender" value="Female"> Female
									<!--  &nbsp
										<input type="radio" id="gender"
										name="gender"> Others -->
								</div>

								<div class="mb-3">
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3" placeholder="Enter somthing your self..  "
										name="about"></textarea>
								</div>


								<div class="mb-3 form-check">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1" name="check"> <label
										class="form-check-label" for="exampleCheck1">Agree
										Terms And Condition</label>
								</div>

								<!-- loader.. -->
								<div class="container" id="loader"
									style="text-align: center; display: none">
									<span class="fa fa-spinner fa-spin fa-4x"></span>
									<h4>Please wait....</h4>
								</div>

								<button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>

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
	<!--  sweet alert  -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script src="js/myjs.js" type="text/javascript"></script>

	<script>
	
		$(document).ready(function() {
			console.log("loded...")

			$('#reg-form').on('submit', function(event) {
				event.preventDefault();

				let form = new FormData(this);

				$("#submit-btn").hide();
				$("#loader").show();
                
				/* send registet servlet  */
				$.ajax({
					url : "RegisterServlet",
					type : 'POST',
					data : form,

					success : function(data, textStatus, XMLHttpRequest) {
						 /* console.log(data) */

						$("#submit-btn").show();
						$("#loader").hide();
						
							/* swal.fire({
								  title:"Registered successfuly...We are going to redirect to login page."
							}).then((value) => {
								 window.location= "login_page.jsp"
							}); */
						
							swal.fire(data);
						    
							if(data.trim()=='Registered successfuly...')
						     {
								swal.fire({
									  title:"Registered successfuly...We are going to redirect to login page."
								}).then((value) => {
									 window.location= "login_page.jsp"
								});	
						  }else{
							  
						  }
						
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						swal.fire("sorry ! Something went wrong try again...");
					},

					processData : false,
					contentType : false

				});
			});

		});
	</script>


</body>
</html>