<?php
	
	require_once ('koneksi.php');

	if ($_SERVER['REQUEST_METHOD']=='POST') {
		
		$id=$_POST ['id'];
		$water_pump=$_POST ['water_pump'];
		$shift=$_POST ['shift'];
		$status=$_POST ['status'];

		$sql= "UPDATE water_pump set water_pump= '$water_pump', shift='$shift', status='$status' WHERE id='$id'";

		if (mysqli_query($con,$sql)) {
			
			echo "data berhasil diupdate";
		}else{
			echo "data tidak terupdate";
		}
		mysqli_close($con);


	} 
 

?>