<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sorry ! something went wrong..</title>
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

	<div class="container text-center">
	   <img alt="error" src="images/warning.png" class="display-fluid">
	   <h1 class="display-3 p-4"> Sorry ! Something went wrong... </h1>
	   <h2>  <%= exception %> </h2>
	   
	   <a href="index.jsp" class="btn primary-background btn-lg text-white">Home</a>
	</div>

</body>
</html>