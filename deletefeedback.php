<?php

include("condb.php");
//$name=$_REQUEST['name'];
$id=$_REQUEST['id'];

mysql_query("delete from feedback where id=$id",$con);

//echo "('bfdjgdfj')";
header("location:adminfeedback.php");


?>