

<?php
include "condb.php";
if(isset($_REQUEST["year"]) && ($_FILES["userfile"]["size"] > 0))	
{
$year=$_REQUEST["year"];
$sem=$_REQUEST["sem"];
$sub=$_REQUEST["sub"];
$userfile=$_FILES["userfile"]['name'];

$query = mysql_query("INSERT INTO qpapers(year,sem,sub,filename) VALUES ('$year','$sem','$sub','$userfile')") or die(mysql_error()); 
	
	if($query)
	{
		move_uploaded_file($_FILES["userfile"]['tmp_name'],"file//".$_FILES["userfile"]['name']);
	}
}
?>
<script language="javascript">;
	alert("DATA INSERTED");
	window.location.href='showpaper1.php';
</script>;

