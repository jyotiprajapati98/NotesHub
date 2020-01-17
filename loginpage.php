<style>
form
{
	width:500;
	height:400;
	background-color:#009;
	margin-top:100;
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
if( isset($_REQUEST['id']))
{
$x=$_REQUEST['id'];
if($x==1)
	echo "<h3 style='color:red;'>Wrong User Name</h3><br>";
else if($x==2)
echo "<h3 style='color:red;'>Wrong Password</h3><br>";

}
?>
<?php
include("head1.php");
?>


<body bgcolor="#FFFFFF">
<center>
<div id="form">
<form action="checklogin.php" method="get" name="f1" >
<br><br><br><br>
<a href="loginpage.php">Login    </a><font color="#FFFFFF"><!--Or<a href="register.php" >  Register</a>--><br><br>
   <font size="+1"> Enter Email:-        <input type="email" name="mail" placeholder="enter email" required>
<br><br><br>
Enter Enroll:-<input type="password" name="pass" placeholder="enter password" required>
<br><br>
<input type="submit" value="Login">              <input type="reset" value="Cancel"><br><br>

<br></form>
</div>
</div>
</center>

</body>
</html>