<html>
<style>
textarea
{
	width:200px;
	height:80px;
	
}
input:type
{
	width:400;
	height:200;
	
}
#form
{
	width:600;
	height:500;
	background-color:#009;
	margin-top:60;
	
	}
</style>

<head>
</head>
<?php
include("loghead.php");
?>
<body bgcolor="#FF9966">
<center>

<div id="form">
<form action="insertuserfeed.php" method="get"><br><br>
<center><font size="+2" color="#FFFFFF"><i><u>Send Feedback</u></font><br>
<font color="#0000FF">
<br>
<font size="+1" color="#FFFFFF"> Name<BR>
<input type="text" name="name" placeholder="Enter name"><br><br>

<font size="+1" color="#FFFFFF">Address<br>
<textarea name="address" placeholder="enter address"></textarea><br><br>

<font size="+1" color="#FFFFFF">Contact<br>
<input type="number" name="num" placeholder="enter contact no." >

<div id="feed"><font size="+1" color="#FFFFFF">Feedback<br>
<textarea name="feedback" placeholder="write your feedback /suggetion"></textarea><br>
</div>
<br>
<input type="submit" value="ok">  <input type="reset" value="cancel">
</form>
</center>
</div>
</body>
</html>
