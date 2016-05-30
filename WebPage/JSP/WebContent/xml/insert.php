<?php

$hostname = "localhost";

$username = "root";

$password = "Cse13%&";

$dbname = "cw";


$connect = mysql_connect($hostname, $username, $password) or die("MySQL Server 연결에 실패했습니다");

mysql_select_db($dbname,$connect);

 mysql_query("set names utf8");

 

 $id=$_REQUEST['id'];

 $id_password=$_REQUEST['password'];

 

 $sql="select * from member where password=$id_password;";

 $result=mysql_query($sql);

 
 $xmlcode = "<?xml version = \"1.0\" encoding = \"utf-8\"?>\n";

 $xmlcode .="<id>\n";

 while($obj = mysql_fetch_object($result))

 {

  $check_id=$obj->id;

  $check_password=$obj->password;

  

  printf("success");

  echo "<br \>";

  $xmlcode .= "<id>$check_id</id>\n";

  $xmlcode .= "<password>$check_password</password>\n";

 

 }

 $xmlcode .="</id>\n";

 //$xmlcode .="<RESULT>$result</RESULT>\n";

 $dir = "X:/SEBeta/CW/WebContent/xml"; //파일이 있을 디렉토리

 $filename = $dir."/insert.xml"; //파일 이름

 

 file_put_contents($filename, $xmlcode);

 mysql_close($connect);

 

 ?>
