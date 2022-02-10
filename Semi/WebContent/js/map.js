$(function (){
//지도를 담을 영역의 DOM 레퍼런스
	var container = document.getElementById('map');
	//지도를 생성할 때 필요한 기본 옵션
	var options = {
		//지도의 중심좌표.
		center: new kakao.maps.LatLng(33.450701, 126.570667),
		//지도의 레벨(확대, 축소 정도)
		level: 3 
	};
	//지도 생성 및 객체 리턴
	var map = new kakao.maps.Map(container, options);
	
	// 지도가 이동, 확대, 축소로 인해 중심좌표가 변경되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'center_changed', function() {

	    // 지도의  레벨을 얻어옵니다
	    var level = map.getLevel();

	    // 지도의 중심좌표를 얻어옵니다 
	    var latlng = map.getCenter(); 

	    var message = '중심 좌표는 위도 ' + latlng.getLat() + ', 경도 ' + latlng.getLng() + '입니다';

	    
	    $('#test1').text(message);
	});
});

