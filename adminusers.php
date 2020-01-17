<?php
include("head2.php");
?>
<style>
#table
{
	margin-top:0px;
	text-decoration:none;
	color:#F00;
	margin-top:10;
}
</style>
<br><br><br><br>
<center>
<font color="#009"   size="+2">USERS</font></center>
<div id="table">
<center><table border="1" datapagesize="1000" bgcolor="#FFFFCC" cellpadding="3" cellspacing="3">
<tr>
<th><font color="#FF0000">S No.</th>
<th><font color="#FF0000">Name</th>

<th><font color="#FF0000">Contact</th>
<TH><font color="#FF0000">Email</TH>
<th><font color="#FF0000">Pass</th>
<th><font color="#FF0000">Delete</th>
</tr>

<?php
$con=mysql_connect("localhost","root","");

mysql_select_db("notes",$con);

$qu=mysql_query("select * from login",$con) or die("Query Error");
$count=0;
while($row=mysql_fetch_array($qu))
{
	$count++;
	$id=$row['id'];
	$name=$row['name'];
	$fname=$row['contact'];
	//$mname=$row['mname'];
	$add=$row['email'];
	$q=$row['pass'];
	echo"<tr>
	<td>$count</td>
	<td>$name</td>
	<td>$fname</td>
	
	<td>$add</td>
	<td>$q</td>
	<th><a href='deleteusers.php?id=$id'>Delete</a></th>

	</tr>";
}
?>
</table></center>
</div>