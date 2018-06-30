	var jenis;
	var noAkun;
	var namaAkun;
	var jumlah;
	var keterangan;

	var index;

	function collectData(){
		var data = document.getElementById("no_akun");
		var indexData = data.selectedIndex;

		this.noAkun = data[indexData].value.substring(0, 5);
		this.namaAkun = data.options[indexData].text.substring(8, data.options[indexData].length);
		this.jumlah = document.getElementById("Jumlah").value;
		this.keterangan = document.getElementById("Keterangan").value;

		createRow(this.jenis, this.noAkun, this.namaAkun, this.jumlah, this.keterangan);
	}

	function createRow(jenis, noAkun, namaAkun, jumlah, keterangan){
		var row;
		var rowContent;

		row = document.getElementById("outputRow");

		rowContent = "<tr id='" + (index++) + "'>";
		rowContent += "<td>" + index + "</td>";
		rowContent += "<td contenteditable='true'>" + noAkun + "</td>";
		rowContent += "<td contenteditable='true'>" + namaAkun + "</td>";

		if(jenis == "debit"){
			rowContent += "<td contenteditable='true'>" + jumlah + "</td>";
			rowContent += "<td>" + 0 +  "</td>";
		}else{
			rowContent += "<td>" + 0 + "</td>";
			rowContent += "<td contenteditable='true'>" + jumlah + "</td>";
		}

		rowContent += "<td contenteditable='true'>" + keterangan + "</td>";
		rowContent += "<td>" + "<button href='#' onclick='$(this).parent().parent().remove();'> Delete </button>";

		rowContent +="</tr>";

		row.insertAdjacentHTML('beforeend', rowContent);
	}