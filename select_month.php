<?php
	include 'config.php';

	$sql = "SELECT * FROM `bulan`";
	$result = $connect->query($sql);

	if($result->num_rows > 0){
		while($row = $result->fetch_assoc()){
			echo "<option value='".$row['id']."'>".$row['nama_bulan']."</option>";
		}
	}
?>