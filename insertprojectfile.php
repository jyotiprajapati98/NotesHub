<?php
include "condb.php";
if(isset($_REQUEST["year"]) && ($_FILES["userfile"]["size"] > 0))	
{
$year=$_REQUEST["year"];
$project=$_REQUEST["project"];
$userfile=$_FILES["userfile"]['name'];
	$query = mysql_query("INSERT INTO project(year,project,filename) VALUES ('$year','$project','$userfile')") or die(mysql_error()); 
	
	if($query)
	{
		move_uploaded_file($_FILES["userfile"]['tmp_name'],"file//".$_FILES["userfile"]['name']);
	}
}
?>
<script language="javascript">;
	alert("DATA INSERTED");
	window.location.href='showproject.php';
</script>;


