<title>jstudy</title>
<?php session_start(); ?>
<?php
include("condb.php");

$a=$_REQUEST['mail'];
$b=$_REQUEST['pass'];

$rs=mysql_query("select * from login where email='$a'",$con);

if(mysql_num_rows($rs)==0)

{
		while($row=mysql_fetch_array($rs))
	      header("location:homemain.php?st=1");

}
else
{
	$row=mysql_fetch_array($rs);
	
	if($row['pass']==$b)
	{
		if($row['type']=="user")
		{
			$user=$row['id'];
			$_SESSION['id']=$user;		
			echo "<script>
				alert('Login Sucessfull');
				window.location.replace('loghome.php');
			  </script>";
		
		  // echo "valid user";
		}
		else if($row['type']=="admin")
		{
			$user=$row['id'];
			$_SESSION['id']=$user;	
			echo "<script>
				alert('Login in ADMINPAGE Sucessfull');
				window.location.replace('adhome.php');
			  </script>";
			
			//header("location:HOMEA3.php");

		}
	}

	else
	{
		echo "<script>
				alert('Login UNSucessfull');
				window.location.replace('location:homemain.php?st=2');
			 </script>";
		
	 //header("location:loginu.php?st=2");
	
	  echo "invalid password";
	}
	

}
?>