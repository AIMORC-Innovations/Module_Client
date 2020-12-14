<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
 <title>Registration Page</title>
  
 <style>
 
 body {font-family: Arial, Helvetica, sans-serif;}
 form { width:50%;}
 .container {
  padding: 16px;
}
 input {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
.name{
display: inline-block;
}

.pwd{
display: inline-block;
}
.gender{
width:100%;
}
 </style>
</head>
<body>


<div class="container" >
<h3 class="Form_header"> Registration Form </h3>
<hr>
<form  id="RegisterForm" method="post" action="Registrationservlet">
<div class="name">
<label >FirstName :</label>
<input type="text"  id="firstname" name="firstname" placeholder="FirstName" required/>
</div>
<div class="name">
<label >LastName :</label>
<input type="text" id="lastname" name="lastname" placeholder="LastName" required/>
</div>
<br>
<label >Mobile Number :</label>
<input type="text" id="mobnum" name="mobnum" placeholder="Mobile Number" required/>
<br>
<label >Address :</label>
<input type="text" id="address" name="address" placeholder="Address" required />
<br>
<label >Email ID :</label>
<input type="email"  id="mail" name="mail" placeholder="Email ID" required/>
<br>
 <label >Gender :</label>
<select class="gender">  
<option  value="Male">Male</option>  
<option value="Female">Female</option>  
</select>
<br>
<br>
<label >Date-of-Birth :</label>
<input type="date"  id=date"  name="date" placeholder="DOB" required/>
<br>
<label >Username :</label>
<input type="text" id="username" name="username" placeholder="Username" required/>
<br>
<div class="pwd">
<label >Password :</label>
<input type="password"  id="password1" name="password1" placeholder="Password" required/>
</div>

<div class="pwd">
<label > ConfirmPassword</label>
<input type="password" id="Password2" name="Password2" placeholder="Username" required/>
</div>
<br>
<button type="submit" id="submit" >Register </button>
<!-- <button type="submit" value="login">Create Account</button> -->
</form>
</div>
<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("[id*=submit]").click(function() {
				var v_data = {};
				v_data.firstname = $.trim($("[id*=firstname").val());
				v_data.lastname = $.trim($("[id*=lastname]").val());
				v_data.mobnum = $.trim($("[id*=mobnum]").val());
				v_data.address = $.trim($("[id*=address]").val());
				v_data.mail = $.trim($("[id*=mail]").val());
				v_data.date = $.trim($("[id*=date]").val());
				v_data.username = $.trim($("[id*=username]").val());
				v_data.password1 = $.trim($("[id*=password1]").val());
				v_data.password2 = $.trim($("[id*=password2]").val());
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
