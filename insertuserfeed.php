<?php
$a=$_REQUEST['name'];

$b=$_REQUEST['address'];
$c=$_REQUEST['num'];
$fe=$_REQUEST['feedback'];
//$ans=$_REQUEST['ans'];


include("condb.php");
	mysql_query("insert into feedback(name,address,contact,feedback) values ('$a','$b','$c','$fe')",$con);
	//header("location:ans.php")
 echo "<script>
				alert('Feedback Send');
				window.location.replace('loghome.php');
			  </script>";
		
?>