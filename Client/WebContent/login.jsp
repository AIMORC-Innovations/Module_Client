<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

form {
	border: 3px solid #f1f1f1;
	width: 50%;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 20%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

.container {
	align: center;
}
</style>

</head>
<body>


	<form id="loginform" action="loginservlet" method="post">
		<div class="imgcontainer">
			<img src="https://www.w3schools.com/howto/img_avatar2.png"
				alt="Avatar" class="avatar">
		</div>
		-

		<div class="container">
			<h1 align="center">Please Login!</h1>
			<label><b>Username</b></label> <input type="text" id="username"
				placeholder="Enter Username" name="username"> <label><b>Password</b></label>
			<input type="password" id="password" placeholder="Enter Password"
				name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
				title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
				required>

			<button type="submit" id="submit" name="submit" value="login">Login</button>
	</form>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("[id*=submit]").click(function() {
				var v_data = {};
				v_data.username = $.trim($("[id*=username").val());
				v_data.password = $.trim($("[id*=password]").val());
				$.ajax({
					type : "POST",
					url : "loginservlet",
					data : JSON.stringify(v_data),
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					success : function(result) {
						console.log("done");
					}
				});
				return false;
			});
		});
	</script>
</body>
</html>
