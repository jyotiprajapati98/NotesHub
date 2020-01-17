
<?Php

$name=$_REQUEST['name'];

$con=$_REQUEST['con'];

$email=$_REQUEST['mail'];

$pass=$_REQUEST['pass'];


//$f=$_FILES['file'];

//$pname=trim($pic['name']);

///move_uploaded_file($pic['tmp_name'],"files\\".$pname);

//$p=$_FILES['photo'];

//$sname=trim($p['name']);

//move_uploaded_file($p['tmp_name'],"sphoto\\".$sname);


$connect=mysql_connect("localhost","root","");
mysql_select_db("notes",$connect);

mysql_query("insert into login(name,contact,email,pass) values('$name','$con','$email','$pass')",$connect);

header("location:adminusers.php");




//echo'("kjdfhkejw")';
?>
<title>jstudy</title>
