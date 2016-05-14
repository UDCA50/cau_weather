<?
	session_start();
	
	include "../lib/selectable.php";
	include "../lib/printable.php";
	?>
	
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html charset=utf-8"/>
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
				<img src="../img/title_weather.gif">
			</div>
			
			<!-- access to Sensor Network-->	
			<?
			$connect_data=mysql_connect( "localhost", "root", "carbon14");
			mysql_select_db("jung_db",$connect_data);
			
			//make query
			list($sql_data_1,$sql_data_2,$sql_data_3) = selbildtable($b_num);
			
			
			//execute & print query
			printable($connect_data,$sql_data_1);
			printable($connect_data,$sql_data_2);
			printable($connect_data,$sql_data_3);
			
			
			?><!-- end to Sensor Network-->
	 				
					
					
		</div>
	</div><!-- end of wrap-->
	
</body>
</html>