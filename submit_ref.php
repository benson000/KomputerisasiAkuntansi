
<?php
	require('config.php');

	$data = json_decode($_POST['jsonData']);

	$length = count($data);
	echo $length; //make sure the number of JSON array is true

	echo "\n\n";

	$sql = "INSERT INTO `jurnal_umum`(`tanggal`, `unit`, `jenis_kas`, `nomor_akun`, `nama_akun`, `debit`, `kredit`, `keterangan`) VALUES ";

	//add data to sql
	for ($i = 0; $i<$length; $i++) { //loop to create values, example (bla, bla bla), (bla, bla, bla)
		//catch all the data in vars
		$tanggal = "'".$data[$i]->Tanggal."'";
		$unit = "'".$data[$i]->Unit."'";
		$jenisKas = "'".$data[$i]->JenisKas."'";

		$nomorAkun = "'".$data[$i]->NomorAkun."'";
		$namaAkun = "'".$data[$i]->NamaAkun."'";
		$debit = "'".$data[$i]->Debit."'";
		$kredit = "'".$data[$i]->Kredit."'";
		$keterangan = "'".$data[$i]->Keterangan."'";

		//easier to arrange right :^) eventhough it took so much line
		$sql .= "(";
		$sql .= $tanggal.", ";
		$sql .= $unit.", ";
		$sql .= $jenisKas.", ";

		$sql .= $nomorAkun.", ";
		$sql .= $namaAkun.", ";
		$sql .= $debit.", ";
		$sql .= $kredit.", ";
		$sql .= $keterangan;
		$sql .= ")";

		if($i<$length-1){
			$sql .= ", ";
		}
	}
	echo $sql; //make sure this is SQL you wanted
	echo "\n\n";

	//execute query
	if($connect->query($sql)){
		echo "Input berhasil"; //make sure connection and query execution done right
	}else{
		echo "Input gagal \n";
		echo "Error : ".$connect->error;
	}

	$connect->close();
?>
