<style>
#table
{
	margin-top:60px;
}
</style>

<?php
include("loghead.php");
?>

<div id="table">
<center><table border="1" bgcolor="#FFFFCC" cellspacing="5" cellpadding="5">
<tr>
<th><font color="#FF0000">Sno</th>
<th><font color="#FF0000">Name</th>
<th><font color="#FF0000">Contact</th>
<th><font color="#FF0000">Address</th>
<th><font color="#FF0000">Feedback</th>
</tr>

<?php
$con=mysql_connect("localhost","root","");

mysql_select_db("notes",$con);

$q=mysql_query("select * from feedback",$con) or die("Query Error");

$count=0;
while($row=mysql_fetch_array($q))
{
	$count++;
    $id=$row['id'];
	$name=$row['name'];
	$fname=$row['contact'];
	$mname=$row['address'];
	$rl=$row['feedback'];

    echo"<tr>
	<td>$count</td>
	<td>$name</td>
	<td>$fname</td>
	<td>$mname</td>
	<td>$rl</td>
	</tr>";
}
?>
</table></center></div>