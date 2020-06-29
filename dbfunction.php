<?php
	class dbfunction{
		//variabel koneksi
		private $koneksi;

		//konstruktor
		function __construct(){
			require_once 'dbkoneksi.php';  //penghubung android dengan mysql
			$db = new dbkoneksi();
			$this->koneksi=$db->buatKoneksi();
		}

		//destructor
		function __destruct(){

		}

		//function login
		public function ceklogin($nrp, $pass){
			$statement = $this->koneksi->prepare("SELECT * FROM tbuser WHERE nrp = ? AND pass = md5(?) LIMIT 1");
			$statement->bind_param("ss",$nrp,$pass);

			if ($statement->execute()) {
				$user= $statement->get_result()->fetch_assoc();
				$statement->close();
					return $user;
			}else{
				return NULL;
			}
		}

		//function register

		public function registeruser($nrp,$nama,$pass){
			$statement = $this->koneksi->prepare("INSERT INTO tbuser(nrp,nama,pass) VALUES (?,?,md5(?))") or die ($this->koneksi-> error);
		$statement->bind_param("sss",$nrp,$nama,$pass);
		$hasil = $statement->execute();
		$statement->close();

		//kemungkinan
		if ($hasil){
			return true;
		}else{
			return false;
		}

		}
	}
?>