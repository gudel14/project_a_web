<?php

	//Import File Koneksi Database
	require_once('koneksi.php');

	$now = date("o-m-d");

	$noww = date('o-m-d', strtotime('-1 days', strtotime($now)));


	//Membuat SQL Query
	// $sql = "SELECT * FROM water_pump WHERE tanggal BETWEEN '$noww' and '$now' ORDER BY tanggal DESC";

	$sql = "SELECT * FROM water_pump WHERE tanggal BETWEEN '$noww' and '$now' ORDER BY tanggal DESC";


	//Mendapatkan Hasil
	$r = mysqli_query($con,$sql);

	//Membuat Array Kosong
	$result = array();

	while($row = mysqli_fetch_array($r)){

		//Memasukkan Nama dan ID kedalam Array Kosong yang telah dibuat
		array_push($result,array(
			"id"=>$row['id'],
			"water_pump"=>$row['water_pump'],
			"hm"=>$row['hm'],
			"tanggal"=>$row['tanggal']

		));
	}


	//Menampilkan Array dalam Format JSON
	echo json_encode(array('result'=>$result));

	mysqli_close($con);

?>