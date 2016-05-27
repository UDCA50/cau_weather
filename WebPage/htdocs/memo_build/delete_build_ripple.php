<? start_session()


      include "../lib/dbconn.php";
	$connect=$_SESSION['connect'];
	$num=$S_GET['num'];
      $sql = "delete from memo_build_ripple where num=$num";
      mysql_query($sql, $connect);
      mysql_close();

      echo "
	   <script>
	    location.href = 'memo_build.php';
	   </script>
	  ";
?>


