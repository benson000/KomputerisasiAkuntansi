<html>
<head>
	<meta charset="UTF-8">
	<title>Input Data</title>

	<?php
		include 'assets\header_script.html';
	?>
</head>

<body>
	<div class="wrapper">

		<div class="container-fluid">

			<div class="row">

				<div class="col-md-12">

					<div class="page-header clearfix">

						<h1>T I K - T O D  2</h1>
						<h1>No Bukti : <small class="text-muted text-right" id="nobukti"></small></h1>

						<form id="balance" class="form-group">
							<div class="debitBalanceDiv">
								<label>Debit : </label>
								<input id="debitBalance" style="width: 305px" type="text" value="0" class="form-control" readonly>
							</div>

							<div class="kreditBalanceDiv">
								<label>Kredit : </label>
								<input id="kreditBalance" style="width: 305px" type="text" value="0" class="form-control" readonly>
							</div>
						</form>	

						<form id="modalForm" method="post" class="modalForm">

							<div class="form-group">
								<label>Unit : </label>

								<select type = "text" name = "unit" id = "unit" class = "form-control" required>
									<option value="">Silakan pilih</option>
									<option value="">-----------------</option>
									<?php
									require_once('config.php');
									$sql = "SELECT `kode2`,`Nama` FROM `unit`";
									$nama = "";

									if($result = $connect->query($sql)){
										if($result->num_rows>0){
											while($row = $result->fetch_array()){
												echo "<option value = \"".$row['kode2']."\"";

												if($nama == $row['Nama']){
													echo "selected";
												}

												echo ">".$row['kode2']." | ".$row['Nama']."</option>";                                    
											}
										}else{
											echo "Error : Could not able to execute SQL!".$connect->error;
										}
									}
									?>
								</select>

							</div>

							<div class="form-group">
								<label>Jenis KAS : </label>
								<select type ="text" name="jenis_kas" id="jenis_kas" class="form-control" required>
									<option value="">Silahkan Pilih</option>
									<option value="">-----------------</option>
									<?php
									require_once('config.php');
									$sql = "SELECT `kode_kas`,`nama_kas` FROM `jenis_kas`";
									$nama = "";

									if($result = $connect->query($sql)){
										if($result->num_rows>0){
											while($row = $result->fetch_array()){
												echo "<option value = \"".$row['kode_kas']."\"";

												if($nama == $row['nama_kas']){
													echo "selected";
												}

												echo ">".$row['kode_kas']."	|	".$row['nama_kas']."</option>";                                    }
											}else{
												echo "Error : Could not able to execute SQL!".$connect->error;
											}
										}
										?>
								</select>
							</div>

							<div class="form-group">
								<label>Tanggal : </label>

								<input type = "date" name= "tanggal" class = "form-control" id = "tanggal" value ="" required>

							</div>

							<?php
								include 'assets\footer_script.html';
								include 'js\fungsi.js';
							?>

							<div class="btn-group btn-group-justified">

								<div class="container">
									<!-- Debit -->
									<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#debitModal">Input Debit</button>
									<?php 
										include("modal\debitModal.php"); //call from anothe php file
									?>
									<!-- Javascript for debit -->
									<script type="text/javascript" src="js/getDebit.js"></script>


									<!--- BATAS SUCI -->


									<!-- Kredit -->
									<button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#kreditModal">Input Kredit</button>
									<?php
										include("modal\kreditModal.php"); //call from another php file
									?>
									<!-- Javascript for kredit -->
									<script type="text/javascript" src="js/getKredit.js"></script>
								</div>

								
							</div>
						</form>

						
							<table id="resTable" class="table" align="center">
								<thead>
									<tr>
										<th>Nomor</th>
										<th>No. Akun</th>
										<th>Nama Akun</th>
										<th>Debit</th>
										<th>Kredit</th>
										<th>Keterangan</th>

										<th>Action</th>
									</tr>
								</thead>

								<tbody id="outputRow">
									<!-- Jquery will be attached to here -->
								</tbody>
							</table>

							<button class="btn btn-success" id="final_input">Input</button>
							<!-- Javascript for creating JSON and input to database -->
							<script type="text/javascript" src="js/input_database.js"></script>
							<script type="text/javascript" src="js/array_creator.js"></script>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<footer>
	<?php
		include 'assets\footer_script.html';
	?>
</footer>
</html>