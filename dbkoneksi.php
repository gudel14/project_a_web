<?php
	class dbkoneksi{
		private $koneksi;


		// $koneksi function untuk mengoneksikan ke dalam database
		public function buatKoneksi(){
			require_once 'config.php';  //untuk mengkoneksikan ke config
		$this ->koneksi = new mysqli(DBHOST, DBUSER, DBPASS, DBNAME);
		return $this ->koneksi;			

		}

	}

?>