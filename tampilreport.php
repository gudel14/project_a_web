<?php


$id = $_GET['id'];	
require_once('koneksi.php');

	// $f_tanggal=$_POST['filter'];

	// $f_tanggal="2020/07/27";

		// $f_tanggal="1";

	//Membuat SQL Query
	$sql = "SELECT * FROM water_pump WHERE shift = '$f_tanggal' ORDER BY tanggal DESC";

		//Import File Koneksi Database
	
	//Mendapatkan Hasil
	$r = mysqli_query($con,$sql);

	//Membuat Array Kosong
	$result = array();

	while($row = mysqli_fetch_array($r)){

		//Memasukkan Nama dan ID kedalam Array Kosong yang telah dibuat
		array_push($result,array(
			"id"=>$row['id'],
			"water_pump"=>$row['water_pump'],
			"shift"=>$row['shift'],
			"status"=>$row['status'],
			"rpm"=>$row['rpm'],
			"hm"=>$row['hm'],
			"fuel_rate"=>$row['fuel_rate'],
			"engine_load"=>$row['engine_load'],
			"preasure"=>$row['preasure'],
			"debit"=>$row['debit'],
			"elevasi"=>$row['elevasi'],
			"tanggal"=>$row['tanggal'],
			"keterangan"=>$row['keterangan']
		));
	}

	//Menampilkan Array dalam Format JSON
	echo json_encode(array('result'=>$result));

	// echo "$f_tanggal";

	mysqli_close($con);


?>