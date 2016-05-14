<?
	session_start();
	
	include "../lib/dbconn.php";
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
			
			<div id="datasheet">
			<table>
				
					<tr>
					
					<td>번호</td>
					<td>기온</td>
					<td>습도</td>
					<td>위치</td>
					<td>관측시간</td></tr>
				
			<!-- access to Sensor Network-->	
			<?
			$connect_data=mysql_connect( "59.187.225.122", "root", "carbon14");
			mysql_select_db("jung_db",$connect_data);
			
			$sql_data="select * from second_eng_1 ORDER BY calcul_time DESC LIMIT 80";
			$result = mysql_query($sql_data,$connect_data);
			$total_record = mysql_num_rows($result);  
		
		 for ($i=0; $i<$total_record ; 
$i++)                    
   {
      mysql_data_seek($result, $i);       
      $row = mysql_fetch_array($result);       
	
	  $id      = $row[log_num];
	  $humid     = $row[b_moist];
      $temper    = $row[b_temper];
	  $location    = $row[b_location];
	  $calcul_time    = $row[calcul_time];
	  echo "<tr><td>",$id , "</td>";
	  echo "<td>", $temper ,"</td>";
	  echo "<td>", $humid ,"</td>";
	  echo "<td>", $location, "</td>";
	  echo "<td>", $calcul_time, "</td>";
 	  echo "</tr>";
   }
   mysql_close();
	
			?><!-- end to Sensor Network-->
	 				
					
					
				</table>
			
			</div>
	
		</div>
	</div><!-- end of wrap-->
	
</body>
</html>