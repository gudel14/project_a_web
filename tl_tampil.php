<?php

	$id = $_GET['id']; //ini yg dilempar ke url di android RetrofitClient

	//Importing database
	require_once('koneksi.php');

	//query select ke tabel waterpump , diselect per ID
	$sql = "SELECT * FROM tower_lamp WHERE id=$id";

	//Mendapatkan Hasil
	$r = mysqli_query($con,$sql);

	//Memasukkan Hasil Kedalam Array
	$result = array();
	$row = mysqli_fetch_array($r);
	array_push($result,array(
			"id"=>$row['id'],
			"lamp"=>$row['lamp'],
			"status"=>$row['status'],
			"shift"=>$row['shift'],
			"hm"=>$row['hm']
		));

	//Menampilkan dalam format JSON
	echo json_encode(array('result'=>$result));

	mysqli_close($con);
?>