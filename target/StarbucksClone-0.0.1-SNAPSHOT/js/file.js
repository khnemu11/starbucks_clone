$('#submit').click(function(){
	var file = new FormData();
	var temp = $('#file_upload')[0].files[0];
	console.log(temp);
	
	file.append('uploadFile',temp);
	
	console.log(file.get('uploadFile'));
	
	
	$.ajax({
		type:"POST",
		url :""
	});
});