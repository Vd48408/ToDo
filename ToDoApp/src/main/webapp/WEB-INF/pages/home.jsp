<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>OLIVER'S-${ page}</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="http://localhost:8080/ToDoApp/home"
			style="color:"grey">OLIVER BRAND</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="http://localhost:8080/ToDoApp/home">Home <span
						class="sr-only">(current)</span>
				</a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Quick Work </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="http://localhost:8080/ToDoApp/food">FOOD</a>
						<div class="dropdown-divider my-0 "></div>
						<a class="dropdown-item"
							href="http://localhost:8080/ToDoApp/freshUp">FRESH UP</a>
						<div class="dropdown-divider my-0"></div>
						<a class="dropdown-item"
							href="http://localhost:8080/ToDoApp/miscellaneous">MISCELLANEOUS</a>
					</div></li>

			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<div class="container mt-3">
		<h1 class="text-center" style="text-shadow: 2px 2px cyan;">WELCOME
			TO OLIVER TODO'S</h1>

		<div class="row mt-5">
			<div class="col-md-2">


				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active">
						MENU</button>
					<a href='<c:url value='/food'></c:url>'
						class="list-group-item list-group-item-action">FOOD</a> <a
						href='<c:url value='/freshUp'></c:url>'
						class="list-group-item list-group-item-action">FRESH UP</a> <a
						href='<c:url value='/miscellaneous'></c:url>'
						class="list-group-item list-group-item-action">MISCELLANEOUS </a>

				</div>
			</div>
			<div class="col-md-10 ">

				<c:if test="${page=='food'}">
					<h2 class="text-center">ENTER YOUR NAME & FOOD</h2>
					<form:form action="save" method="post" modelAttribute="Food">

						<div class="form-group">
							<form:input path="pname" cssClass="form-control"
								placeholder="Enter Your Name" />
						</div>
						<div class="form-group">
							<form:textarea path="wfood" cssClass="form-control"
								placeholder="Food Name" />
						</div>
							<div class="container text-center">
							<button class="btn btn-outline-success">Submit</button>


						</div>
					</form:form>


				</c:if>
				<c:if test="${page=='freshUp'}">
					<h2 class="text-center">ENTER YOUR NAME</h2>
					<form:form action="submitt" method="post" modelAttribute="Fresh">

						<div class="form-group">
							<form:input path="yname" cssClass="form-control"
								placeholder="Enter Your Name" />
						</div>
						<div class="container text-center">
							<button class="btn btn-outline-success">Submit</button>


					</div>


					</form:form>

				</c:if>
				<c:if test="${page=='miscellaneous'}">
					<h2 class="text-center">ENTER YOUR NAME AND WORK</h2>
					<form:form action="submit" method="post" modelAttribute="MISC">

						<div class="form-group">
							<form:input path="name" cssClass="form-control"
								placeholder="Enter Your Name" />
						</div>
						<div class="form-group">
							<form:textarea path="work" cssClass="form-control"
								placeholder="Enter Your Work" />
						</div>
						<div class="container text-center">
							<button class="btn btn-outline-success">Submit</button>


						</div>


					</form:form>

				</c:if>
			</div>

		</div>
	</div>




	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>