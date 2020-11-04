<?php

	$id = $_GET['id']; //ini yg dilempar ke url di android RetrofitClient

	//Importing database
	require_once('koneksi.php');

	//query select ke tabel waterpump , diselect per ID
	$sql = "SELECT * FROM tb_cek WHERE id=$id";

	//Mendapatkan Hasil
	$r = mysqli_query($con,$sql);

	//Memasukkan Hasil Kedalam Array
	$result = array();
	$row = mysqli_fetch_array($r);
	array_push($result,array(
			"id"=>$row['id'],
			"pompa"=>$row['pompa'],
			"nama"=>$row['nama'],
			"shift"=>$row['shift'],
			"tanggal"=>$row['tanggal'],
			"hm"=>$row['hm']
		));

	//Menampilkan dalam format JSON
	echo json_encode(array('result'=>$result));

	mysqli_close($con);
?>