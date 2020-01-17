<?php
include("loghead.php");
?>
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
	margin-top:-20;
}
a
{
	text-decoration:none;
}
</style>

<body>
<div id="jyoti">
<br><font color="#009" size="+2"><i>Notes</i>

<br><br>
<div id="table">
<center><table border="1" cellpadding="8" cellspacing="5" bgcolor="#FFFFCC">
<tr>
<th><font color="#FF0000">SNo.</th>
<th><font color="#FF0000">Year</th>
<th><font color="#FF0000">Sem</th>
<th><font color="#FF0000">Subject</th>
<th><font color="#FF0000">Download</th>
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
	$year=$row['year'];
	$sem=$row['sem'];
	$s= $row['subject'];
	$filename= $row['filename'];
	 echo"<tr>
	<td><font color=#009>$count</td>
	<td><font color=#009>$year</td>
	<td><font color=#009>$sem</td>
	<td><font color=#009>$s</td>";?>
	
	<td><a href='file/<?php echo $filename; ?>' download><font color=#FF0000>Download</a></td>
	<?php
	echo "</tr>";
}
?>
</table></center>

</body>