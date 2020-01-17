<style>
#jyoti
{
	margin-top:20px;
	text-decoration:none;
	color:#F00;

}
#table
{
	text-decoration:none;
	color:#F00;
	margin-top:20;
}
</style>

<?php
include("loghead.php");
?>
<body>
<div id="jyoti">
<br><br>

<div id="table">
<center><table border="1" cellpadding="8" cellspacing="5" bgcolor="#FFFFCC">
<tr>
<th><font color="#FF0000">S No.</th>
<th><font color="#FF0000">Year</th>
<th><font color="#FF0000">Sem</th>
<th><font color="#FF0000">Project</th>
<th><font color="#FF0000">Download</th>


</tr>

<?php
include("condb.php");
?>
<?php
$qu=mysql_query("select * from project",$con) or die("Query Error");
$count=0;

while($row=mysql_fetch_array($qu))
{
	$count++;
	$id=$row['id'];
	$name=$row['year'];
	$s=$row['sem'];
	
	
	 $f= $row['file'];
	 
	//$img=$row['image'];
	echo"<tr>
	<td>$count</td>
	<td>$name</td>
	<td>$s</td>
	
	<td>$f</td>

	</tr>";
}
?>
</table></center>

</body>