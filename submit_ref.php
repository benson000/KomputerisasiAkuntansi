
<?php
	require('config.php');

	$data = json_decode($_POST['jsonData']);
	$length = count($data);

	//table config
	$tableName = "`jurnal_umum`";
	$tableModel = [
		"`no_bukti`",
		"`tanggal`",
		"`unit`",
		"`jenis_kas`",
		"`nomor_akun`",
		"`nama_akun`",
		"`debit`",
		"`kredit`",
		"`keterangan`"
	];

	$sql = "INSERT INTO ".$tableName;

	//add model to sql
	$sql .= "(";
	for($a = 0; $a<count($tableModel); $a++){
		$sql .= $tableModel[$a];

		if($a != count($tableModel) - 1){
			$sql .= ", ";
		}
	}

	$sql .= ")";
	$sql .= " VALUES ";

	//add data to sql
	for ($i = 0; $i<$length; $i++) { //loop to create values, example (bla, bla bla), (bla, bla, bla)
		//catch all the data in vars
		$nobukti = "'".$data[$i]->NoBukti."'";

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
		$sql .= $nobukti.", ";
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
	//echo $sql; //make sure this is SQL you wanted
	//echo "\n\n";

	//execute query
	if($connect->query($sql)){
		echo "Input berhasil"; //make sure connection and query execution done right
	}else{
		echo "Input gagal \n";
		echo "Error : ".$connect->error;
	}

	$connect->close();
?>
