$(".icon").click(function(){
		var currentLink = document.location.href;
		var link= "http://www.facebook.com/sharer/sharer.php?u="+ currentLink;
		
		window.open(link);
});