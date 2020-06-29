<?php
	require_once 'dbfunction.php';
	$db = new dbfunction();

	//json respon
	$respon = array("error"=>FALSE);

	if (isset($_POST['nrp']) && isset($_POST['pass'])){

		$nrp = $_POST['nrp'];
		$pass = $_POST['pass'];
		$hasil = $db ->ceklogin($nrp, $pass);

		if ($hasil != FALSE){
			$respon["error"] 			= FALSE;
			$respon["hasil"]["nrp"]		= $hasil["nrp"];
			$respon["hasil"]["nama"]	= $hasil["nama"];
			$respon["hasil"]["pass"]	= $hasil["pass"];

			echo json_encode($respon);
		}else{
			$respon["error"]	= TRUE;
			$respon["pesan"]	= "nrp dan password anda salah";
			 echo json_encode("Gagal Login");
		}

	}else{
		$respon["error"]	= TRUE;
		$respon["pesan"]	= "nrp dan password anda salah";
		
		echo json_encode($respon);
	}


?>