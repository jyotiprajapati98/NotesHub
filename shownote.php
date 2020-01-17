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
include("head2.php");
?>
<title>Jstudy</title>
<body>
<div id="jyoti">
<br><br>

<div id="table">
<center><table border="1" cellpadding="8" cellspacing="5" bgcolor="#FFFFCC">
<tr>
<th><font color="#FF0000">S No.</th>
<th><font color="#FF0000">Date</th>
<th><font color="#FF0000">Sem</th>
<th><font color="#FF0000">Subject</th>
<th><font color="#FF0000">File Name</th>

<th><font color="#FF0000">View</th>

<th><font color="#FF0000">Delete</th>

</tr>

<?php
include("condb.php");
?>
<?php
$qu=mysql_query("select * from paper",$con) or die("Query Error");
$count=0;

while($row=mysql_fetch_array($qu))
{
	$count++;
	$id=$row['id'];
	$y=$row['year'];
	$se=$row['sem'];
	$su=$row['subject'];
	 $f= $row['filename'];
	echo"<tr>
	<td>$count</td>
	<td>$y</td>
	<td>$se</td>
	
	<td>$su</td>
	<td>$f</td>"
	
	?>
	<th><a href='file/<?php echo $f; ?>' target="_blank">View</td>
    <?php
	echo "<th><a href='delnote.php?id=$id'>Delete</a></th>   

	</tr>";
	
}
?>
</table></center>

</body>