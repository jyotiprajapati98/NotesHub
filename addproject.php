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
<div id="f1"><br><br><center>
<font color="#FFFFFF" size="+2"> ADD PROJECT</font></center>
<table width="100%" cellspacing="0" cellpadding="0">

<form enctype="multipart/form-data" action="insertprojectfile.php" method="post" >
<br><br><br><br>
<font color="#FFFFFF">
Year<br>
<input type="date" name="year" required><br><br>
<font color="#FFFFFF">
Project File Name<br><br>
<input type="text" name="project" placeholder="file name" required><br><br>
<font color="#FFFFFF">
<input class="input" type="file" name="userfile" / required>
<input type='hidden' name='MAX_FILE_SIZE' value='100000000' />
<br><br><br>
<input type="submit" value="Upload" name="upload" class="submit"/>
<input type="reset" value="Reset" name="reset" class="submit"/>
</form>
</div>
</center>
</body>
</html>