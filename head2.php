<style>
#main
{
	width:960;
	height:100;
	background-color:#009;
	margin-top:-10;
	
}
#nav
{
	width:960px;
	height:40px;
	position:absolute;
	margin-left:266px;
	margin-top:-15;
}
#nav ul
{
	list-style:none;
	height:40px;
	width:920px;
	z-index:20;
	background-color:#FFF;
	position:relative;
	margin-left:5;
	
}
#nav ul li:hover
{
	background-color:#900;
}

#nav ul	li
{
	float:left;
	margin-left:"";
	height:40px;
	text-align:center;
	background-color:#009;

	text-align:center;
	width:125px;
	margin-left:1px;
	line-height:40px;

}
#nav ul li a
{
	text-decoration:none;
	color;
	
	display:block;
	margin-left:auto;
	font size:+1;

}
#aca ul
{
	width:0px;
	padding-left:-10px;
	display:block;
}
#aca ul
{
 display:none;
}
#aca ul li:hover
{
	background-color:#090;
}

#aca ul li
{
	margin-left:-45px;
	width:125px;
	
}

#aca:hover ul
{
	display:block;
}
#frm
{
	margin-top:200px;
	background:#F00;

}
body
{
	background-size:cover;
}


</style>

<title>jstudy</title>

<body background="Sample Pictures/background-book-023.jpg">

<center>
<div id="main">
<center><br><br>
<font size="+3" color="#FFFFFF"><I> NOTES HUB</I></font></center>
<font color="#FFFFFF">Get Easy and Smart Study
</div>


<center>
<header>
<div id="nav">
<ul>
        <li><a href="adhome.php"target="a"><font size="+1" color="#FFFFFF">Home</a></li>
         <li id="aca"><a href="shownote.php" target="a"><font size="+1" color="#FFFFFF">Notes</a>
         <ul>
         <li><a href="Addnote1.php" target="a"><font size="+1" color="#FFFFFF">Add Notes</a></li>
         </ul>
         </li>
          <li id="aca"><a href="showpaper1.php" target="a"><font size="+1" color="#FFFFFF">Question Papers</a>
          <ul>
           <li><a href="Addquestion.php" target="a"><font size="+1" color="#FFFFFF">Add Paper</a></ul>
           </li>
            <li id="aca"><a href="showproject.php" target="a"><font size="+1" color="#FFFFFF">Project Files</a>
          <ul>
           <li><a href="addproject.php" target="a"><font size="+1" color="#FFFFFF">Add Files</a></ul>
           </li>
         
           <li><a href="adminfeedback.php" target="a"><font size="+1" color="#FFFFFF">FeedBack</a></li>
            <li id="aca"><a href="adminusers.php" target="a"><font size="+1" color="#FFFFFF">Users</a>
             <ul>
           <li><a href="register.php" target="a"><font size="+1" color="#FFFFFF">Add Users</a></ul>
         </li>
            <li><a href="loghub.php" target="a"><font size="+1" color="#FFFFFF">LogOut</a></li></ul>
</div>
</center>
</body>
</html>
