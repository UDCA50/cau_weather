<?
	session_start();
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/common.css" rel="stylesheet" type="text/css" media="all">
<link href="../css/weather.css" rel="stylesheet" type="text/css" media="all">
</head>

<body>
<div id="wrap">
	<div id="header">
    <? include "../lib/top_login2.php"; ?>
	</div>  <!-- end of headefr -->

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
		
		<form id="weather_form" name="weather_form" method="post" action="display.php">
		
		<div id="weather_row1">
			<div id="b_raw_1">
				<input id="build_button_1" type="image" name="b_num" value="building_1" 
src="../img/building_1.jpg"/>
				<input id="build_button_2" type="image" name="b_num" value="building_2" 
src="../img/building_2.jpg"/> 
				<input id="build_button_3" type="image" name="b_num" value="building_3" 
src="../img/building_3.jpg"/>
			</div>
			
		</div>
		
		<div id="weather_row2">	
			<div id="b_raw_2">
				<input id="build_button_4" type="image" name="b_num" value="building_4" 
src="../img/building_4.jpg"/>
				<input id="build_button_5" type="image" name="b_num" value="building_5" 
src="../img/building_5.jpg"/>
				<input id="build_button_6" type="image" name="b_num" value="building_6" 
src="../img/building_6.jpg"/>
			</div>
			
		</div>
		</form>
		</div> <!-- end of col-->
	</div> <!-- end of content-->
</div> <!-- end of wrap -->

</body>
</html>
