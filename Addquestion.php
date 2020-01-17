<style>
#f1
{
	width:500;
	height:450;
	background:#009;
	margin-top:50;
}
</style>
<?php
include("head2.php");
?>
</head>
<body>

<center>
<div id="f1">
<center><br><br>
<font color="#FFFFFF" size="+2"> ADD QUESTION PAPERS</font></center>

<form enctype="multipart/form-data" action="insertqustion.php" method="post" >
<br><br>
<font color="#FFFFFF">
Year<br>
<input type="text" name="year" required ><br><br>
<font color="#FFFFFF">
Sem<br>
<input type="text" name="sem"required><br><br>
<font color="#FFFFFF">
Subject<br>
<input type="text" name="sub"required><br><br>
<font color="#FFFFFF">
<label>File</label>
<input class="input" type="file" name="userfile" required/><br><br>
<input type='hidden' name='MAX_FILE_SIZE' value='100000000' />
<input type="submit" value="Upload" name="upload" class="submit"/>
<input type="reset" value="Reset" name="reset" class="submit"/>
</form>
</div>
</center>
</body>
</html>