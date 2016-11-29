<?php
require("dbconnect.php");
require("info.php");
$branch_info = branch_info(1);
$b_num = $branch_info['branch_number'];

?>
<html><head>
<title>Bakery Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="jquery.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<h1 align=center>My Bakery Store</h1><hr />
<table class="table table-hover" border="1">
<tr>
	<td rowspan="2" colspan="2">
		<table class="table table-hover" border="1">
		<tr><td>分店<?php echo $branch_info['branch_number'] ?></td></tr>
		</table>
	</td>
	<td rowspan="3">總公司庫存</td>
	<td>菠蘿麵包</td>
	<td>0</td>
</tr>
<tr>
	<td>紅豆麵包</td>
	<td>0</td>
</tr>
<tr>
	<td>擁有資金</td>
	<td>200000</td>
	<td>蔓越莓乳酪麵包</td>
	<td>0</td>
</tr>
</table>
</body>