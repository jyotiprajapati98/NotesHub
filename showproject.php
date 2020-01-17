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
include("head2.php");
?>
<body>
<div id="jyoti">
<br><br>

<div id="table">
<center><table border="1" cellpadding="8" cellspacing="5" bgcolor="#FFFFCC">
<tr>
<th><font color="#FF0000">S No.</th>
<th><font color="#FF0000">Year</th>
<th><font color="#FF0000">Project</th>
<th><font color="#FF0000">File Name</th>
<th><font color="#FF0000">View</th>
<th><font color="#FF0000">Delete</th>

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
	 $p=$row['project'];
	 $f=$row['filename'];
	//$img=$row['image'];
	
	echo"<tr>
	<td>$count</td>
	<td>$name</td>
	<td>$p</td>
	<td>$f</td>"
	?>
	<th><a href='file/<?php echo $f; ?>' target="_blank">View</td></th>
    <?php
	
	echo"
	<th><a href='delproject.php?id=$id'>Delete</a></th>

	</tr>";
}
?>
</table></center>

</body>