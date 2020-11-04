<?php
	
	require_once ('koneksi.php');

	if ($_SERVER['REQUEST_METHOD']=='POST') {
		
		$id			=$_POST ['id'];
		$water_pump	=$_POST ['water_pump'];
		$shift		=$_POST ['shift'];
		$status		=$_POST ['status'];
		$rpm		=$_POST ['rpm'];
		$hm			=$_POST ['hm'];
		$fuel       =$_POST ['fuel_rate'];
		$engine     =$_POST ['engine_load'];
		$preasure   =$_POST ['preasure'];
		$debit      =$_POST ['debit'];
		$elevasi	=$_POST ['elevasi'];
		$keterangan	=$_POST ['keterangan'];

		$sql= "UPDATE water_pump set water_pump= '$water_pump', shift='$shift', status='$status', rpm='$rpm', hm='$hm', fuel_rate='$fuel', engine_load='$engine', preasure='$preasure', debit='$debit', elevasi='$elevasi', keterangan='$keterangan' WHERE id='$id'";

		if (mysqli_query($con,$sql)) {
			
			echo "Data Telah Di Ubah";
		}else{
			echo "Gagal Ubah Data";
		}
		mysqli_close($con);


	} 
 

?>