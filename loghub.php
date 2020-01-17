
<html>
<style>
body
{
	background-image:;
	border-image-repeat:repeat;
	text-decoration:none;
	color:#CF3;
	font-size:36px;
}
a
{
	text-decoration:none;
	color:#FF9;
}
</style>
<title>jstudy</title>
<head>
<script>
  function jain()
  {
	history.forward();
	history.href="homemain.php";
  }
</script>
</head>
<body background="Sample Pictures/Book-Desktop-Wallpapers-HD.jpg">
<center>
<?php

session_start();
//unset($_SESSION['logout']);
$expireTime=time()-60*60*24*30;
setcookie("logout",'',$expireTime);

//session_destroy();
//header("location:index.html");

echo "Thanks...Visit Again
<br>
 <br>
Thankyou";

?>
<br>
<script>
jain();
</script>
<a href="homemain.php">click here to logout</a></center>
</body>
</html>