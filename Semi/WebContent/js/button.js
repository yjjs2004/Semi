
$(function (){	
	//체크인 
	$('#checkIn').click(function(){
		$("#check").text('체크인');
		alert($("#check").text());
		$("#popup-calendar").css('display','flex').hide().fadeIn();	
	});
	//체크아웃 
	$('#checkOut').click(function(){
		$("#check").text('체크아웃');
		alert($("#check").text());
		$("#popup-calendar").css('display','flex').hide().fadeIn();
	});
	//인원수 
	$('#people').click(function(){
		alert('인원수');
	});
	//검색
	$('#search').click(function(){
		alert('검색');
	});
	$('#search2').click(function(){
		alert('검색2');
	});
	
	//모달
	$('#popup').click(function(){
		modalClose();
	});
	
	
	$('#popup-calendar').click(function(){
		modalClose3();
	});
	
	$("#addressBtn").click(function (){
		$("#popup").css('display','flex').hide().fadeIn();	
	});
	
	$("#close").click(function(){
		modalClose();
	});
	
	$("#close2").click(function(){
		modalClose2();
	});
	
	function modalClose(){
		$("#popup").fadeOut();
	};		
	
	function modalClose2(){
		$("#popup-map").fadeOut();
	};	
	
	function modalClose3(){
		$("#popup-calendar").fadeOut();
	};		
	
	//내위치
	$("#myAddrSearch").click(function(){
		$("#address").text('현 위치');
		modalClose();
	});
	
	$("#mapAddrSearch").click(function(){
		modalClose();
		$("#popup-map").css('display','flex').hide().fadeIn();
	});
	
	$("#home").click(function(){
		modalClose2();
	});
	
	//위치 지정 완료		
	$("#mapSearchResult").click(function(){		
		$("#address").text($('#test1').text());
		modalClose2();
	})
	
	
});

