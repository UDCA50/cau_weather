	
	<?
	function printable($connect_data, $sql_query){
	
			mysql_select_db("jung_db",$connect_data);
			$result = mysql_query($sql_query,$connect_data);
			$total_record = mysql_num_rows($result);
			
			echo "<div id='datasheet'>";
			echo "<table>";
			echo "<tr>";
			echo "<td>번호</td>";
			echo "<td>습도</td>";
			echo "<td>온도</td>";
			echo "<td>위치</td>";
			echo "<td>시간</td></tr>";
		
			for ($i=0; $i<$total_record ; $i++){
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
				echo "</tr></table>";
			}	
				//space for next table;
				echo "&nbsp&nbsp";
		
	}
			?>