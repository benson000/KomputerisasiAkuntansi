var totalKredit;

var noAkun;
var namaAkun;
var jumlah;
var keterangan;

/*
		get item function
 */

function getKredit(){
	//from option
 	noAkun = $("#no_akun_kredit").val().substring(0, 5);
 	namaAkun = $("#no_akun_kredit").val().substring(8, $("#no_akun_kredit").val().length);

 	jumlah = $("#jumlah_kredit").val();

 	if($("#keterangan_kredit").val() != ""){
		keterangan = $("#keterangan_kredit").val();
	}else{
		keterangan = " ";
	}

	console.log(jumlah);
}

function createKreditRow(noAkun, namaAkun, jumlah, keterangan){
	var row;
	var rowContent;

	row = document.getElementById("outputRow");

	rowContent = "<tr id='" + rowIndex + "'>";
	rowContent += "<td>" + rowIndex + "</td>";
	rowContent += "<td>" + noAkun + "</td>";
	rowContent += "<td>" + namaAkun + "</td>";

	rowContent += "<td>0</td>";
	rowContent += "<td>" + jumlah + "</td>";

	rowContent += "<td>" + keterangan + "</td>";
	rowContent += "<td>" + "<button href='#' onclick='removeRow(this); refreshTotalKredit();' onchange='refreshTotalKredit();'> Delete </button>";

	rowContent +="</tr>";

	rowIndex++;

	row.insertAdjacentHTML('beforeend', rowContent);

	clearKreditModalInput();
}

function clearKreditModalInput(){
	$("#no_akun_kredit select").val("").change();
	$("#jumlah_kredit").val("");
	$("#keterangan_kredit").val("");
}

function refreshTotalKredit(){
	totalKredit = 0;

	$("table tr").each(function(count){
		if(count != 0){
			totalKredit += parseInt( //parseInt to make it operateable
				$.trim($(this).find("td").eq(4).html())
				);
		}
	});

	//uncomment to check totalDebit
	//console.log(totalKredit);

	$("#kreditBalance").removeAttr('readonly').val(totalKredit); //remove readonly to input
	$("#kreditBalance").attr("readonly", true); //make it as readonly again
}

$("#kredit_submit").on('click', function(){
	getKredit();

	if(isInputComplete()){
		createKreditRow(noAkun, namaAkun, jumlah, keterangan);

		clearVars();

		//renew kredit balance
		refreshTotalKredit();
	}else{
		alert("Silakan isi dengan lengkap!");
	}
});
