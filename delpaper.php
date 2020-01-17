<?php

include("condb.php");
//$name=$_REQUEST['name'];
$id=$_REQUEST['id'];

mysql_query("delete from qpapers where id=$id",$con);

//echo "('bfdjgdfj')";
header("location:showpaper1.php");


?>