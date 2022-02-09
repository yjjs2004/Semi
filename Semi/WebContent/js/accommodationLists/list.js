window.addEventListener('load', function() {
    // 위치
    var mainCity = document.querySelector('.big-city');

    mainCity.onchange = function () {
        var subCity = document.querySelector('.small-city');
        var mainOption = mainCity.options[mainCity.selectedIndex].innerText;

        var subOptions = {
            seoul: ['강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구',
                    '동작구', '마포구', '서대문구', '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구',
                    '종로구', '중구', '중랑구'],
            busan: ['해운대/마린시티', '벡스코/센텀시티', '송정/기장', '광안리/경성대', '부산역',
                    '자갈치/남포동/영도', '송도/다대포', '서면/연산/범일', '동래/온천,금정구', '사상/강서/김해공항'],
            jeju: ['제주시/제주국제공항', '서귀포시', '애월/한림/협재', '중문', '표선/성산', '함덕/김녕/세화'],
            gyeonggi: ['가평/청평/양평', '수원/화성', '고양/파주/김포', '의정부/포천/동두천', '용인/동탄', '오산/평택', 
                        '남양주/구리/성남/분당', '이천/광주/여주/하남', '부천/광명/시흥/안산', '안양/의왕/군포'],
            incheon: ['송도/소래포구', '인천국제공항/강화/을왕리/영종', '구읍뱃터/월미도', '주안/간석/인천시청', '청라/계양/부평'],
            gangwon: ['속초/양양/고성', '춘천/인제/철원', '강릉', '평창/정선/영월', '동해/삼척/태백', '홍천/횡성/원주'],
            gyeongsang: ['대구/구미/안동/문경', '경주', '울산/양산', '거제/통영', '포항/영덕/울진/청송', '창원/마산/진해/김해', '남해/사천/하동/진주'],
            jeonla: ['전주', '광주/나주', '여수', '순천/광양/구례/목포/보성', '남원/무주/완주/익산', '군산/부안/고창'],
            chungcheong: ['대전/세종', '천안/아산/도고', '안면도/태안/서산/덕산', '보령/대천/부여/공주/금산', '청주/음성/진천', '충주/제천/단양']
        }

        switch (mainOption) {
            case '서울':
                var subOption = subOptions.seoul;
                break;
            case '부산':
                var subOption = subOptions.busan;
                break;
            case '제주':
                var subOption = subOptions.jeju;
                break;
            case '경기':
                var subOption = subOptions.gyeonggi;
                break;
            case '인천':
                var subOption = subOptions.incheon;
                break;
            case '강원':
                var subOption = subOptions.gangwon;
                break;
            case '경상':
                var subOption = subOptions.gyeongsang;
                break;
            case '전라':
                var subOption = subOptions.jeonla;
                break;
            case '충청':
                var subOption = subOptions.chungcheong;
                break;
        }

        subCity.options.length = 0;

        for (var i = 0; i < subOption.length; i++) {
            var option = document.createElement('option');
            option.value = subOption[i];
            option.innerText = subOption[i];
            subCity.append(option);
        }
    };
});