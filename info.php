<?php 
require("dbconnect.php");

function branch_info($uid){  //輸入玩家id return 分店數量、分店id、分店營收 
	global $conn;
	$uID =mysqli_real_escape_string($conn,$uid);
	$sql_main = "select * from main_store where uid = '$uID';";
	$sql = "select m.branch_number, b.bid,b.revenue from main_store m, branch b where m.uid = b.uid and m.uid= '$uID';";
	$result = mysqli_query($conn, $sql) or die("Error" . mysqli_error($conn));
	$row = mysqli_fetch_assoc($result);
	return $row;
}
?>