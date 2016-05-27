<?php

 session_start();

    $connect=mysql_connect( "localhost", "root", "carbon14") or  
        die( "SQL server에 연결할 수 없습니다."); 	

	mysql_query("SET NAMES 'utf8'");
	mysql_query("SET CHARACTER SET utf8");
	mysql_query("SET COLLATION_CONNECTION='utf8_unicode_ci'");

    mysql_select_db("jung_db",$connect);
   $_SESSION['connect']= $connect;
?>
