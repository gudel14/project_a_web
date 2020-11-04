<?php

 include_once "koneksi.php";

 if($_SERVER['REQUEST_METHOD']=='POST') {

 	$lamp=$_POST['lamp'];
 	$shift=$_POST['shift'];
 	$status=$_POST['status'];
 	$hm=$_POST['hm'];
 	$tanggal=$_POST['tanggal'];
 	$fuel=$_POST['fuel'];

 	

 	$sql="INSERT INTO tower_lamp(lamp,shift,status,hm,tanggal,fuel) values ('$lamp','$shift','$status','$hm','$tanggal','$fuel')";

 	require_once ('koneksi.php');

 	if (mysqli_query($con,$sql)){

 		echo 'Berhasil Menambahkan Tower Lamp';
 	}else{
 		echo 'Gagal menambahkan waterpump';
 	}
 	mysqli_close($con);
}

?>