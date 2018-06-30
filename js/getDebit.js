var totalDebit;

var noAkun;
var namaAkun;
var jumlah;
var keterangan;

var rowIndex = 1;

$("#no_akun_debit").on('change', function(){
	noAkun = this.value.substring(0, 5);
	namaAkun = this.value.substring(8, this.value.length);
});

$("#jumlah_debit").on('change', function(){
	jumlah = this.value;
});

$("#keterangan_debit").on('change', function(){
	if(this.value != ""){
		keterangan = this.value;
	}else{
		keterangan = " ";
	}
});

function refreshTable(){
	var counter = 0;

	$('#resTable tr').each(function() { 
	    var index = $(this).find("td").eq(0).html();

	    if(index != counter && index != 1){
	    	$(this).find("td").eq(0).html(counter); //change the id
	    }

	    counter++;
	    rowIndex = counter;
	});
}

function removeRow(row){
	console.log("Has entered removeRow");

	$(row).parents("tr").remove();

	refreshTable();
}

function createDebitRow(noAkun, namaAkun, jumlah, keterangan){
	var row;
	var rowContent;

	row = document.getElementById("outputRow");

	rowContent = "<tr id='" + rowIndex + "'>";
	rowContent += "<td>" + rowIndex + "</td>";
	rowContent += "<td>" + noAkun + "</td>";
	rowContent += "<td>" + namaAkun + "</td>";

	rowContent += "<td>" + jumlah + "</td>";
	rowContent += "<td>0</td>";

	rowContent += "<td>" + keterangan + "</td>";
	rowContent += "<td>" + "<button href='#' onclick='removeRow(this); refreshTotalDebit(); onchange='refreshTotalDebit();''> Delete </button>";

	rowContent +="</tr>";

	rowIndex++;

	totalDebit += jumlah; //tambah

	row.insertAdjacentHTML('beforeend', rowContent);

	clearDebitModalInput();
}

function clearDebitModalInput(){
	$("#no_akun_debit select").val("");
	$("#jumlah_debit").val("");
	$("#keterangan_debit").val("");
}

function refreshTotalDebit(){
	totalDebit = 0;

	$("table tr").each(function(count){
		if(count != 0){
			totalDebit += parseInt( //parseInt to make it operateable
				$.trim($(this).find("td").eq(3).html())
				);
		}
	});

	//uncomment to check totalDebit
	//console.log(totalDebit);

	$("#debitBalance").removeAttr('readonly').val(totalDebit); //remove readonly to input
	$("#debitBalance").attr("readonly", true); //make it as readonly again
}

$("#debit_submit").on('click', function(){
	createDebitRow(noAkun, namaAkun, jumlah, keterangan);

	//renew debitBalance
	refreshTotalDebit();
});