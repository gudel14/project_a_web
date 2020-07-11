<?php
	
	$id = $_GET['id'];

	require_once ('koneksi.php');

	$sql = "DELETE  FROM tower_lamp WHERE id = $id";

	if (mysqli_query($con,$sql)) {
		echo 'berhasil hapus data';
	}else{
		echo 'gagal hapus data';
	}
	mysqli_close($con);

?>