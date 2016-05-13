<?
    $connect=mysql_connect( "localhost", "caunic", "carbon14") or  
        die( "SQL server에 연결할 수 없습니다."); 

    mysql_select_db("jung_db",$connect);
?>
