<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
	rel="stylesheet">

<title>home page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous" type="text/javascript"></script>

<style type="text/css">
body {
    text-align: center;
    font-family: "Poppins", sans-serif;
  font-weight: 600;
  font-style: normal;
}
form {
    display: inline-block;
    margin-top: 120px;
    width: 520px;
	height: 430px;
	border: 1px solid #FBFCFC;
	box-shadow: 6px 6px 6px 6px #ffe6e6;
	border-radius: 15px;
}

form:hover{
  box-shadow: 0px 10px 20px 5px rgba(0, 0, 0, 0.5);
  transform: translateY(-5px);
}

h1 {
	text-align: center;
}
hr{
	width: 100%;
	color: red;
}
input{
	width:250px;
	height: 35px;
	border-radius: 10px;
	border-color: pink;
	padding-left: 10px;
	padding-top: 10px;
	padding-right: 10px;
	padding-bottom: 10px;
	color: red;
}
#btn {
	margin-left: 100px;
	margin-top: 20px;
	width:150px;
	border-radius: 10px;
	border-color: pink;
}

table{
	margin-top: 60px;
}
tr,td{

padding-top: 15px;
}
input{
	margin-left: 10px;
}
h1{
	margin-top: 40px;
}

</style>
</head>
<body>
	<div>
		<form method="post" action="LoginCheck" id="form1">
			<h1>login form</h1>
			<hr>

			<table>
				<thead></thead>
				<tbody>
					<tr>
						<td>User Name</td>
						<td><input type="text" name="usr" id="usr"
							placeholder="User Id" required></td>
					</tr>
					<tr>
					</tr>
					<tr>
						<td>Enter Password</td>
						<td><input type="password" name="pass" id="pass"
							placeholder="Password" required></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><button id="btn" name="btn">login</button></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>