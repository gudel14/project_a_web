<?php

 include_once "koneksi.php";

 if($_SERVER['REQUEST_METHOD']=='POST') {

 	$wp=$_POST['water_pump'];
 	$shift=$_POST['shift'];
 	$status=$_POST['status'];

 	$sql="INSERT INTO water_pump(water_pump,shift,status) values ('$wp','$shift','$status')";

 	require_once ('koneksi.php');

 	if (mysqli_query($con,$sql)){
 		echo 'Berhasil menambahkan waterpump';
 	}else{
 		echo 'Gagal menambahkan waterpump';
 	}
 	mysqli_close($con);


}


?>