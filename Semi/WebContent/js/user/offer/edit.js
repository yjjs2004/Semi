window.addEventListener('load', function() {
    // 날짜
    var startDate = document.querySelector('.start-date');
    startDate.value = getFormatDate(new Date());

    // 가격
    var priceInput = document.querySelector('.price-input');

    // 위치
    var mainCity = document.querySelector('.main-city');

    priceInput.onkeyup = function() {
        inputNumberFormat(this);
    }

    mainCity.onchange = function () {
        var subCity = document.querySelector('.sub-city');
        var mainOption = mainCity.options[mainCity.selectedIndex].innerText;

        var subOptions = {
            seoul: ['강남/역삼/삼성', '신사/청담/압구정', '서초/교대/사당', '잠실/송파/강동',
                    '을지로/명동/중구', '서울역/이태원/용산', '종로/인사동', '동대문구', '홍대/합정/마포/서대문',
                    '여의도', '영등포역', '구로/신도림/금천', '김포공항/염창/강서', '건대입구/성수/왕십리', '성북/강북/노원/도봉'],
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

    // 날짜를 'yyyy-mm-dd' 형태로 변환하는 함수(커스터마이징 가능)
    function getFormatDate(date) {
        var year = date.getFullYear();              // yyyy
        var month = 1 + date.getMonth();            // M
        month = month >= 10 ? month : '0' + month;  // month 두자리로 저장
        var day = date.getDate();                   // d
        day = day >= 10 ? day : '0' + day;          // day 두자리로 저장
        return year + '-' + month + '-' + day;      // 'yyyy-mm-dd' 형태로 리턴
    };

    // 자동으로 천 단위로 입력시 콤마를 찍는 함수
    function inputNumberFormat(obj) {
        obj.value = comma(uncomma(obj.value));
    }

    function comma(str) {
        str = String(str);
        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
    }

    function uncomma(str) {
        str = String(str);
        return str.replace(/[^\d]+/g, '');
    }
});