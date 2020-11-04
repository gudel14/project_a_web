<?php

	$id = $_GET['id']; //ini yg dilempar ke url di android RetrofitClient

	//Importing database
	require_once('koneksi.php');

	//query select ke tabel waterpump , diselect per ID
	$sql = "SELECT * FROM water_pump WHERE id=$id";

	//Mendapatkan Hasil
	$r = mysqli_query($con,$sql);

	//Memasukkan Hasil Kedalam Array
	$result = array();
	$row = mysqli_fetch_array($r);
	array_push($result,array(
			"id"=>$row['id'],
			"water_pump"=>$row['water_pump'],
			"status"=>$row['status'],
			"shift"=>$row['shift'],
			"hm"=>$row['hm'],
			"rpm"=>$row['rpm'],
			"fuel_rate"=>$row['fuel_rate'],
			"engine_load"=>$row['engine_load'],
			"preasure"=>$row['preasure'],
			"debit"=>$row['debit'],
			"elevasi"=>$row['elevasi'],
			"tanggal"=>$row['tanggal'],
			"keterangan"=>$row['keterangan']
		));

	//Menampilkan dalam format JSON
	echo json_encode(array('result'=>$result));

	mysqli_close($con);
?>