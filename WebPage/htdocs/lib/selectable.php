<?php


function selbildtable($b_num){
	switch($b_num){
	
		case "building_1":
			echo "제2공학관<br><br>";
			$sql_data_1="select * from second_eng_1 ORDER BY calcul_time DESC LIMIT 5";
			$sql_data_2="select * from second_eng_2 ORDER BY calcul_time DESC LIMIT 5";
			$sql_data_3="select * from second_eng_3 ORDER BY calcul_time DESC LIMIT 5";
			
			return array($sql_data_1,$sql_data_2,$sql_data_3);
			
		break;
		
		case "building_2":
			echo "봅스트홀<br><br>";
			$sql_data_1="select * from first_eng_1 ORDER BY calcul_time DESC LIMIT 5";
			$sql_data_2="select * from first_eng_2 ORDER BY calcul_time DESC LIMIT 5";
			$sql_data_3="select * from first_eng_3 ORDER BY calcul_time DESC LIMIT 5";
			return array($sql_data_1,$sql_data_2,$sql_data_3);
		break;
		
		case "building_3":
			echo "경영경제관<br><br>";
			$sql_data_1="select * from busi_1 ORDER BY calcul_time DESC LIMIT 5";
			$sql_data_2="select * from busi_2 ORDER BY calcul_time DESC LIMIT 5";
			$sql_data_3="select * from busi_3 ORDER BY calcul_time DESC LIMIT 5";
			return array($sql_data_1,$sql_data_2,$sql_data_3);
		break;
		
		case "building_4":
			echo "기숙사<br><br>";
			$sql_data_1="select * from dorm_1 ORDER BY calcul_time DESC LIMIT 5";
			$sql_data_2="select * from dorm_2 ORDER BY calcul_time DESC LIMIT 5";
			$sql_data_3="select * from dorm_3 ORDER BY calcul_time DESC LIMIT 5";
			return array($sql_data_1,$sql_data_2,$sql_data_3);
		break;
		
		
		//library table 생성필요
		case "building_5":
			echo "도서관<br><br>";
			$sql_data_1="select * from library_1 ORDER BY calcul_time DESC LIMIT 5";
			$sql_data_2="select * from library_2 ORDER BY calcul_time DESC LIMIT 5";
			$sql_data_3="select * from library_3 ORDER BY calcul_time DESC LIMIT 5";
			return array($sql_data_1,$sql_data_2,$sql_data_3);
		break;

		//stay table 생성필요		
		case "building_6":
			echo "학생회관<br><br>";
			$sql_data_1="select * from std_cult_1 ORDER BY calcul_time DESC LIMIT 5";
			$sql_data_2="select * from std_cult_2 ORDER BY calcul_time DESC LIMIT 5";
			$sql_data_3="select * from std_cult_3 ORDER BY calcul_time DESC LIMIT 5";
			return array($sql_data_1,$sql_data_2,$sql_data_3);
		break;
		
		
	}
}


?>