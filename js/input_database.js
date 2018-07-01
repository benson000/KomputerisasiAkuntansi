function inputAJAX(){
	jQuery.ajax({
		url: './submit_ref.php',
		data: {jsonData: jsonData}, //from array_creator.js
		type: 'POST',
		success: function (returnData){
			alert('Send to server succeded!');
			
			//uncomment a line below to check length of JSON array, SQL and status to DB
			alert(returnData);
		},
        error: function(xhr, status, error) {
			var err = eval("(" + xhr.responseText + ")");
			alert(err.Message);
		}
	});

	console.log(jsonData);
}
