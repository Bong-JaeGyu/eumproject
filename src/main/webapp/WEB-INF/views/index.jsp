<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>SmartEDU - Education Responsive</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">




<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="style.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<!-- Modernizer for Portfolio -->
<script src="js/modernizer.js"></script>

<script src="https://cdn.jsdelivr.net/npm/vue"></script>
<script src="https://unpkg.com/vue-router/dist/vue-router.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/vue-resource/1.5.1/vue-resource.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script>
	Vue.config.devtools = true;
</script>
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body class="host_version">

<%-- 	<%=session.getAttribute("id")%>

	<div id="app11" v-bind="message">{{ message }}님</div>




	<script>
		var app11 = new Vue({
			el : '#app11',
			data : {
				message : '로그인 안됨'
			}
		})
	</script> --%>

	<!-- Modal -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-dialog-centered modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header tit-up">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Member Login</h4>
				</div>
				<div class="modal-body customer-box">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs">
						<li><a class="active" href="#Login" data-toggle="tab">로그인</a></li>
						<li><a href="#Registration" data-toggle="tab">가입하기</a></li>
						
						<li><a href="#Registration2" data-toggle="tab">추가정보</a></li>


					</ul>
					<!-- Tab panes -->
					<div class="tab-content" id="loginmodal">
						<div class="tab-pane active" id="Login">
						
						
							<form role="form" class="form-horizontal" action="#">
								<div class="form-group">
									<div class="col-sm-12">

										<input class="form-control" v-model="member_id" id="email1"
											name="member_id" placeholder="아이디" type="text">
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-12">
										<!-- <input class="form-control" id="exampleInputPassword1" name="exampleInputPassword1" placeholder="비밀번호" type="text"> -->
										<input class="form-control" v-model="member_pw"
											id="exampleInputPassword1" name="member_pw"
											placeholder="비밀번호" type="text">
									</div>
								</div>
								
								<div class="row">
									<div class="col-sm-10">


										<button v-on:click="logingo" type="button"
											class="btn btn-light btn-radius btn-brd grd1">접속하기</button>
											
											
										<a class="for-pwd" href="javascript:;" >{{result}}</a>
									</div>
								</div>
								
								
							</form>
						</div>




						<div class="tab-pane" id="Registration">

								<div class="form-group" style="text-align: center">
									<div class="col-sm-12">
										회원 유형 : <input type="radio" v-model="mentor" name="mentor" value=1 checked="checked"
											> 멘티 <input type="radio" name="mentor"
											v-model="mentor" value=2> 멘토

									</div>
									<br>

									<div class="form-group">
										<div class="col-sm-12">
											<input class="form-control" v-model="user_name" placeholder="이름" type="text">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12">
											<input class="form-control" v-model="user_id" id="email" placeholder="아이디"
												type="text">
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-12">
											<input class="form-control" id="password" v-model="user_pw" placeholder="비밀번호"
												type="password">
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-12">
											<input class="form-control" v-model="user_pw_cf" id="password_cf"
												placeholder="비밀번호확인" type="password">
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-12">
											<input class="form-control" id="mobile" v-model="user_tel" placeholder="전화번호"
												type="text">
										</div>
									</div>


								</div>



								<div class="row">
									<div class="col-sm-10">

					
										<button type="button"
											class="btn btn-light btn-radius btn-brd grd1">취소</button>
									</div>
								</div>
								
								
								<!-- 	<ul class="nav nav-tabs">
						<li><a class="active" href="#Registration2" data-toggle="tab">추가정보</a></li>
						<li><a href="#" data-toggle="tab">취소</a></li>
								</ul> -->
								
								
								
								
								
						</div>

						<div class="tab-pane" id="Registration2">


							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="user_birthday"
										placeholder="생년월일" name="user_birthday" v-model="user_birthday" type="date">
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="job" v-model="job"  placeholder="직업 or 학교"
										name="job" type="text">
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="career" v-model="user_career" placeholder="경력 or 학년"
										name="career" type="text">
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-12">
									<input type="file" class="form-control" id="user_img"
										placeholder="사진" name="user_img">


								</div>
							</div>

							<div class="row">
									<div class="col-sm-10">


								

										<button v-on:click="joingo" type="button"
											class="btn btn-light btn-radius btn-brd grd1">가입하기</button>
											
											
									<button type="button"
											class="btn btn-light btn-radius btn-brd grd1">취소</button>
									</div>
								</div>
							
							
							
							
						</div>



					</div>
				</div>
			</div>
		</div>
	</div>


	<script>
		var vm2 = new Vue({
			el : "#loginmodal",
			data : {
				member_id : '',
				member_pw : '',
				user_id :'',
				user_pw :'',
				job : '',
				user_pw_cf :'',
				user_tel :'',
				user_name :'',
				user_birthday:'',
				user_career:'',
				user_img:'',
				mentor:'',	
				result:''
			},

			methods : {

				logingo : function(e) {


					/*     					axios.get('http://localhost:8080/eumproject/logingo.do', param)
					 .then(function(response) {
					 console.log(response);
					
					 }); */

					/* 						axios({
					
					 url: 'http://localhost:8080/eumproject/logingo.do?member_id=999&member_pw=888',
					 method: 'get',
					 data: {
					 member_id: 'Siberian Husky',
					 member_pw: 'Siberian Husky'
					 }
					 }) */

					axios.get('logingo.do', {
						params : {
							member_id : this.member_id,
							member_pw : this.member_pw
						}

					}).then(function(data) {
						console.log(data);
						console.log(data.data);
						if (data.data == 1) {
							console.log("로그인 실패");
						
							vm2.$data.result = "아이디 또는 비밀번호가 잘못됐습니다";
							
							
						}else {
							
							console.log("로그인 성공");
							$('#login').modal('toggle'); 
							alert("로그인 성공!!!!");
							$("#login_out1").css('display','none');
							$("#login_out2").css('display','inline');
						
							
							
						}
					})

				}, //logingo 끝
				joingo : function(e) {

	

				axios.get('joingo.do', {
					params : {
						user_id :this.user_id,
						user_pw :this.user_pw,
						job : this.job,
						user_pw_cf :this.user_pw_cf,
						user_tel :this.user_tel,
						user_name :this.user_name,
						user_birthday:this.user_birthday,
						user_career:this.user_career,
						user_img:this.user_img,
						mentor:this.mentor
						
					}

				}).then(function(data) {
					console.log(data);
					console.log(data.data);
					if (data.data == 1) {
						
						alert("가입실패");
						
						
						
					}else {
						
						  
						$('#login').modal('toggle'); 
						alert("가입 성공!!!! 다시 로그인 해주세요");
						
					}
				})

			} //logingo 끝
			
			
			} //methods 끝
			

		})// vue vm2 끝
		
		
		
	</script>






	<!-- LOADER -->
	<div id="preloader">
		<div class="loader-container">
			<div class="progress-br float shadow">
				<div class="progress__item"></div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->

	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="index.do"> <img id="logo"
					src="images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbars-host" aria-controls="navbars-rs-food"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-host">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link"
							href="index.do">메인</a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">MLOG</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="careerApi.do" id="dropdown-a"
							data-toggle="dropdown">진로정보</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="careerApi.do">진로심리검사</a> <a
									class="dropdown-item" href="careerApi.do">학과정보</a> <a
									class="dropdown-item" href="careerApi.do">정보찾기</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="dropdown-a"
							data-toggle="dropdown">멘토찾기</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="blog.html">Blog </a> <a
									class="dropdown-item" href="blog-single.html">Blog single </a>
							</div></li>
						<li class="nav-item"><a class="nav-link" href="mypage.do">마이페이지</a></li>

					</ul>
					<ul class="nav navbar-nav navbar-right" >
					
					
							<li id="login_out1"><a class="hover-btn-new log orange" href="#"
									data-toggle="modal" data-target="#login"><span>login</span></a></li>
									<li id="login_out2"><a class="hover-btn-new log orange" href="loginout.do"
							><span>logout</span></a></li>
						
					

					</ul>
					
					
					
					
			
						
					
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

	<div id="carouselExampleControls"
		class="carousel slide bs-slider box-slider" data-ride="carousel"
		data-pause="hover" data-interval="false">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleControls" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleControls" data-slide-to="1"></li>
			<li data-target="#carouselExampleControls" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active">
				<div id="home" class="first-section"
					style="background-image: url('images/slider-01.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-right">
									<div class="big-tagline">
										<h2>
											<strong>이음</strong> 진로 멘토링
										</h2>
										<p class="lead">
											이음은 장소에 제약없이 다양한 직업군 ,대학생을 멘토로하여 학생들과 온라인으로 연결해주어 학생들로 하여금
											다양한 직업군이나 대학생 <br>멘토들에게 정보를 얻어 자신의 진로를 형성하는데 도움을 주는
											사이트입니다.
										</p>
										<a href="#" class="hover-btn-new" data-toggle="modal" data-target="#login"><span>가입하기</span></a>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#"
											class="hover-btn-new"><span>자세히 보기</span></a>
									</div>
								</div>
							</div>
							<!-- end row -->
						</div>
						<!-- end container -->
					</div>
				</div>
				<!-- end section -->
			</div>
			<div class="carousel-item">
				<div id="home" class="first-section"
					style="background-image: url('images/slider-02.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-left">
									<div class="big-tagline">
										<h2 data-animation="animated zoomInRight">
											SmartEDU <strong>education school</strong>
										</h2>
										<p class="lead" data-animation="animated fadeInLeft">With
											Landigoo responsive landing page template, you can promote
											your all hosting, domain and email services.</p>
										<a href="#" class="hover-btn-new"><span>Contact Us</span></a>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#"
											class="hover-btn-new"><span>Read More</span></a>
									</div>
								</div>
							</div>
							<!-- end row -->
						</div>
						<!-- end container -->
					</div>
				</div>
				<!-- end section -->
			</div>
			<div class="carousel-item">
				<div id="home" class="first-section"
					style="background-image: url('images/slider-03.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-center">
									<div class="big-tagline">
										<h2 data-animation="animated zoomInRight">
											<strong>VPS Servers</strong> Company
										</h2>
										<p class="lead" data-animation="animated fadeInLeft">1 IP
											included with each server Your Choice of any OS (CentOS,
											Windows, Debian, Fedora) FREE Reboots</p>
										<a href="#" class="hover-btn-new"><span>Contact Us</span></a>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#"
											class="hover-btn-new"><span>Read More</span></a>
									</div>
								</div>
							</div>
							<!-- end row -->
						</div>
						<!-- end container -->
					</div>
				</div>
				<!-- end section -->
			</div>
			<!-- Left Control -->
			<a class="new-effect carousel-control-prev"
				href="#carouselExampleControls" role="button" data-slide="prev">
				<span class="fa fa-angle-left" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a>

			<!-- Right Control -->
			<a class="new-effect carousel-control-next"
				href="#carouselExampleControls" role="button" data-slide="next">
				<span class="fa fa-angle-right" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>





	<div id="overviews" class="section wb">
		<div class="container">
			<div class="section-title row text-center">
				<div class="col-md-8 offset-md-2">
					<h3>추천멘토</h3>
					<p class="lead">여러분들에게 추천하는 이달의 멘토입니다!</p>
				</div>
			</div>
			<!-- end title -->

			<div class="row align-items-center">
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
					<div class="message-box">
						<h4>갑부중에 갑</h4>
						<h2>빌게이츠</h2>
						<p>윌리엄 헨리 "빌" 게이츠 3세(영어: William Henry "Bill" Gates III, 1955년
							10월 28일 ~ )는 미국의 마이크로소프트 설립자이자, 기업인이다.</p>

						<p>저는 "아빠, 나는 언젠간 학교에 돌아갈 것이고 졸업장을 받을 거라고 항상 말했었잖아요."라는 이 말을
							하기 위해 30년 이상을 기다려왔습니다. 잠시 생각해보십시오. 여러분이 일주일에 몇 시간 혹은 한 달에 몇 달러를
							어딘가 기부하기 위한 준비가 되어 있고 또한 당신이 그 시간이나 돈이 어딘가에서 생명을 구하고 삶의 질을 극적으로
							개선할 수 있는 곳에 사용되기 원한다면 그곳은 어디일까요? 아직 저는 낙관론자입니다. 불평등은 우리와 영원히 함께
							있을 것입니다. 그러나 복잡성을 무너뜨리는 새로운 방법들은 이제 나온 것들이며 그 방법들은 우리가 우리의 관심을
							극대화할 수 있도록 도와줄 것입니다. 그리고 그로 인해 앞으로의 미래는 과거와는 다를 것입니다.</p>

						<a href="#" class="hover-btn-new orange"><span>MLOG</span></a>
					</div>
					<!-- end messagebox -->
				</div>
				<!-- end col -->

				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
					<div class="post-media wow fadeIn">
						<img src="images/recommend01.jpg" alt=""
							class="img-fluid img-rounded">
					</div>
					<!-- end media -->
				</div>
				<!-- end col -->
			</div>
			<div class="row align-items-center">
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
					<div class="post-media wow fadeIn">
						<img src="images/recommend02.jpg" alt=""
							class="img-fluid img-rounded">
					</div>
					<!-- end media -->
				</div>
				<!-- end col -->

				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
					<div class="message-box">
						<h4>축구 잘하는 우리형</h4>
						<h2>호날두</h2>
						<p>UEFA 챔피언스 리그와 레알 마드리드 역사상 최다 득점자이자 현역 선수 중 최다 득점자이며, 발롱도르
							최다 수상자[22]로 리오넬 메시와 함께 21세기 세계 축구계를 양분하고 있는 축구 역사상 최고의 선수 중 한
							명이다.</p>

						<p>호날두는 전설적인 선수이며, 축구 역사상 최고의 선수이다. 호날두는 아틀레티코전에서 그것을 증명해보였다.
							마치 외계인 같다. 레알 마드리드는 호날두 없이는 많은 업적을 세우지 못했을 것이다. 호날두는 이제 유벤투스에서
							역사를 써내려가고 있다."</p>

						<a href="#" class="hover-btn-new orange"><span>MLOG</span></a>
					</div>
					<!-- end messagebox -->
				</div>
				<!-- end col -->

			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->



	<div class="section cl">
		<div class="container">
			<div class="row text-left stat-wrap">
				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll
						class="global-radius icon_wrap effect-1 alignleft"><i
						class="flaticon-study"></i></span>
					<p class="stat_count">12000</p>
					<h3>등록 멘티</h3>
				</div>
				<!-- end col -->

				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll
						class="global-radius icon_wrap effect-1 alignleft"><i
						class="flaticon-online"></i></span>
					<p class="stat_count">1000</p>
					<h3>등록 멘토</h3>
				</div>
				<!-- end col -->

				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll
						class="global-radius icon_wrap effect-1 alignleft"><i
						class="flaticon-years"></i></span>
					<p class="stat_count">30000</p>
					<h3>등록 MLOGGING</h3>
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->







	<section class="section lb page-section">
		<div class="container">
			<div class="section-title row text-center">
				<div class="col-md-8 offset-md-2">
					<h3>MLOG 인기글</h3>
					<!-- <p class="lead">Lorem Ipsum dolroin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem!</p> -->
				</div>






				<div id="overviews" class="section wb">
					<div class="container">
						<div class="section-title row text-center">
							<div class="col-md-8 offset-md-2">
								<p class="lead">요즘 MLOG에서 인기있는 글입니다. 관심있는 글을 확인해 보세요~</p>
							</div>
						</div>
						<!-- end title -->

						<hr class="invis">

						<div class="row">
							<div class="col-lg-4 col-md-6 col-12">
								<div class="blog-item">
									<div class="image-blog">
										<img src="images/blog_1.jpg" alt="" class="img-fluid">
									</div>
									<div class="meta-info-blog">
										<span><i class="fa fa-calendar"></i> <a href="#">May
												02, 2019</a> </span> <span><i class="fa fa-tag"></i> <a href="#">News</a>
										</span> <span><i class="fa fa-comments"></i> <a href="#">12
												Comments</a></span>
									</div>
									<div class="blog-title">
										<h2>
											<a href="#" title="">눈술 준비를 위한 A-Z</a>
										</h2>
									</div>
									<div class="blog-desc">
										<p>눈술 준비를 위한 A-Z 논술의 기본. 1. 논술에 대한 마인드 / 2. 논술의 핵심 원리 / 3.
											논술을 준비하는 방법﻿ / 4. 논술 시험장에서. 말로만 들었는데, 막상 겪으니 정말 '멘붕'이
											오는군요....</p>
									</div>
									<div class="blog-button">
										<a class="hover-btn-new orange" href="#"><span>읽어보기<span></a>
									</div>
								</div>
							</div>
							<!-- end col -->

							<div class="col-lg-4 col-md-6 col-12">
								<div class="blog-item">
									<div class="image-blog">
										<img src="images/blog_2.jpg" alt="" class="img-fluid">
									</div>
									<div class="meta-info-blog">
										<span><i class="fa fa-calendar"></i> <a href="#">May
												02, 2019</a> </span> <span><i class="fa fa-tag"></i> <a href="#">News</a>
										</span> <span><i class="fa fa-comments"></i> <a href="#">12
												Comments</a></span>
									</div>
									<div class="blog-title">
										<h2>
											<a href="#" title="">눈술 준비를 위한 A-Z</a>
										</h2>
									</div>
									<div class="blog-desc">
										<p>눈술 준비를 위한 A-Z 논술의 기본. 1. 논술에 대한 마인드 / 2. 논술의 핵심 원리 / 3.
											논술을 준비하는 방법﻿ / 4. 논술 시험장에서. 말로만 들었는데, 막상 겪으니 정말 '멘붕'이
											오는군요....</p>
									</div>
									<div class="blog-button">
										<a class="hover-btn-new orange" href="#"><span>읽어보기<span></a>
									</div>
								</div>
							</div>
							<!-- end col -->

							<div class="col-lg-4 col-md-6 col-12">
								<div class="blog-item">
									<div class="image-blog">
										<img src="images/blog_3.jpg" alt="" class="img-fluid">
									</div>
									<div class="meta-info-blog">
										<span><i class="fa fa-calendar"></i> <a href="#">May
												02, 2019</a> </span> <span><i class="fa fa-tag"></i> <a href="#">News</a>
										</span> <span><i class="fa fa-comments"></i> <a href="#">12
												Comments</a></span>
									</div>
									<div class="blog-title">
										<h2>
											<a href="#" title="">눈술 준비를 위한 A-Z</a>
										</h2>
									</div>
									<div class="blog-desc">
										<p>눈술 준비를 위한 A-Z 논술의 기본. 1. 논술에 대한 마인드 / 2. 논술의 핵심 원리 / 3.
											논술을 준비하는 방법﻿ / 4. 논술 시험장에서. 말로만 들었는데, 막상 겪으니 정말 '멘붕'이
											오는군요....</p>
									</div>
									<div class="blog-button">
										<a class="hover-btn-new orange" href="#"><span>읽어보기<span></a>
									</div>
								</div>
							</div>
							<!-- end col -->
						</div>
						<!-- end row -->

						<hr class="hr3">

						<div class="row">
							<div class="col-lg-4 col-md-6 col-12">
								<div class="blog-item">
									<div class="image-blog">
										<img src="images/blog_4.jpg" alt="" class="img-fluid">
									</div>
									<div class="meta-info-blog">
										<span><i class="fa fa-calendar"></i> <a href="#">May
												02, 2019</a> </span> <span><i class="fa fa-tag"></i> <a href="#">News</a>
										</span> <span><i class="fa fa-comments"></i> <a href="#">12
												Comments</a></span>
									</div>
									<div class="blog-title">
										<h2>
											<a href="#" title="">눈술 준비를 위한 A-Z</a>
										</h2>
									</div>
									<div class="blog-desc">
										<p>눈술 준비를 위한 A-Z 논술의 기본. 1. 논술에 대한 마인드 / 2. 논술의 핵심 원리 / 3.
											논술을 준비하는 방법﻿ / 4. 논술 시험장에서. 말로만 들었는데, 막상 겪으니 정말 '멘붕'이
											오는군요....</p>
									</div>
									<div class="blog-button">
										<a class="hover-btn-new orange" href="#"><span>읽어보기<span></a>
									</div>
								</div>
							</div>
							<!-- end col -->

							<div class="col-lg-4 col-md-6 col-12">
								<div class="blog-item">
									<div class="image-blog">
										<img src="images/blog_5.jpg" alt="" class="img-fluid">
									</div>
									<div class="meta-info-blog">
										<span><i class="fa fa-calendar"></i> <a href="#">May
												02, 2019</a> </span> <span><i class="fa fa-tag"></i> <a href="#">News</a>
										</span> <span><i class="fa fa-comments"></i> <a href="#">12
												Comments</a></span>
									</div>
									<div class="blog-title">
										<h2>
											<a href="#" title="">눈술 준비를 위한 A-Z</a>
										</h2>
									</div>
									<div class="blog-desc">
										<p>눈술 준비를 위한 A-Z 논술의 기본. 1. 논술에 대한 마인드 / 2. 논술의 핵심 원리 / 3.
											논술을 준비하는 방법﻿ / 4. 논술 시험장에서. 말로만 들었는데, 막상 겪으니 정말 '멘붕'이
											오는군요....</p>
									</div>
									<div class="blog-button">
										<a class="hover-btn-new orange" href="#"><span>읽어보기<span></a>
									</div>
								</div>
							</div>
							<!-- end col -->

							<div class="col-lg-4 col-md-6 col-12">
								<div class="blog-item">
									<div class="image-blog">
										<img src="images/blog_6.jpg" alt="" class="img-fluid">
									</div>
									<div class="meta-info-blog">
										<span><i class="fa fa-calendar"></i> <a href="#">May
												02, 2019</a> </span> <span><i class="fa fa-tag"></i> <a href="#">News</a>
										</span> <span><i class="fa fa-comments"></i> <a href="#">12
												Comments</a></span>
									</div>
									<div class="blog-title">
										<h2>
											<a href="#" title="">눈술 준비를 위한 A-Z</a>
										</h2>
									</div>
									<div class="blog-desc">
										<p>눈술 준비를 위한 A-Z 논술의 기본. 1. 논술에 대한 마인드 / 2. 논술의 핵심 원리 / 3.
											논술을 준비하는 방법﻿ / 4. 논술 시험장에서. 말로만 들었는데, 막상 겪으니 정말 '멘붕'이
											오는군요....</p>
									</div>
									<div class="blog-button">
										<a class="hover-btn-new orange" href="#"><span>읽어보기<span></a>
									</div>
								</div>
							</div>
							<!-- end col -->
						</div>
						<!-- end row -->
					</div>
					<!-- end container -->
				</div>
				<!-- end section -->

			</div>
	</section>
	<!-- 
    <section class="section lb page-section">
		<div class="container">
			 <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>Our history</h3>
                    <p class="lead">Lorem Ipsum dolroin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem!</p>
                </div>
            </div>
			<div class="timeline">
				<div class="timeline__wrap">
					<div class="timeline__items">
						<div class="timeline__item">
							<div class="timeline__content img-bg-01">
								<h2>2018</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim neque condimentum lacus dapibus. Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-02">
								<h2>2015</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim neque condimentum lacus dapibus. Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-03">
								<h2>2014</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim neque condimentum lacus dapibus. Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-04">
								<h2>2012</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim neque condimentum lacus dapibus. Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-01">
								<h2>2010</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim neque condimentum lacus dapibus. Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-02">
								<h2>2007</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim neque condimentum lacus dapibus. Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-03">
								<h2>2004</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim neque condimentum lacus dapibus. Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="timeline__item">
							<div class="timeline__content img-bg-04">
								<h2>2002</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dignissim neque condimentum lacus dapibus. Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
					</div>
				</div>
            </div>
            




		</div>
	</section> -->





	<div id="testimonials" class="parallax section db parallax-off"
		style="background-image: url('images/parallax_04.jpg');">
		<div class="container">
			<div class="section-title text-center">
				<h3>신규멘토</h3>
				<p>멘티여러분들과 함께 하게될 신규멘토입니다</p>
			</div>
			<!-- end title -->

			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="testi-carousel owl-carousel owl-theme">
						<div class="testimonial clearfix">
							<div class="testi-meta">
								<img src="images/testi_01.png" alt="" class="img-fluid">
								<h4>제임스</h4>
							</div>
							<div class="desc">
								<h3>
									<i class="fa fa-quote-left"></i> 해커X 영어강사
								</h3>
								<p class="lead">전문 영어회화강사 제임스쌤 입니다. 영어를 어려워하는 멘티들은 저에게 오세요~.</p>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->

						<div class="testimonial clearfix">
							<div class="testi-meta">
								<img src="images/testi_02.png" alt="" class="img-fluid">
								<h4>김필림</h4>
							</div>
							<div class="desc">
								<h3>
									<i class="fa fa-quote-left"></i> 서울대 국문학과3학년
								</h3>
								<p class="lead">서울대 국문학과 3학년 학생입니다. 서울대에 관해 궁금한게 있으면 무엇이든
									물어보세요</p>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->

						<div class="testimonial clearfix">
							<div class="testi-meta">
								<img src="images/testi_03.png" alt="" class="img-fluid ">
								<h4>박간호</h4>
							</div>
							<div class="desc">
								<h3>
									<i class="fa fa-quote-left"></i>세브란스병원 간호사
								</h3>
								<p class="lead">간호사가 꿈인 친구, 제가 꿈을 이룰수 있게 도와드릴게요~</p>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->
						<div class="testimonial clearfix">
							<div class="testi-meta">
								<img src="images/testi_01.png" alt="" class="img-fluid">
								<h4>제임스</h4>
							</div>
							<div class="desc">
								<h3>
									<i class="fa fa-quote-left"></i> 해커X 영어강사
								</h3>
								<p class="lead">전문 영어회화강사 제임스쌤 입니다. 영어를 어려워하는 멘티들은 저에게 오세요~.</p>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->

						<div class="testimonial clearfix">
							<div class="testi-meta">
								<img src="images/testi_02.png" alt="" class="img-fluid">
								<h4>김필림</h4>
							</div>
							<div class="desc">
								<h3>
									<i class="fa fa-quote-left"></i> 서울대 국문학과3학년
								</h3>
								<p class="lead">서울대 국문학과 3학년 학생입니다. 서울대에 관해 궁금한게 있으면 무엇이든
									물어보세요</p>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->

						<div class="testimonial clearfix">
							<div class="testi-meta">
								<img src="images/testi_03.png" alt="" class="img-fluid ">
								<h4>박간호</h4>
							</div>
							<div class="desc">
								<h3>
									<i class="fa fa-quote-left"></i>세브란스병원 간호사
								</h3>
								<p class="lead">간호사가 꿈인 친구, 제가 꿈을 이룰수 있게 도와드릴게요~</p>
							</div>
							<!-- end testi-meta -->
						</div>

					</div>
					<!-- end carousel -->
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->


	<div id="plan" class="section lb">
		<div class="container">
			<div class="section-title text-center">
				<h3>진로검사</h3>
				<p>나에게 필요한 진로정보를 얻어보세요</p>
			</div>
			<!-- end title -->

			<div class="row">
				<!-- 
                <div class="col-md-6 offset-md-3">
                    <div class="message-box">
                        <ul class="nav nav-pills nav-stacked" id="myTabs">
                            <li><a class="active" href="#tab1" data-toggle="pill">Monthly Subscription</a></li>
                            <li><a href="#tab2" data-toggle="pill">Yearly Subscription</a></li>
                        </ul>
                    </div>
                </div><!-- end col -->

			</div>

			<hr class="invis">

			<div class="row">
				<div class="col-md-12">
					<div class="tab-content">
						<div class="tab-pane active fade show" id="tab1">
							<div class="row text-center">
								<div class="col-md-4" >
									<div class="pricing-table pricing-table-highlighted">
										<div class="pricing-table-header grd1">
											<h2>진로심리검사</h2>
											<h3>Career psychology</h3>
										</div>
										<div class="pricing-table-space"></div>
										<img src="images/info1.png" alt="">
										<!-- <div class="pricing-table-features" >
                                 
                                        </div> -->
										<div class="pricing-table-sign-up">
											<a href="careerApi.do" class="hover-btn-new orange"><span>검사하기</span></a>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="pricing-table pricing-table-highlighted">
										<div class="pricing-table-header grd1">
											<h2>학과정보</h2>
											<h3>Department Info</h3>
										</div>
										<div class="pricing-table-space"></div>
										<img src="images/info2.png" alt="">
										<!-- <div class="pricing-table-features" >
                                 
                                        </div> -->
										<div class="pricing-table-sign-up">
											<a href="careerApi.do" class="hover-btn-new orange"><span>검색하기</span></a>
										</div>
									</div>
								</div>

								<div class="col-md-4">
									<div class="pricing-table pricing-table-highlighted">
										<div class="pricing-table-header grd1">
											<h2>직업정보</h2>
											<h3>Job information</h3>
										</div>
										<div class="pricing-table-space"></div>
										<img src="images/info3.png" alt="">
										<!-- <div class="pricing-table-features" >
                                 
                                        </div> -->
										<div class="pricing-table-sign-up">
											<a href="careerApi.do" class="hover-btn-new orange"><span>검색하기</span></a>
										</div>
									</div>
								</div>
							</div>
							<!-- end row -->
						</div>
						<!-- end pane -->

						<div class="tab-pane fade" id="tab2">
							<div class="row text-center">
								<div class="col-md-4">
									<div class="pricing-table pricing-table-highlighted">
										<div class="pricing-table-header grd1">
											<h2>$477</h2>
											<h3>Year</h3>
										</div>
										<div class="pricing-table-space"></div>
										<div class="pricing-table-features">
											<p>
												<i class="fa fa-envelope-o"></i> <strong>250</strong> Email
												Addresses
											</p>
											<p>
												<i class="fa fa-rocket"></i> <strong>125GB</strong> of
												Storage
											</p>
											<p>
												<i class="fa fa-database"></i> <strong>140</strong>
												Databases
											</p>
											<p>
												<i class="fa fa-link"></i> <strong>60</strong> Domains
											</p>
											<p>
												<i class="fa fa-life-ring"></i> <strong>24/7
													Unlimited</strong> Support
											</p>
										</div>
										<div class="pricing-table-sign-up">
											<a href="#" class="hover-btn-new orange"><span>Order
													Now</span></a>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="pricing-table pricing-table-highlighted">
										<div class="pricing-table-header grd1">
											<h2>$485</h2>
											<h3>Year</h3>
										</div>
										<div class="pricing-table-space"></div>
										<div class="pricing-table-features">
											<p>
												<i class="fa fa-envelope-o"></i> <strong>150</strong> Email
												Addresses
											</p>
											<p>
												<i class="fa fa-rocket"></i> <strong>65GB</strong> of
												Storage
											</p>
											<p>
												<i class="fa fa-database"></i> <strong>60</strong> Databases
											</p>
											<p>
												<i class="fa fa-link"></i> <strong>30</strong> Domains
											</p>
											<p>
												<i class="fa fa-life-ring"></i> <strong>24/7
													Unlimited</strong> Support
											</p>
										</div>
										<div class="pricing-table-sign-up">
											<a href="#" class="hover-btn-new orange"><span>Order
													Now</span></a>
										</div>
									</div>
								</div>

								<div class="col-md-4">
									<div class="pricing-table pricing-table-highlighted">
										<div class="pricing-table-header grd1">
											<h2>$500</h2>
											<h3>Year</h3>
										</div>
										<div class="pricing-table-space"></div>
										<div class="pricing-table-features">
											<p>
												<i class="fa fa-envelope-o"></i> <strong>250</strong> Email
												Addresses
											</p>
											<p>
												<i class="fa fa-rocket"></i> <strong>125GB</strong> of
												Storage
											</p>
											<p>
												<i class="fa fa-database"></i> <strong>140</strong>
												Databases
											</p>
											<p>
												<i class="fa fa-link"></i> <strong>60</strong> Domains
											</p>
											<p>
												<i class="fa fa-life-ring"></i> <strong>24/7
													Unlimited</strong> Support
											</p>
										</div>
										<div class="pricing-table-sign-up">
											<a href="#" class="hover-btn-new orange"><span>Order
													Now</span></a>
										</div>
									</div>
								</div>
							</div>
							<!-- end row -->
						</div>
						<!-- end pane -->
					</div>
					<!-- end content -->
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->







	<div class="parallax section dbcolor">
		<div class="container">
			<div class="row logos">
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="images/logo_01.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="images/logo_02.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="images/logo_03.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="images/logo_04.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="images/logo_05.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="images/logo_06.png" alt=""
						class="img-repsonsive"></a>
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-xs-12">
					<div class="widget clearfix">
						<div class="widget-title">
							<h3>문의사항</h3>
						</div>
						<p>Integer rutrum ligula eu dignissim laoreet. Pellentesque
							venenatis nibh sed tellus faucibus bibendum. Sed fermentum est
							vitae rhoncus molestie. Cum sociis natoque penatibus et magnis
							dis montes.</p>
						<div class="footer-right">
							<ul class="footer-links-soi">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-github"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
							</ul>
							<!-- end links -->
						</div>
					</div>
					<!-- end clearfix -->
				</div>
				<!-- end col -->

				<div class="col-lg-4 col-md-4 col-xs-12">
					<div class="widget clearfix">
						<div class="widget-title">
							<h3>사이트 링크</h3>
						</div>
						<ul class="footer-links">
							<li><a href="#">Home</a></li>
							<li><a href="#">Mlog</a></li>
							<li><a href="#">멘토찾기</a></li>
							<li><a href="careerApi.do">진로검사</a></li>
							<li><a href="#">마이페이지</a></li>
						</ul>
						<!-- end links -->
					</div>
					<!-- end clearfix -->
				</div>
				<!-- end col -->

				<div class="col-lg-4 col-md-4 col-xs-12">
					<div class="widget clearfix">
						<div class="widget-title">
							<h3>제작</h3>
						</div>

						<ul class="footer-links">
							<li><a href="mailto:#">sfhawk0@naver.com</a></li>
							<li><a href="#">www.e2um.com</a></li>
							<li>서울특별시 강서구</li>
							<li>+61 3 1234 1234</li>
						</ul>
						<!-- end links -->
					</div>
					<!-- end clearfix -->
				</div>
				<!-- end col -->

			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</footer>
	<!-- end footer -->

	<div class="copyrights">
		<div class="container">
			<div class="footer-distributed">
				<div class="footer-center">
					<p class="footer-company-name">
						All Rights Reserved. &copy; 2019 <a href="#">이음</a> Design By : <a
							href="https://html.design/">BONG JAEGYU</a>
					</p>
				</div>
			</div>
		</div>
		<!-- end container -->
	</div>
	<!-- end copyrights -->

	<a href="#" id="scroll-to-top" class="dmtop global-radius"><i
		class="fa fa-angle-up"></i></a>

	<!-- ALL JS FILES -->
	<script src="js/all.js"></script>
	<!-- ALL PLUGINS -->
	<script src="js/custom.js"></script>
	<script src="js/timeline.min.js"></script>
	<script>
		timeline(document.querySelectorAll('.timeline'), {
			forceVerticalMode : 700,
			mode : 'horizontal',
			verticalStartPosition : 'left',
			visibleItems : 4
		});
	</script>


<script>
						
					
							<%if(session.getAttribute("id")==null){ 	%>
							
							$('#login_out2').css('display','none');
														
														
														<%
													}else{
														%>
														
														
														$('#login_out1').css('display','none');
															<%		
													}
													
													%>
							</script>

</body>
</html>