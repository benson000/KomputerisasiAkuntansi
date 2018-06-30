<!-- Modal Debit -->
<div class="modal fade" id="debitModal" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Input Debit</h4>
			</div>

			<div class="modal-body">
				<div class="form-group">
					<label>No Akun : </label>

					<select type = "text" name = "no_akun_debit" id = "no_akun_debit" class = "form-control" required>
						<option value="">Silakan pilih</option>
						<option value="">-----------------</option>
							<?php
								require_once('config.php');
								$sql = "SELECT `kode2`,`Nama` FROM `kode_rek2`";
								$nama = "";

								if($result = $connect->query($sql)){
									if($result->num_rows>0){
										while($row = $result->fetch_array()){
										echo "<option value = \"".$row['kode2']." | ".$row['Nama']."\"";

										if($nama == $row['Nama']){
											echo "selected";
										}

										echo " >".$row['Nama']."</option>";                                    }
									}else{
										echo "Error : Could not able to execute SQL!".$connect->error;
									}
								}
							?>
					</select>

					<div class="form-group">
						<label>Jumlah : </label>
						<input type="text" name = "jumlah_debit" id = "jumlah_debit" class = "form-control" required>
					</div>


					<div class="form-group">
						<label>Keterangan : </label>
						<textarea type="text" name = "keterangan_debit" id = "keterangan_debit" class = "form-control" required> </textarea> 
					</div>
				</div>

				<div class="modal-footer">
					<button id="debit_submit" type="button" class="btn btn-primary" data-dismiss="modal">Simpan</button>
				</div>	
			</div>

		</div>
	</div>
</div>