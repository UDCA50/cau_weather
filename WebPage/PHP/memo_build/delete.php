<?

   include "../lib/dbconn.php";
	$num=$_GET['num_build'];
   $sql = "delete from memo_build where num = $num";
   mysql_query($sql, $connect);

   mysql_close();

   echo "
	   <script>
	    location.href = 'memo_build.php';
	   </script>
	";
?>
