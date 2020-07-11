<?php

 include_once "koneksi.php";

 if($_SERVER['REQUEST_METHOD']=='POST') {

 	$wp=$_POST['water_pump'];
 	$shift=$_POST['shift'];
 	$status=$_POST['status'];
 	$hm=$_POST['hm'];
 	// $fuel=$_POST['fuel_rate'];
 	// $engine=$_POST['engine_load'];
 	// $preasure=$_POST['preasure'];
 	// $debit=$_POST['debit'];
 	// $elevasi=$_POST['elevasi'];
 	$tanggal=$_POST['tanggal'];
 	
 	$sql="INSERT INTO water_pump(water_pump,shift,status,hm,tanggal) values ('$wp','$shift','$status','$hm','$tanggal')";

 	require_once ('koneksi.php');

 	if (mysqli_query($con,$sql)){

 		echo 'Data berhasil Berhasil';
 	}else{
 		echo 'Gagal menambahkan waterpump';
 	}
 	mysqli_close($con);
}


//'$fuel','$engine','$preasure','$debit','$elevasi',
//fuel_rate,engine_load,preasure,debit,elevasi,


?>