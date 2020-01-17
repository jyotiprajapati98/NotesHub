
<style>
form
{
	width:500;
	height:460;
	background-color:#009;
	margin-top:50;
	margin-left:-20;
	
	
}
font
{
	color:#FFF;
	
}
a
{
	text-decoration:none;
	color:#FFF;
	font-size:18px;
}

</style>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Jstudy</title>
</head>
<?php
include("head2.php");
?>
<script type="text/javascript">
window.onload=function()
{
	document.getElementById("pass1").onchange=validatePassword;
}
</script>

<body bgcolor="#FFFFFF">
<center>
<div id="form">
<form action="insertuserdata.php" method="get" name="f1" >
<br><br>
<a href="Register.php" ><font color="#FFFFFF" size="+2">  Register</a><br><br> <font size="+1">
Name:-<input type="text" name="name" placeholder="enter name" required>

<br><br>
Contact:- <input type="number" min="0" step="1" id="mob" name="con" maxlength="10" placeholder="Mobile No."  required><span id="errMob" class="errcolor"></span><br><br>
Email:-  <input type="email" name="mail" placeholder="enter email" required><br><br>
Enroll:-
<input title="Passsword must contain at least 6 characters" type="password" name="pass" id="pass1" pattern="(?=.*\d)(?.*[a-z])(?=.*[A-Z]).{6.}" placeholder="Enter Password" required ><span id="errpass" class="errcolor"></span><br><br>


<!--Password:-<input type="password" name="pass"  pattern="(?=.*\d)(?.*[a-z])(?=.*[A-Z]).{6.}" placeholder="Enter Password" required ><br><br>-->

<input type="submit" value="Submit">              <input type="reset" value="Cancel"><br><br>
<br></form>
</div>
</center> 
</body>
</html>