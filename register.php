<?php
	require_once 'dbfunction.php';
	$db = new dbfunction();

	//json respon
	$respon = array("error"=>FALSE);

	if (isset($_POST['nrp']) && isset($_POST['nama']) && isset($_POST['pass'])){

		$nrp = $_POST['nrp'];
		$nama = $_POST['nama'];
		$pass = $_POST['pass'];
		$hasil = $db->registeruser($nrp, $nama, $pass);

		if ($hasil){
			echo json_encode("Data Berhasil Disimpan");
		} else{
			echo json_encode("User Telah Terdaftar");
		}

	}else{
		echo json_encode("Paremeter Tidak Ditemukan");
	}
?>