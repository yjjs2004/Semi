<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>TEST</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&amp;display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
<style type="text/css">/* Chart.js */
@keyframes chartjs-render-animation {
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

.mainDiv{
	width: 100%;
	text-align: center;	
	
}

.subDiv{
	display: inline-block;
	width: 50%; 
}
</style>
<jsp:include page="header.jsp" />
</head>

<body>
<div class="mainDiv">
	<div class="subDiv">
		<div class="card-header border-0 ui-sortable-handle"
			style="cursor: move;">

			<h3 class="card-title">
				<i class="far fa-calendar-alt"></i> Calendar.
			</h3>
			<!-- tools card -->
			<div class="card-tools">
				<!-- button with a dropdown -->
				<div class="btn-group">
					<button type="button"
						class="btn btn-success btn-sm dropdown-toggle"
						data-toggle="dropdown" data-offset="-52">
						<i class="fas fa-bars"></i>
					</button>
					<div class="dropdown-menu" role="menu">
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
			<!-- /. tools -->
		</div>
		<!-- /.card-header -->
		<div class="card-body pt-0">
			<!--The calendar -->
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
													colspan="5" title="Select Month">January 2022</th>
												<th class="next" data-action="next"><span
													class="fa fa-chevron-right" title="Next Month"></span></th>
											</tr>
											<tr>
												<th class="dow">일</th>
												<th class="dow">월</th>
												<th class="dow">화</th>
												<th class="dow">수</th>
												<th class="dow">목</th>
												<th class="dow">금</th>
												<th class="dow">토</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td data-action="selectDay" data-day="12/26/2021"
													class="day old weekend">26</td>
												<td data-action="selectDay" data-day="12/27/2021"
													class="day old">27</td>
												<td data-action="selectDay" data-day="12/28/2021"
													class="day old">28</td>
												<td data-action="selectDay" data-day="12/29/2021"
													class="day old">29</td>
												<td data-action="selectDay" data-day="12/30/2021"
													class="day old">30</td>
												<td data-action="selectDay" data-day="12/31/2021"
													class="day old">31</td>
												<td data-action="selectDay" data-day="01/01/2022"
													class="day weekend">1</td>
											</tr>
											<tr>
												<td data-action="selectDay" data-day="01/02/2022"
													class="day weekend">2</td>
												<td data-action="selectDay" data-day="01/03/2022"
													class="day">3</td>
												<td data-action="selectDay" data-day="01/04/2022"
													class="day">4</td>
												<td data-action="selectDay" data-day="01/05/2022"
													class="day">5</td>
												<td data-action="selectDay" data-day="01/06/2022"
													class="day">6</td>
												<td data-action="selectDay" data-day="01/07/2022"
													class="day">7</td>
												<td data-action="selectDay" data-day="01/08/2022"
													class="day weekend">8</td>
											</tr>
											<tr>
												<td data-action="selectDay" data-day="01/09/2022"
													class="day weekend">9</td>
												<td data-action="selectDay" data-day="01/10/2022"
													class="day">10</td>
												<td data-action="selectDay" data-day="01/11/2022"
													class="day">11</td>
												<td data-action="selectDay" data-day="01/12/2022"
													class="day">12</td>
												<td data-action="selectDay" data-day="01/13/2022"
													class="day">13</td>
												<td data-action="selectDay" data-day="01/14/2022"
													class="day">14</td>
												<td data-action="selectDay" data-day="01/15/2022"
													class="day weekend">15</td>
											</tr>
											<tr>
												<td data-action="selectDay" data-day="01/16/2022"
													class="day weekend">16</td>
												<td data-action="selectDay" data-day="01/17/2022"
													class="day">17</td>
												<td data-action="selectDay" data-day="01/18/2022"
													class="day">18</td>
												<td data-action="selectDay" data-day="01/19/2022"
													class="day">19</td>
												<td data-action="selectDay" data-day="01/20/2022"
													class="day">20</td>
												<td data-action="selectDay" data-day="01/21/2022"
													class="day">21</td>
												<td data-action="selectDay" data-day="01/22/2022"
													class="day weekend">22</td>
											</tr>
											<tr>
												<td data-action="selectDay" data-day="01/23/2022"
													class="day weekend">23</td>
												<td data-action="selectDay" data-day="01/24/2022"
													class="day">24</td>
												<td data-action="selectDay" data-day="01/25/2022"
													class="day">25</td>
												<td data-action="selectDay" data-day="01/26/2022"
													class="day">26</td>
												<td data-action="selectDay" data-day="01/27/2022"
													class="day">27</td>
												<td data-action="selectDay" data-day="01/28/2022"
													class="day active today">28</td>
												<td data-action="selectDay" data-day="01/29/2022"
													class="day weekend">29</td>
											</tr>
											<tr>
												<td data-action="selectDay" data-day="01/30/2022"
													class="day weekend">30</td>
												<td data-action="selectDay" data-day="01/31/2022"
													class="day">31</td>
												<td data-action="selectDay" data-day="02/01/2022"
													class="day new">1</td>
												<td data-action="selectDay" data-day="02/02/2022"
													class="day new">2</td>
												<td data-action="selectDay" data-day="02/03/2022"
													class="day new">3</td>
												<td data-action="selectDay" data-day="02/04/2022"
													class="day new">4</td>
												<td data-action="selectDay" data-day="02/05/2022"
													class="day new weekend">5</td>
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
													colspan="5" title="Select Year">2022</th>
												<th class="next" data-action="next"><span
													class="fa fa-chevron-right" title="Next Year"></span></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="7"><span data-action="selectMonth"
													class="month active">Jan</span><span
													data-action="selectMonth" class="month">Feb</span><span
													data-action="selectMonth" class="month">Mar</span><span
													data-action="selectMonth" class="month">Apr</span><span
													data-action="selectMonth" class="month">May</span><span
													data-action="selectMonth" class="month">Jun</span><span
													data-action="selectMonth" class="month">Jul</span><span
													data-action="selectMonth" class="month">Aug</span><span
													data-action="selectMonth" class="month">Sep</span><span
													data-action="selectMonth" class="month">Oct</span><span
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
													class="year active">2022</span><span
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
		<!-- /.card-body -->
	</div>

	<div class="subDiv">
		<div>
			<img src = "image/방1.jfif" width="49%" height="500px">
			<img src = "image/방2.jfif" width="49%" height="500px">
		</div>			
	</div>
	<hr>
	<div class="subDiv">
		<div>
			<img src = "image/방3.jpg" width="24.5%" height="300px">
			<img src = "image/방4.jpg" width="24.5%" height="300px">
			<img src = "image/방3.jpg" width="24.5%" height="300px">
			<img src = "image/방4.jpg" width="24.5%" height="300px">
		</div>
	</div>
	<hr>	
	<script src = "js/slideShow.js"></script>
	<div> <%--광고 배너 틀 --%>
		<div class="subDiv"> <%--광고 배너 이미지 슬라이드 --%>
			<img class="slide1" src = "image/다운로드.jfif" width="100%" height="200px">
			<img class="slide1" src = "image/다운로드2.jfif" width="100%" height="200px">
			<img class="slide1" src = "image/다운로드3.jfif" width="100%" height="200px">
		</div>
	</div>
	<jsp:include page="pooter.jsp" />
	</div>
</body>
</html>