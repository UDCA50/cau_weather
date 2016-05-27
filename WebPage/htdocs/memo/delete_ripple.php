<?
      include "../lib/dbconn.php";
	$connect=$_SESSION['connect'];
	$num=$_GET['num'];
      $sql = "delete from memo_ripple where num=$num";
      mysql_query($sql, $connect);
      mysql_close();

      echo "
	   <script>
	    location.href = 'memo.php';
	   </script>
	  ";
?>


