var index = 0;

$(function() {
	slideShow();
	swiper();
	swiper2();
});
// 자동
function slideShow() {
	var i;
	var x = document.getElementsByClassName("slide1"); // slide1에 대한 dom 참조
	for (i = 0; i < x.length; i++) {
		x[i].style.display = "none"; // 처음에 전부 display를 none으로 한다.
	}
	index++;
	if (index > x.length) {
		index = 1; // 인덱스가 초과되면 1로 변경
	}
	x[index - 1].style.display = "block"; // 해당 인덱스는 block으로
	setTimeout(slideShow, 3000); // 함수를 4초마다 호출
}
// 수동
function swiper() {
	var swiper = new Swiper(".mySwiper", {
		slidesPerView : 5,
		spaceBetween : 30,
		loop : true,
		pagination : {
			el : ".swiper-pagination",
			clickable : true,
		},
		navigation : {
			nextEl : ".swiper-button-next",
			prevEl : ".swiper-button-prev",
		},
	});
}


function swiper2() {
	var swiper = new Swiper(".mySwiper2", {
		slidesPerView : 7,
		spaceBetween : 30,
		loop : true,
		pagination : {
			el : ".swiper-pagination",
			clickable : true,
		},
		navigation : {
			nextEl : ".swiper-button-next",
			prevEl : ".swiper-button-prev",
		},
	});
}