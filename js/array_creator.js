var tableData = [];
var jsonData;

function getArray(){
	$("table tr").each(function(count){
		if(count != 0){
			//getting data
			var noAkun = $.trim($(this).find("td").eq(1).html());
			var namaAkun = $.trim($(this).find("td").eq(2).html());
			var jumlahDebit = $.trim($(this).find("td").eq(3).html());
			var jumlahKredit = $.trim($(this).find("td").eq(4).html());
			var keterangan = $.trim($(this).find("td").eq(5).html());

			//push to array
			tableData.push({
				//from nobukti
				NoBukti: nobukti,

				//from form
				Unit: unit,
				JenisKas: tipekas,
				Tanggal: tanggalJadi,

				//from modals
				NomorAkun: noAkun,
				NamaAkun: namaAkun,
				Debit: jumlahDebit,
				Kredit: jumlahKredit,
				Keterangan: keterangan
			});
		}
	});
}

function createJSON(){
	jsonData = JSON.stringify(tableData);
}

function emptyArray(){
	tableData = [];
}

function emptyTable(){
	$("table tbody tr").remove();
}

function isBalance(){
	return totalDebit == totalKredit; //from getDebit.js, getKredit.js
}

function clearBalance(){
	$("#debitBalance").removeAttr('readonly').val(0);
	$("#kreditBalance").removeAttr('readonly').val(0);

	$("#debitBalance").attr("readonly", true);
	$("#kreditBalance").attr("readonly", true);
}

$("#final_input").on('click', function(){
	if(isBalance()){
		//get data
		getArray();
		createJSON();
		
		//clear array for next input
		emptyArray();

		//trigger AJAX
		inputAJAX();

		//clear the tables row
		emptyTable();
		refreshTotalDebit();
		refreshTotalKredit();
		rowIndex = 1;
	}else{
		alert("Jumlah debit dan kredit harus sama");
	}
});
