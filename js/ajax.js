function tampilkan(halaman){
	$('#loader').fadeIn('slow');
	$.ajax({
		url	     : 'http://localhost/akun/input.php',
		type     : 'POST',
		dataType : 'html',
		data     : 'content='+halaman,
		success  : function(jawaban){
			$('#content #right').html(jawaban);
		},
	})
}