<?php

	$id = $_GET['id'];
require_once ('koneksi.php');

$sql = "SELECT * FROM water_pump WHERE id=$id";

$r = mysqli_query ($sql,$con);

$result = array();

$row = mysqli_fetch_array($r);

array_push($result, array(
	"id" => $row['id'],
	"water_pump" => $row['water_pump'],
	"shift" => $row['shift'],
	"status" => $row['status'],
	));

//Menampilkan Array dalam Format JSON
	echo json_encode(array('result'=>$result));

	mysqli_close($con);

?>