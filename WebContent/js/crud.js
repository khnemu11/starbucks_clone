$('#delete').click(function(){
		console.log($('#delete').data('seq'));
	if(confirm("정말로 삭제하시겠습니까?")){
	   	var link = "deleteuser.jsp?seq="+$('#delete').data('seq');
	   	console.log(link);
		location.href= link
	}
	else{
	}
});
$('#edit').click(function(){
	   	var link = "editform.jsp?seq="+$('#edit').data('seq');
	   	console.log(link);
		location.href= link
});