var bulan;
var tahun;

var dataTanggal = [];

function clearOutputRow(){
	$("#outputRow").empty();
}

$("#sortButton").on('click', function(){
	clearOutputRow();
	dataTanggal = []; //return blank array

	bulan = $("#monthSelected").val();
	tahun = $("#yearSelected").val();

	dataTanggal.push({
		month: bulan,
		year: tahun
	});

	$.ajax({
		url: './select_data.php',
		data: {tanggal: JSON.stringify(dataTanggal)},
		type: "POST",
		success: function(returnData){
			var outputRow = document.getElementById("outputRow");

			if(returnData == "Data tidak ada"){
				alert(returnData);
			}else{
				outputRow.insertAdjacentHTML("beforeEnd", returnData);
			}
		},
		error: function(xhr, status, error) {
			var err = eval("(" + xhr.responseText + ")");
			alert(err.Message);
		}
	});
});

$("#showAllButton").on('click', function(){
	clearOutputRow();
	dataTanggal = []; //return blank array

	$.ajax({
		url: './select_data.php',
		data: {tanggal: JSON.stringify(dataTanggal)}, //$jsonSQL[0] === false
		type: "POST",
		success: function(returnData){
			var outputRow = document.getElementById("outputRow");

			if(returnData == "Data tidak ada"){
				alert(returnData);
			}else{
				outputRow.insertAdjacentHTML("beforeEnd", returnData);
			}
		},
		error: function(xhr, status, error) {
			var err = eval("(" + xhr.responseText + ")");
			alert(err.Message);
		}
	});
});

$("#checkAll").click(function(){
    $('input:checkbox').not(this).prop('checked', this.checked);
});
