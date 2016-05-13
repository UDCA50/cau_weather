<?
      include "../lib/dbconn.php";

      $sql = "delete from memo_build_ripple where num=$num";
      mysql_query($sql, $connect);
      mysql_close();

      echo "
	   <script>
	    location.href = 'memo_build.php';
	   </script>
	  ";
?>


