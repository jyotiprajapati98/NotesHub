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
a
{
	text-decoration:none;
}
</style>

<?php
include("loghead.php");
?>
<body>
<div id="jyoti">
<br>
<font color="#009" size="+2"><i>Project Files</i>
<div id="table">
<center><table border="1" cellpadding="8" cellspacing="5" bgcolor="#FFFFCC">
<tr>
<th><font color="#FF0000">S No.</th>
<th><font color="#FF0000">Year</th>
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
	
	 $f= $row['filename'];
	 $p= $row['project'];	 
	//$img=$row['image'];
	echo"<tr>
	<td><font color=#009>$count</td>
	<td><font color=#009>$name</td>
	<td><font color=#009>$p</td>";

	?>
	
	
	<td><a href='file/<?php echo $f; ?>' download><font color=#FF0000>Download</a></td>
	<?php
	echo "</tr>";
}
?>
</table></center>

</body>