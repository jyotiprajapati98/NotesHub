<style>
#jyoti
{
	margin-top:160px;
	text-decoration:none;
	color:#F00;

}
#table
{
	text-decoration:none;
	color:#F00;
	margin-top:70;
}
</style>

<?php
include("head1.php");
?>
<title>Jstudy</title>
<body>
<div id="table">
<center><table border="1" cellpadding="8" cellspacing="5" bgcolor="#FFFFCC">
<tr>
<th><font color="#FF0000">S No.</th>
<th><font color="#FF0000">Year</th>
<th><font color="#FF0000">Sem</th>
<th><font color="#FF0000">Subject</th>

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
	//$img=$row['image'];
	echo"<tr>
	<td>$count</td>
	<td>$y</td>
	<td>$se</td>
	<td>$su</td>
	</tr>";
}
?>
</table>
</div></center>

</body>