<?php
	include 'config.php';

	$jsonSQL = json_decode($_POST['tanggal']);

	$sql = "SELECT * FROM `jurnal_umum`";

	if($jsonSQL){
		$sql .= " WHERE `tanggal` LIKE ";
		$sql .= "'";
			$sql .= $jsonSQL[0]->year;
			$sql .= " - ";
			$sql .= $jsonSQL[0]->month;
			$sql .= "%";
		$sql .= "'";
	}
	$result = $connect->query($sql);

	//uncomment to check SQL
	//echo $sql;

	if($result->num_rows > 0){
		while($row = $result->fetch_assoc()){
			echo "<tr>";
				echo "<td>".str_replace(' ', '', $row['tanggal'])."</td>";
				echo "<td>".$row['unit']."</td>";
				echo "<td>".$row['jenis_kas']."</td>";
				echo "<td>".$row['nomor_akun']."</td>";
				echo "<td>".$row['nama_akun']."</td>";
				echo "<td>".$row['debit']."</td>";
				echo "<td>".$row['kredit']."</td>";
				echo "<td>".$row['keterangan']."</td>";
				echo "<td align='center'><input type='checkbox'></input></td>";
			echo "</tr>";
		}
	}else{
		//jangan modifikasi respon ini, karena menghilangkan alert
		echo "Data tidak ada";
	}

	$sql = ""; //clear sql
	$connect->close();
?>