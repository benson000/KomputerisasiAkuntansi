<script type="text/javascript">
	function romanize (num) {
		if (!+num)
			return NaN;
		
		var digits = String(+num).split(""),
			key = ["","C","CC","CCC","CD","D","DC","DCC","DCCC","CM",
				   "","X","XX","XXX","XL","L","LX","LXX","LXXX","XC",
				   "","I","II","III","IV","V","VI","VII","VIII","IX"],
			roman = "",
			i = 3;
		while (i--)
			roman = (key[+digits.pop() + (i * 10)] || "") + roman;
		
		return Array(+digits.join("") + 1).join("M") + roman;
	}

	var norut = 1;
	var tipekas = "--";
	var unit = "-----";
	var today = new Date();

	var nobukti;

	var inputDate;
	var tanggal;
	var hari = today.getDate();
	var bulan = today.getMonth() + 1; //default = today's month
	var tahun = today.getFullYear(); // default = today's year

	var tanggalJadi = tahun.toString() + " - " + bulan.toString() + " - " + hari.toString();  

	function refreshnobukti(){
		mm = romanize(bulan);
		
		nobukti = norut + "/" + tipekas + "/" + unit + "/" + mm + "/" +tahun;
		
		$("#nobukti").text(nobukti);
	}


	$("#tanggal").on('change', function(){
		inputDate = document.getElementById('tanggal').value;
		tanggal = new Date(inputDate);
		bulan = tanggal.getMonth() + 1;
		tahun = tanggal.getYear() + 1900;
		refreshnobukti();
	});
	
	$("#jenis_kas").on('change', function(){
		tipekas = this.value;
		
		refreshnobukti();
	});
	
	$("#unit").on('change', function(){
		unit = this.value;
		
		refreshnobukti();
	});

	refreshnobukti();
</script>
