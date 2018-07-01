var totalDebit;

var noAkun;
var namaAkun;
var jumlah;
var keterangan;

var rowIndex = 1;
/*
		get item function
 */

 function getDebit(){
 	//from option
 	noAkun = $("#no_akun_debit").val().substring(0, 5);
 	namaAkun = $("#no_akun_debit").val().substring(8, $("#no_akun_debit").val().length);

 	jumlah = $("#jumlah_debit").val();

 	if($("#keterangan_debit").val() != ""){
		keterangan = $("#keterangan_debit").val();
	}else{
		keterangan = " ";
	}

	console.log(jumlah);
 }

 /*
		REFRESH FUNCTIONS
 */
function removeRow(row){
	$(row).parents("tr").remove();

	refreshTable();
}

function refreshTable(){
	var counter = 0;

	$('#resTable tr').each(function() { 
	    var index = $(this).find("td").eq(0).html(); //get the id

	    if(index != counter){
	    	$(this).find("td").eq(0).html(counter); //change the id

	    	counter++;
	    	rowIndex = counter;
	    }else if(index == 0){
	    	counter++;

	    	$(this).find("td").eq(0).html(counter); //change the id

	    	rowIndex = counter;
	    }

	    
	});
}

function clearVars(){
	noAkun = "";
	namaAkun = "";
	jumlah = "";
	keterangan = "";
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

/*
	creator function
 */

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
	rowContent += "<td>" + "<button href='#' onclick='removeRow(this); refreshTotalDebit();' onchange='refreshTotalDebit()';> Delete </button>";

	rowContent +="</tr>";

	rowIndex++;

	totalDebit += jumlah; //tambah

	row.insertAdjacentHTML('beforeend', rowContent);

	clearDebitModalInput();
}

/* 
*	CHECKER FUNCTIONS
*/

function isInputComplete(){
	return jumlah != null; //check the completeness of input
}

$("#debit_submit").on('click', function(){
	//get function
	getDebit();

	if(isInputComplete()){
		//creator funtion
		createDebitRow(noAkun, namaAkun, jumlah, keterangan);

		//refresh function
		clearVars();
		refreshTotalDebit();
	}else{
		alert("Silakan isi dengan lengkap!");
	}
});
