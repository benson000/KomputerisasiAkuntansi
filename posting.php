<!DOCTYPE html>
<html>
	<!-- HEAD -->
	<head>
		<title>READ DATA</title>

		<?php
			include 'assets\header_script.html';
		?>
	</head>

	<!-- BODY -->
	<body>
		<div class="wrapper">

			<div class="container-fluid">

				<div class="row">

					<div class="col-md-12">

						<div class="page-header clearfix">
							<h1 align="center">POSTING DATA</h1>

							<br/>

							<div id="option_bars" align="center">
								<select id="monthSelected" class="selectpicker" data-style="btn-info">
									<?php
										include 'select_month.php';
									?>
								</select>

								<select id="yearSelected" class="selectpicker" data-style="btn-info">
									<?php
										$tahun = date("Y");

										for($i = 0; $i <= 10; $i++){
											echo "<option value='".$tahun."'>".$tahun."</option>";
											$tahun--;
										} 
									?>
								</select>

								<button id="sortButton">Tampilkan</button>
								<button id="showAllButton">Tampilkan Semua</button>
							</div>

							<br/>

							<div id="table">
								<table id="resTable" class="table" align="center">
									<thead>
										<tr>
											<th>Tanggal</th>
											<th>Unit</th>
											<th>Jenis Kas</th>
											<th>Nomor Akun</th>
											<th>Nama Akun</th>
											<th>Debit</th>
											<th>Kredit</th>
											<th>Keterangan</th>

											<th align="center">Posting</th>
											<th>Check all <input type="checkbox" id="checkAll"></th>
										</tr>
									</thead>

									<tbody id="outputRow">
										<!-- PHP SELECT GOES HERE -->
									</tbody>
								</table>
							</div>

							<div align="center">
								<button id='postButton' align='center'>POSTING</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>

	<!-- FOOT -->
	<footer>
		<script type="text/javascript" src="js\sort_table.js"></script>
		<?php
			include 'assets\footer_script.html';
		?>
	</footer>
</html>
