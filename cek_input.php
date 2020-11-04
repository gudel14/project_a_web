<?php

 include_once "koneksi.php";

 if($_SERVER['REQUEST_METHOD']=='POST') {

 	$pompa=$_POST['pompa'];
 	$shift=$_POST['shift'];
 	$nama=$_POST['nama'];
 	$hm=$_POST['hm'];
 	$tanggal=$_POST['tanggal'];

 	

 	$sql="INSERT INTO tb_cek(pompa,shift,nama,hm,tanggal) values ('$pompa','$shift','$nama','$hm','$tanggal')";

 	require_once ('koneksi.php');

 	if (mysqli_query($con,$sql)){

 		echo 'Berhasil Menambahkan P2H Pompa';
 	}else{
 		echo 'Gagal menambahkan P2H Pompa';
 	}
 	mysqli_close($con);
}

?>