<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="../js/slideShow.js"></script>
<script src="../js/button.js"></script>
<script src="../js/map.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
<link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet"
	href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<link rel="stylesheet"
	href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<link rel="stylesheet" href="../plugins/jqvmap/jqvmap.min.css">
<link rel="stylesheet" href="../dist/css/adminlte.min.css">
<link rel="stylesheet"
	href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<link rel="stylesheet"
	href="../plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet" href="../plugins/summernote/summernote-bs4.min.css">
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c751f51d711b8cb1563dba0f5bdaf7c6&librarys=services"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="../plugins/jquery/jquery.min.js"></script>
<script src="../plugins/jquery-ui/jquery-ui.min.js"></script>


<style type="text/css">/* Chart.js */
@
keyframes chartjs-render-animation {
	from {opacity: .99
}

to {
	opacity: 1
}

}
.chartjs-render-monitor {
	animation: chartjs-render-animation 1ms
}

.chartjs-size-monitor, .chartjs-size-monitor-expand,
	.chartjs-size-monitor-shrink {
	position: absolute;
	direction: ltr;
	left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	overflow: hidden;
	pointer-events: none;
	visibility: hidden;
	z-index: -1
}

.chartjs-size-monitor-expand>div {
	position: absolute;
	width: 1000000px;
	height: 1000000px;
	left: 0;
	top: 0
}

.chartjs-size-monitor-shrink>div {
	position: absolute;
	width: 200%;
	height: 200%;
	left: 0;
	top: 0
}

.main {
	margin: 0 auto;
	width: 60%;
	width: 1200px;
	min-width:
}

.sImg {
	width: 180px;
	height: 144px;
}

.bImg {
	width: 240px;
	height: 240px;
	padding: 0.3rem;
}

.imgDiv {
	width: 1200px;
	text-align: center;
}

.slide1 {
	width: 1100px;
	height: 150px;
	margin: 10px 50px;
}

.var {
	margin: 0 auto;
	text-align: center;
	border-radius: 80px;
	background: grey;
	width: 500px;
	height: 60px;
}

label {
	
}

.Img {
	margin: 5px 5px;
	border-radius: 10%;
}

.shadow {
	box-shadow: 6px 7px 20px 0px #bfb3b3;
}

body {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.popup-wrap {
	background-color: rgba(0, 0, 0, .3);
	justify-content: center;
	align-items: end;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	display: none;
	padding: 15px 15px 1px 15px;
	z-index: 20;
}

.popup-wrap2 {
	background-color: #e6e6e6;
	justify-content: center;
	align-items: center;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	display: none;
	padding: 15px 15px 1px 15px;
	z-index: 20;
}

.popup-wrap3 {
	justify-content: center;
	align-items: center;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	display: none;
	padding: 15px 15px 1px 15px;
	z-index: 20;
}

.popup {
	width: 640px;
	height: 136px;
	width: 100%;
	max-width: 400px;
	border-radius: 10px;
	overflow: hidden;
	background-color: #264db5;
	box-shadow: 5px 10px 10px 1px rgba(0, 0, 0, .3);
}

.popup-map {
	width: 640px;
	height: 100%;
	width: 100%;
	max-width: 400px;
	border-radius: 10px;
	overflow: hidden;
	background-color: #264db5;
	box-shadow: 5px 10px 10px 1px rgba(0, 0, 0, .3);
}

.popup-head {
	width: 100%;
	height: 50px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.popup-body {
	width: 100%;
	background-color: #ffffff;
}

#modal {
	background: white;
	border-radius: 1.2rem 1.2rem 0 0;
	width: 100%;
	width: 512px;
	max-width: 32rem;
	text-align: center;
	bottom: 0;
	max-width: 32rem;
}

#modal2 {
	background: white;
	width: 100%;
	max-width: 60rem;
	text-align: center;
	height: 100%;
	margin-top: 5rem;
}

#modal3 {
	background: white;
	border-radius: 1.2rem 1.2rem 0 0;
	width: 100%;
	width: 512px;
	max-width: 32rem;
	text-align: center;
	bottom: 0;
	max-width: 32rem;
}

button {
	cursor: pointer;
	border: none;
	background: white;
}

.popup-body-menu {
	float: left;
	padding: 10px;
	width: 236px;
}

.popup-body-menu:hover {
	background: #e3d4cd;
}

#mapSearchResult {
	position: relative;
	z-index: 10;
	bottom: 8rem;
	margin: 0 5rem;
	height: 4.5rem;
	color: #fff;
	font-size: 1.6rem;
	font-weight: 700;
	border: none;
	width: calc(100% - 10rem);
	background: #de2e5f;
}

.modal2-address {
	background: hsla(0, 0%, 100%, .8);
	z-index: 20;
	line-height: 4.2rem;
	padding: 0 1.5rem;
	position: absolute;
	top: 4.4rem;
	height: 4.2rem;
	width: 960px;
	top: 4.4rem;
}
</style>
<jsp:include page="header.jsp" />
</head>

<body>
	<div class="main">
		<%--주소 --%>
		<div style="margin-top: 95px;">
			<button type="button" id="addressBtn">
				<span id="address"> 주소 xx시 xx구 xxxx동</span>
			</button>
		</div>
		<%--중앙 회색 DIV --%>
		<div class="var">
			<div>
				<%--입력 값에 따라 벨류가 변함. key up / JS --%>
				<label> 위치 <input placeholder="어디로 여행가세요?"></label>
				<button type="button" id="checkIn">
					<i class="far fa-calendar-alt"></i>체크인
				</button>
				<button type="button" id="checkOut">
					<i class="far fa-calendar-alt"></i>체크아웃
				</button>
				<button id="people">인원수</button>
				<label>
					<button id="search">
						<i class="fas fa-search"></i>
					</button>
				</label>
			</div>
			<%--modal3 --%>
			<div class="popup-wrap3" id="popup-calendar">	
			<div id="modal3">
				<div class="card bg-gradient-success"
					style="position: relative; left: 0px; top: 0px;">
					<div class="card-header border-0 ui-sortable-handle">
						<h3 class="card-title" id="check">
							<i class="far fa-calendar-alt"></i> 
						</h3>
						<div class="card-tools">					
						</div>
					</div>

					<div class="card-body pt-0" style="display: block;">

						<div id="calendar" style="width: 100%">
							<div class="bootstrap-datetimepicker-widget usetwentyfour">
								<ul class="list-unstyled">
									<li class="show"><div class="datepicker">
											<div class="datepicker-days" style="">
												<table class="table table-sm">
													<thead>
														<tr>
															<th class="prev" data-action="previous"><span
																class="fa fa-chevron-left" title="Previous Month"></span></th>
															<th class="picker-switch" data-action="pickerSwitch"
																colspan="5" title="Select Month">October 2023</th>
															<th class="next" data-action="next"><span
																class="fa fa-chevron-right" title="Next Month"></span></th>
														</tr>
														<tr>
															<th class="dow">Su</th>
															<th class="dow">Mo</th>
															<th class="dow">Tu</th>
															<th class="dow">We</th>
															<th class="dow">Th</th>
															<th class="dow">Fr</th>
															<th class="dow">Sa</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td data-action="selectDay" data-day="10/01/2023"
																class="day weekend">1</td>
															<td data-action="selectDay" data-day="10/02/2023"
																class="day">2</td>
															<td data-action="selectDay" data-day="10/03/2023"
																class="day">3</td>
															<td data-action="selectDay" data-day="10/04/2023"
																class="day">4</td>
															<td data-action="selectDay" data-day="10/05/2023"
																class="day">5</td>
															<td data-action="selectDay" data-day="10/06/2023"
																class="day">6</td>
															<td data-action="selectDay" data-day="10/07/2023"
																class="day weekend">7</td>
														</tr>
														<tr>
															<td data-action="selectDay" data-day="10/08/2023"
																class="day weekend">8</td>
															<td data-action="selectDay" data-day="10/09/2023"
																class="day">9</td>
															<td data-action="selectDay" data-day="10/10/2023"
																class="day">10</td>
															<td data-action="selectDay" data-day="10/11/2023"
																class="day active">11</td>
															<td data-action="selectDay" data-day="10/12/2023"
																class="day">12</td>
															<td data-action="selectDay" data-day="10/13/2023"
																class="day">13</td>
															<td data-action="selectDay" data-day="10/14/2023"
																class="day weekend">14</td>
														</tr>
														<tr>
															<td data-action="selectDay" data-day="10/15/2023"
																class="day weekend">15</td>
															<td data-action="selectDay" data-day="10/16/2023"
																class="day">16</td>
															<td data-action="selectDay" data-day="10/17/2023"
																class="day">17</td>
															<td data-action="selectDay" data-day="10/18/2023"
																class="day">18</td>
															<td data-action="selectDay" data-day="10/19/2023"
																class="day">19</td>
															<td data-action="selectDay" data-day="10/20/2023"
																class="day">20</td>
															<td data-action="selectDay" data-day="10/21/2023"
																class="day weekend">21</td>
														</tr>
														<tr>
															<td data-action="selectDay" data-day="10/22/2023"
																class="day weekend">22</td>
															<td data-action="selectDay" data-day="10/23/2023"
																class="day">23</td>
															<td data-action="selectDay" data-day="10/24/2023"
																class="day">24</td>
															<td data-action="selectDay" data-day="10/25/2023"
																class="day">25</td>
															<td data-action="selectDay" data-day="10/26/2023"
																class="day">26</td>
															<td data-action="selectDay" data-day="10/27/2023"
																class="day">27</td>
															<td data-action="selectDay" data-day="10/28/2023"
																class="day weekend">28</td>
														</tr>
														<tr>
															<td data-action="selectDay" data-day="10/29/2023"
																class="day weekend">29</td>
															<td data-action="selectDay" data-day="10/30/2023"
																class="day">30</td>
															<td data-action="selectDay" data-day="10/31/2023"
																class="day">31</td>
															<td data-action="selectDay" data-day="11/01/2023"
																class="day new">1</td>
															<td data-action="selectDay" data-day="11/02/2023"
																class="day new">2</td>
															<td data-action="selectDay" data-day="11/03/2023"
																class="day new">3</td>
															<td data-action="selectDay" data-day="11/04/2023"
																class="day new weekend">4</td>
														</tr>
														<tr>
															<td data-action="selectDay" data-day="11/05/2023"
																class="day new weekend">5</td>
															<td data-action="selectDay" data-day="11/06/2023"
																class="day new">6</td>
															<td data-action="selectDay" data-day="11/07/2023"
																class="day new">7</td>
															<td data-action="selectDay" data-day="11/08/2023"
																class="day new">8</td>
															<td data-action="selectDay" data-day="11/09/2023"
																class="day new">9</td>
															<td data-action="selectDay" data-day="11/10/2023"
																class="day new">10</td>
															<td data-action="selectDay" data-day="11/11/2023"
																class="day new weekend">11</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="datepicker-months" style="display: none;">
												<table class="table-condensed">
													<thead>
														<tr>
															<th class="prev" data-action="previous"><span
																class="fa fa-chevron-left" title="Previous Year"></span></th>
															<th class="picker-switch" data-action="pickerSwitch"
																colspan="5" title="Select Year">2023</th>
															<th class="next" data-action="next"><span
																class="fa fa-chevron-right" title="Next Year"></span></th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td colspan="7"><span data-action="selectMonth"
																class="month">Jan</span><span data-action="selectMonth"
																class="month">Feb</span><span data-action="selectMonth"
																class="month">Mar</span><span data-action="selectMonth"
																class="month">Apr</span><span data-action="selectMonth"
																class="month">May</span><span data-action="selectMonth"
																class="month">Jun</span><span data-action="selectMonth"
																class="month">Jul</span><span data-action="selectMonth"
																class="month">Aug</span><span data-action="selectMonth"
																class="month">Sep</span><span data-action="selectMonth"
																class="month active">Oct</span><span
																data-action="selectMonth" class="month">Nov</span><span
																data-action="selectMonth" class="month">Dec</span></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="datepicker-years" style="display: none;">
												<table class="table-condensed">
													<thead>
														<tr>
															<th class="prev" data-action="previous"><span
																class="fa fa-chevron-left" title="Previous Decade"></span></th>
															<th class="picker-switch" data-action="pickerSwitch"
																colspan="5" title="Select Decade">2020-2029</th>
															<th class="next" data-action="next"><span
																class="fa fa-chevron-right" title="Next Decade"></span></th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td colspan="7"><span data-action="selectYear"
																class="year old">2019</span><span
																data-action="selectYear" class="year">2020</span><span
																data-action="selectYear" class="year">2021</span><span
																data-action="selectYear" class="year active">2022</span><span
																data-action="selectYear" class="year">2023</span><span
																data-action="selectYear" class="year">2024</span><span
																data-action="selectYear" class="year">2025</span><span
																data-action="selectYear" class="year">2026</span><span
																data-action="selectYear" class="year">2027</span><span
																data-action="selectYear" class="year">2028</span><span
																data-action="selectYear" class="year">2029</span><span
																data-action="selectYear" class="year old">2030</span></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="datepicker-decades" style="display: none;">
												<table class="table-condensed">
													<thead>
														<tr>
															<th class="prev" data-action="previous"><span
																class="fa fa-chevron-left" title="Previous Century"></span></th>
															<th class="picker-switch" data-action="pickerSwitch"
																colspan="5">2000-2090</th>
															<th class="next" data-action="next"><span
																class="fa fa-chevron-right" title="Next Century"></span></th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td colspan="7"><span data-action="selectDecade"
																class="decade old" data-selection="2006">1990</span><span
																data-action="selectDecade" class="decade"
																data-selection="2006">2000</span><span
																data-action="selectDecade" class="decade"
																data-selection="2016">2010</span><span
																data-action="selectDecade" class="decade active"
																data-selection="2026">2020</span><span
																data-action="selectDecade" class="decade"
																data-selection="2036">2030</span><span
																data-action="selectDecade" class="decade"
																data-selection="2046">2040</span><span
																data-action="selectDecade" class="decade"
																data-selection="2056">2050</span><span
																data-action="selectDecade" class="decade"
																data-selection="2066">2060</span><span
																data-action="selectDecade" class="decade"
																data-selection="2076">2070</span><span
																data-action="selectDecade" class="decade"
																data-selection="2086">2080</span><span
																data-action="selectDecade" class="decade"
																data-selection="2096">2090</span><span
																data-action="selectDecade" class="decade old"
																data-selection="2106">2100</span></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div></li>
									<li class="picker-switch accordion-toggle"></li>
								</ul>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		</div>


	</div>
	
	<%--켈린더 시작 --%>
	<div class="main">
		<div class="card bg-gradient-success"
			style="position: relative; left: 0px; top: 0px;">
			<div class="card-header border-0 ui-sortable-handle"
				style="cursor: move;">
				<h3 class="card-title">
					<i class="far fa-calendar-alt"></i> Calendar
				</h3>

				<div class="card-tools">

					<div class="btn-group">
						<button type="button"
							class="btn btn-success btn-sm dropdown-toggle"
							data-toggle="dropdown" data-offset="-52" aria-expanded="false">
							<i class="fas fa-bars"></i>
						</button>
						<div class="dropdown-menu" role="menu" style="">
							<a href="#" class="dropdown-item">Add new event</a> <a href="#"
								class="dropdown-item">Clear events</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item">View calendar</a>
						</div>
					</div>
					<button type="button" class="btn btn-success btn-sm"
						data-card-widget="collapse">
						<i class="fas fa-minus"></i>
					</button>
					<button type="button" class="btn btn-success btn-sm"
						data-card-widget="remove">
						<i class="fas fa-times"></i>
					</button>
				</div>

			</div>

			<div class="card-body pt-0" style="display: block;">

				<div id="calendar" style="width: 100%">
					<div class="bootstrap-datetimepicker-widget usetwentyfour">
						<ul class="list-unstyled">
							<li class="show"><div class="datepicker">
									<div class="datepicker-days" style="">
										<table class="table table-sm">
											<thead>
												<tr>
													<th class="prev" data-action="previous"><span
														class="fa fa-chevron-left" title="Previous Month"></span></th>
													<th class="picker-switch" data-action="pickerSwitch"
														colspan="5" title="Select Month">October 2023</th>
													<th class="next" data-action="next"><span
														class="fa fa-chevron-right" title="Next Month"></span></th>
												</tr>
												<tr>
													<th class="dow">Su</th>
													<th class="dow">Mo</th>
													<th class="dow">Tu</th>
													<th class="dow">We</th>
													<th class="dow">Th</th>
													<th class="dow">Fr</th>
													<th class="dow">Sa</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td data-action="selectDay" data-day="10/01/2023"
														class="day weekend">1</td>
													<td data-action="selectDay" data-day="10/02/2023"
														class="day">2</td>
													<td data-action="selectDay" data-day="10/03/2023"
														class="day">3</td>
													<td data-action="selectDay" data-day="10/04/2023"
														class="day">4</td>
													<td data-action="selectDay" data-day="10/05/2023"
														class="day">5</td>
													<td data-action="selectDay" data-day="10/06/2023"
														class="day">6</td>
													<td data-action="selectDay" data-day="10/07/2023"
														class="day weekend">7</td>
												</tr>
												<tr>
													<td data-action="selectDay" data-day="10/08/2023"
														class="day weekend">8</td>
													<td data-action="selectDay" data-day="10/09/2023"
														class="day">9</td>
													<td data-action="selectDay" data-day="10/10/2023"
														class="day">10</td>
													<td data-action="selectDay" data-day="10/11/2023"
														class="day active">11</td>
													<td data-action="selectDay" data-day="10/12/2023"
														class="day">12</td>
													<td data-action="selectDay" data-day="10/13/2023"
														class="day">13</td>
													<td data-action="selectDay" data-day="10/14/2023"
														class="day weekend">14</td>
												</tr>
												<tr>
													<td data-action="selectDay" data-day="10/15/2023"
														class="day weekend">15</td>
													<td data-action="selectDay" data-day="10/16/2023"
														class="day">16</td>
													<td data-action="selectDay" data-day="10/17/2023"
														class="day">17</td>
													<td data-action="selectDay" data-day="10/18/2023"
														class="day">18</td>
													<td data-action="selectDay" data-day="10/19/2023"
														class="day">19</td>
													<td data-action="selectDay" data-day="10/20/2023"
														class="day">20</td>
													<td data-action="selectDay" data-day="10/21/2023"
														class="day weekend">21</td>
												</tr>
												<tr>
													<td data-action="selectDay" data-day="10/22/2023"
														class="day weekend">22</td>
													<td data-action="selectDay" data-day="10/23/2023"
														class="day">23</td>
													<td data-action="selectDay" data-day="10/24/2023"
														class="day">24</td>
													<td data-action="selectDay" data-day="10/25/2023"
														class="day">25</td>
													<td data-action="selectDay" data-day="10/26/2023"
														class="day">26</td>
													<td data-action="selectDay" data-day="10/27/2023"
														class="day">27</td>
													<td data-action="selectDay" data-day="10/28/2023"
														class="day weekend">28</td>
												</tr>
												<tr>
													<td data-action="selectDay" data-day="10/29/2023"
														class="day weekend">29</td>
													<td data-action="selectDay" data-day="10/30/2023"
														class="day">30</td>
													<td data-action="selectDay" data-day="10/31/2023"
														class="day">31</td>
													<td data-action="selectDay" data-day="11/01/2023"
														class="day new">1</td>
													<td data-action="selectDay" data-day="11/02/2023"
														class="day new">2</td>
													<td data-action="selectDay" data-day="11/03/2023"
														class="day new">3</td>
													<td data-action="selectDay" data-day="11/04/2023"
														class="day new weekend">4</td>
												</tr>
												<tr>
													<td data-action="selectDay" data-day="11/05/2023"
														class="day new weekend">5</td>
													<td data-action="selectDay" data-day="11/06/2023"
														class="day new">6</td>
													<td data-action="selectDay" data-day="11/07/2023"
														class="day new">7</td>
													<td data-action="selectDay" data-day="11/08/2023"
														class="day new">8</td>
													<td data-action="selectDay" data-day="11/09/2023"
														class="day new">9</td>
													<td data-action="selectDay" data-day="11/10/2023"
														class="day new">10</td>
													<td data-action="selectDay" data-day="11/11/2023"
														class="day new weekend">11</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="datepicker-months" style="display: none;">
										<table class="table-condensed">
											<thead>
												<tr>
													<th class="prev" data-action="previous"><span
														class="fa fa-chevron-left" title="Previous Year"></span></th>
													<th class="picker-switch" data-action="pickerSwitch"
														colspan="5" title="Select Year">2023</th>
													<th class="next" data-action="next"><span
														class="fa fa-chevron-right" title="Next Year"></span></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td colspan="7"><span data-action="selectMonth"
														class="month">Jan</span><span data-action="selectMonth"
														class="month">Feb</span><span data-action="selectMonth"
														class="month">Mar</span><span data-action="selectMonth"
														class="month">Apr</span><span data-action="selectMonth"
														class="month">May</span><span data-action="selectMonth"
														class="month">Jun</span><span data-action="selectMonth"
														class="month">Jul</span><span data-action="selectMonth"
														class="month">Aug</span><span data-action="selectMonth"
														class="month">Sep</span><span data-action="selectMonth"
														class="month active">Oct</span><span
														data-action="selectMonth" class="month">Nov</span><span
														data-action="selectMonth" class="month">Dec</span></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="datepicker-years" style="display: none;">
										<table class="table-condensed">
											<thead>
												<tr>
													<th class="prev" data-action="previous"><span
														class="fa fa-chevron-left" title="Previous Decade"></span></th>
													<th class="picker-switch" data-action="pickerSwitch"
														colspan="5" title="Select Decade">2020-2029</th>
													<th class="next" data-action="next"><span
														class="fa fa-chevron-right" title="Next Decade"></span></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td colspan="7"><span data-action="selectYear"
														class="year old">2019</span><span data-action="selectYear"
														class="year">2020</span><span data-action="selectYear"
														class="year">2021</span><span data-action="selectYear"
														class="year">2022</span><span data-action="selectYear"
														class="year active">2023</span><span
														data-action="selectYear" class="year">2024</span><span
														data-action="selectYear" class="year">2025</span><span
														data-action="selectYear" class="year">2026</span><span
														data-action="selectYear" class="year">2027</span><span
														data-action="selectYear" class="year">2028</span><span
														data-action="selectYear" class="year">2029</span><span
														data-action="selectYear" class="year old">2030</span></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="datepicker-decades" style="display: none;">
										<table class="table-condensed">
											<thead>
												<tr>
													<th class="prev" data-action="previous"><span
														class="fa fa-chevron-left" title="Previous Century"></span></th>
													<th class="picker-switch" data-action="pickerSwitch"
														colspan="5">2000-2090</th>
													<th class="next" data-action="next"><span
														class="fa fa-chevron-right" title="Next Century"></span></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td colspan="7"><span data-action="selectDecade"
														class="decade old" data-selection="2006">1990</span><span
														data-action="selectDecade" class="decade"
														data-selection="2006">2000</span><span
														data-action="selectDecade" class="decade"
														data-selection="2016">2010</span><span
														data-action="selectDecade" class="decade active"
														data-selection="2026">2020</span><span
														data-action="selectDecade" class="decade"
														data-selection="2036">2030</span><span
														data-action="selectDecade" class="decade"
														data-selection="2046">2040</span><span
														data-action="selectDecade" class="decade"
														data-selection="2056">2050</span><span
														data-action="selectDecade" class="decade"
														data-selection="2066">2060</span><span
														data-action="selectDecade" class="decade"
														data-selection="2076">2070</span><span
														data-action="selectDecade" class="decade"
														data-selection="2086">2080</span><span
														data-action="selectDecade" class="decade"
														data-selection="2096">2090</span><span
														data-action="selectDecade" class="decade old"
														data-selection="2106">2100</span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div></li>
							<li class="picker-switch accordion-toggle"></li>
						</ul>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div class="main">

		<%--bImg --%>

		<hr>
		<div class="imgDiv">
			<div
				class="swiper mySwiper swiper-initialized swiper-horizontal swiper-pointer-events swiper-backface-hidden">
				<div class="swiper-wrapper" id="swiper-wrapper-bebb55d6f31b0105d"
					aria-live="polite"
					style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
					<div class="swiper-slide">
						<div>
							<img class="Img bImg shadow shadow" src="../image/방1.jfif">
						</div>
						<div>
							<p>하얀색 방1</p>

						</div>
					</div>
					<div class="swiper-slide">
						<div>
							<img class="Img bImg shadow" src="../image/방2.jfif">
						</div>
						<div>
							텍스트2<br> 설명이 요래저래 <br> 저래요래
						</div>
					</div>
					<div class="swiper-slide">
						<div>
							<img class="Img bImg shadow" src="../image/방5.jfif">
						</div>
						<div>
							텍스트3<br> 설명이 요래저래 <br> 저래요래
						</div>
					</div>
					<div class="swiper-slide">
						<div>
							<img class="Img bImg shadow" src="../image/방6.jfif">
						</div>
						<div>
							텍스트4<br> 설명이 요래저래 <br> 저래요래
						</div>
					</div>
					<div class="swiper-slide">
						<div>
							<img class="Img bImg shadow" src="../image/방7.jfif">
						</div>
						<div>
							텍스트5<br> 설명이 요래저래 <br> 저래요래
						</div>
					</div>
				</div>
				<div class="swiper-button-next"></div>
				<div class="swiper-button-prev"></div>
			</div>
			<hr>
			<%--sImg --%>
			<div
				class="swiper mySwiper swiper-initialized swiper-horizontal swiper-pointer-events swiper-backface-hidden">
				<div class="swiper-wrapper" id="swiper-wrapper-bebb55d6f31b0105d"
					aria-live="polite"
					style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
					<div class="swiper-slide">
						<div>
							<img class="Img sImg" src="../image/방1.jfif">
						</div>
						<div>
							텍스트1<br> 설명이 요래저래 <br> 저래요래
						</div>
					</div>
					<div class="swiper-slide">
						<div>
							<img class="Img sImg" src="../image/방2.jfif">
						</div>
						<div>
							텍스트2<br> 설명이 요래저래 <br> 저래요래
						</div>
					</div>
					<div class="swiper-slide">
						<div>
							<img class="Img sImg" src="../image/방3.jfif">
						</div>
						<div>
							텍스트3<br> 설명이 요래저래 <br> 저래요래
						</div>
					</div>
					<div class="swiper-slide">
						<div>
							<img class="Img sImg" src="../image/방4.jfif">
						</div>
						<div>
							텍스트4<br> 설명이 요래저래 <br> 저래요래
						</div>
					</div>
					<div class="swiper-slide">
						<div>
							<img class="Img sImg" src="../image/방5.jfif">
						</div>
						<div>
							텍스트5<br> 설명이 요래저래 <br> 저래요래
						</div>
					</div>
					<div class="swiper-slide">
						<div>
							<img class="Img sImg" src="../image/방6.jfif">
						</div>
						<div>
							텍스트6<br> 설명이 요래저래 <br> 저래요래
						</div>
					</div>
					<div class="swiper-slide">
						<div>
							<img class="Img sImg" src="../image/방7.jfif">
						</div>
						<div>
							텍스트7<br> 설명이 요래저래 <br> 저래요래
						</div>
					</div>
				</div>
				<div class="swiper-button-next"></div>
				<div class="swiper-button-prev"></div>
			</div>
			<hr>
			<%--광고 배너 이미지 슬라이드 --%>
			<div>
				<img class="slide1" src="../image/다운로드.jfif" id="1"> <img
					class="slide1" src="../image/다운로드2.jfif" id="2"> <img
					class="slide1" src="../image/다운로드3.jfif" id="3">
			</div>
		</div>


		<%--modal1 --%>
		<div id="maps">
			<div class="popup-wrap" id="popup">
				<div id="modal">
					<div class="popup-head">
						<span class="pop-close" id="close"
							style="width: 10%; font: caption;">
							<button type="button">X</button>
						</span>
						<h4 style="width: 90%">내 위치 지정</h4>
					</div>
					<div class="popup-body">
						<button id="myAddrSearch">
							<div class="popup-body-menu">
								<i>현 위치 / </i> 현위치로 재검색
							</div>
						</button>
						<button id="mapAddrSearch">
							<div class="popup-body-menu">
								<i>지도 / </i> 지도로 위치검색
							</div>
						</button>
					</div>
				</div>
			</div>
		</div>

		<%--modal2 --%>
		<div id="maps">
			<div class="popup-wrap2" id="popup-map">
				<header style="width: 100%; height: 3.5rem; background: white;">
					<div style="text-align: center">
						<span class="pop-close2" id="close2">
							<button type="button">X</button>
						</span> <font>지도로 위치 지정</font>
						<button type="button" id="search2">
							<i class="fas fa-search"></i>
						</button>
						<button type="button" id="home">집</button>
					</div>
				</header>
				<div id="modal2">
					<div class="modal2-address">
						<i style="display: inlin-block"> => </i><span id="test1"
							style="display: inlin-block">test</span>
					</div>
					<div id="map" style="width: 60rem; height: 100%;"></div>
					<button type="button" id="mapSearchResult">위치 지정 완료</button>
				</div>
			</div>
		</div>
		
		<div id="modal3">
			
		</div>


		<jsp:include page="pooter.jsp" />
	</div>
	<script src="../plugins/summernote/summernote-bs4.min.js"></script>
</body>
</html>