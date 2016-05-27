<?
	session_start();
?>
<meta charset="utf-8">
<?
  $connect = $_SESSION['connect'];
  $userid = $_SESSION['userid'];
  $hp1 = $_POST['hp1'];
  $hp2 = $_POST['hp2'];
  $hp3 = $_POST['hp3'];
  
  $email1 = $_POST['email1'];
  $email2 = $_POST['email2']; 

  $nick = $_POST['nick'];
  $name = $_POST['name'];
  $pass = $_POST['pass'];

   $hp = $hp1."-".$hp2."-".$hp3;
   $email = $email1."@".$email2;

   $regist_day = date("Y-m-d (H:i)");  // 현재의 '년-월-일-시-분'을 저장

   include "../lib/dbconn.php";       // dconn.php 파일을 불러옴

   $sql = "update member set pass='$pass', name='$name' , ";
   $sql .= "nick='$nick', hp='$hp', email='$email', regist_day='$regist_day' where id='$userid'";

   mysql_query($sql, $connect);  // $sql 에 저장된 명령 실행

   mysql_close();                // DB 연결 끊기
   echo "
	   <script>
	    location.href = '../index.php';
	   </script>
	";
?>

   
