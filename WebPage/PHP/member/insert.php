<?php
	session_start();


	$hp1=$_POST['hp1'];
	$hp2=$_POST['hp2'];
	$hp3=$_POST['hp3'];
	$id=$_POST['id'];
	$pass=$_POST['pass'];
	$name=$_POST['name'];
	$nick=$_POST['nick'];
	$email1=$_POST['email1'];
	$email2=$_POST['email2'];
	$regist_day=$_POST['regist_day'];
?>




<meta charset="utf-8">
<?php

   $hp = $hp1."-".$hp2."-".$hp3;
   $email = $email1."@".$email2;

   $regist_day = date("Y-m-d (H:i)");  // 현재의 '년-월-일-시-분'을 저장
   $ip = $REMOTE_ADDR;      // 방문자의 IP 주소를 저장

   include "../lib/dbconn.php";       // db connect

   $sql = "select * from member where id='$id'";	//select id
   $result = mysql_query($sql, $connect);
   $exist_id = mysql_num_rows($result);

   if($exist_id) {
     echo("
           <script>
             window.alert('해당 아이디가 존재합니다.')
             history.go(-1)
           </script>
         ");
         exit;
   }
   else
   {            // 레코드 삽입 명령을 $sql에 입력
	  $sql = "insert into member(id, pass, name, nick, hp, email, regist_day, level) ";
	$sql .= "values('$id', '$pass', '$name', '$nick', '$hp', '$email', '$regist_day', 1)";

		mysql_query($sql, $connect);  // $sql 에 저장된 명령 실행
   }

   mysql_close();                // DB 연결 끊기
   echo "
	   <script>
	    location.href = '../index.php';
	   </script>
	";
?>

   
