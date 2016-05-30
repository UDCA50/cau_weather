<?
	session_start();
	
	include "../lib/dbconn.php";
	?>
	
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 
Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; 
charset=utf-8">
<link href="../css/common.css" rel="stylesheet" 
type="text/css" 
media="all">
<link href="../css/weather.css" rel="stylesheet" 
type="text/css" 
media="all">
</head>

	
<body>
<div id="wrap">
	<div id="header">
    <? include "../lib/top_login2.php"; ?>
	</div>  <!-- end of header -->

	<div id="menu">
	<? include "../lib/top_menu2.php"; ?>
	</div>  <!-- end of menu --> 

	<div  id="content">
		<div id="col1">
			<div id="left_menu">		
<?
	include "../lib/left_menu.php";
?>	
			</div>
		</div>
		<div id="col2">
			<div id="title">
				<img src="../img/title_report.gif">
			</div>
			관리자 연락처<br>
			02-820-5301 (상담가능시간 09:00~18:00)<br>
			1508everyday@gmail.com <br>
		</div>
	</div>
</div>
</body>
</html>			