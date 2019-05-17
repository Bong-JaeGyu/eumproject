<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html lang="ko">

<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>SmartEDU - Education Responsive HTML5 Template</title>
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

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue"></script>
<script src="https://unpkg.com/vue-router/dist/vue-router.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/vue-resource/1.5.1/vue-resource.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script>Vue.config.devtools = true;</script>



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
	
								<form method="post" enctype="multipart/form-data">
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
										placeholder="사진" name="user_img" >


								</div>
							</div>
								</form>
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
				mentor: 1,	
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

					
					
					var formData = new FormData();
					 formData.append("user_img", $("#user_img")[0].files[0]);

					
					 
					 
					 axios.post('joingo.do', formData, {
						    headers: {
						      'Content-Type': 'multipart/form-data'
						    },
						    params: {
						    	user_id :this.user_id,
								user_pw :this.user_pw,
								job : this.job,
								user_pw_cf :this.user_pw_cf,
								user_tel :this.user_tel,
								user_name :this.user_name,
								user_birthday:this.user_birthday,
								user_career:this.user_career,
								mentor:this.mentor
						    }
						})
					 
/* 
				}) */
				.then(function(data) {
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
						<li class="nav-item"><a class="nav-link" href="mlog.do">MLOG</a></li>
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
								<a class="dropdown-item" href="#">추가예정 </a> <a
									class="dropdown-item" href="#">추가예정 </a>
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




<div id="notewrite">
        
    
	
	<!-- Modal -->
	<div class="modal fade" id="notego" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"  >
	  <div class="modal-dialog modal-dialog-centered modal-lg" role="document" >
		<div class="modal-content" >
			
			

				
              
                    <div class="contact_form">
                       
                     
                         
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input type="text"  v-model="receive_id"class="form-control" >
                                </div>
                                
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <textarea class="form-control" v-model="send_content" rows="6" placeholder="상대편에게 보낼 메시지"></textarea>
                                </div>
                                <div class="text-center pd">
                                    <button type="button" class="btn btn-light btn-radius btn-brd grd1 btn-block" v-on:click="sendgo" >쪽지보내기</button>
                                </div>
                           
                  
                    </div>
                

       		
   			</div><!-- end section -->
			

			
			
			
		</div>
	  </div>
	</div>


<script>			
	var notevm = new Vue({
			el : '#notewrite',
			data : {
				receive_id:'',
				send_content:''
				
			},
			methods :  {
				
				
				sendgo : function(e) {
			  
		
			    axios.get('sendgo.do', {
						params : {
							receive_id : this.receive_id,
							send_content : this.send_content
						}

					}).then(function(data){
						
						$('#notego').modal('toggle'); 
						notevm.$data.send_content= "";
						
						
						
						
					});
			    		
					
				  } 
			}	
		})				
		
	</script>	
































	<div class="all-title-box">
		<div class="container text-center">
			<h1>
				마이페이지<span class="m_1">나의 공간</span>
			</h1>
		</div>
	</div>

	<div id="contact" class="section wb">
		<div class="container">

			<div class="section-title text-center">
				<h3><%=session.getAttribute("id") %>님의 마이페이지
				</h3>
				<p class="lead">~~</p>
			</div>
			<!-- end title -->
			<div class="modal-content">

				<div class="modal-body customer-box">
					<!-- Nav tabs -->


					<ul class="nav nav-tabs">
						<li><a class="active" id="box" href="#msgbox"
							onclick="msgshow()" data-toggle="tab">쪽지함</a></li>
						<li><a href="#mentorbox" onclick="mentorboxshow()"
							data-toggle="tab">나의 멘토</a></li>


						<li><a href="#myinfo" onclick="myinfoshow()"
							data-toggle="tab">나의 정보</a></li>


					</ul>

					<script type="text/javascript">
						function msgshow() {

							 $("#msgbox2").css("display", "none"); 
							 $("#msgbox3").css("display", "none"); 
							 $("#msgbox").css("display", "block"); 
						
						};
						
						function mentorboxshow() {

							 $("#msgbox").css("display", "none"); 
							 $("#msgbox3").css("display", "none"); 
							 $("#msgbox2").css("display", "block"); 
						
						};
						
						function myinfoshow() {

							 $("#msgbox2").css("display", "none"); 
							 $("#msgbox").css("display", "none"); 
							 $("#msgbox3").css("display", "block"); 
						
						};
						
						
						
						
					</script>


					<div class="tab-pane" id="msgbox">


						<c:forEach items="${msgList}" var="msg">
							<div>
								<ul class="children">
									<li class="comment">
										<div class="avatar">
											<img alt="" src='${msg.user_img}' class="avatar">
										</div>
										<div class="comment-container">
											<h5 class="comment-author">
												<a href="#">${msg.send_id}</a>
											</h5>
											<div class="comment-meta">
												<a href="#" class="comment-date link-style1">${msg.send_date}</a>
												<a class="comment-reply-link link-style3" href="#" data-toggle="modal" data-target="#notego" onclick="javascript: msgsend('${msg.member_id}');" >쪽지보내기
													»</a> <a class="comment-reply-link2 link-style3"
													href="#" onclick="javascript: msgdel('${msg.member_id}',${msg.msg_num});"> 삭제하기 »</a>
													<c:if test="${msg.mentor_msg == 'mentor'}">
													<a class="comment-reply-link2 link-style3"
													href="#" style="margin-top: 2%" onclick="javascript: mentorok('${msg.member_id}',${msg.msg_num});"> 수락하기 »</a>
													 </c:if>
											</div>

											<div class="comment-body">
												<p>${msg.content}</p>
											</div>
											
									
												
	    											
	  											
  									
											
										</div>
									</li>
								</ul>
							</div>

						</c:forEach>
					</div>


<script>
var app4 = new Vue({
  el: '#app-4',
  data: {
    msgs: [
      { member_id:'user1', membor_img:'',senddate:'2019-05-01',text: '111111' },
	  { member_id:'user2', membor_img:'',senddate:'2019-05-03',text: '222222' },
	  { member_id:'user3', membor_img:'',senddate:'2019-05-02',text: '3333333' },
    ]
  }
})
</script>
				<div class="tab-pane" id="msgbox2" style="display: none;">

						<c:forEach items="${mentorList}" var="mentor">
					<div class="col-lg-3 col-md-6 col-12" style="display: inline-table;">
					<div class="our-team">
						<div class="team-img">
							<img src="${mentor.user_img}">
							<div class="social">
								<ul>
									<li><a href="#" class="fa fa-facebook"></a></li>
									<li><a href="#" class="fa fa-twitter"></a></li>
									<li><a href="#" class="fa fa-linkedin"></a></li>
									<li><a href="#" class="fa fa-skype"></a></li>
								</ul>
							</div>
						</div>
						<div class="team-content">
							<h3 class="title">${mentor.mentor_id}</h3>
									<span class="post"><%=session.getAttribute("id") %>님의 ${mentor.relation}</span>
						</div>
					</div>
				</div>



			</c:forEach>


				</div>




				<div class="tab-pane" id="msgbox3" style="display: none;">

					<div class="tab-pane" id="Registration">
						<%-- <form role="form" class="form-horizontal">
							<div class="form-group">
								<div class="col-sm-12">
									아이디 <input class="form-control" placeholder="이름" value= "아이디: ${memberinfo.member_id}" type="text" disabled="disabled" >
								</div>
							</div> --%>



					<div class="contact_form">
                        <div id="message"></div>
                        <form id="contactform" class="" action="contact.php" name="contactform" method="post">
                            <div class="row row-fluid">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                   <input class="form-control" value= "아이디 : ${memberinfo.member_id}" type="text" disabled="disabled" >
                                </div>

                                <div class="col-lg-6 col-md-6 col-sm-6">
                                   <input class="form-control" value= "이름 : ${memberinfo.member_name}" type="text" disabled="disabled" >
                                </div>

                                <div class="col-lg-6 col-md-6 col-sm-6">
                                   <input class="form-control" value= "학교 : ${memberinfo.school}" type="text" disabled="disabled" >
                                </div>

                                <div class="col-lg-6 col-md-6 col-sm-6">
                                   <input class="form-control" value= "학년 : ${memberinfo.grade}" type="text" disabled="disabled" >
                                </div>

                                <div class="col-lg-6 col-md-6 col-sm-6">
                                   <input class="form-control" value= "생년월일 : ${memberinfo.user_birthday}" type="text" disabled="disabled" >
                                </div>

                                <div class="col-lg-6 col-md-6 col-sm-6">
                                   <input class="form-control" value= "전화번호 : ${memberinfo.user_tel}" type="text" disabled="disabled" >
                                </div>


                                <div class="text-center pd">
                                    <button type="submit" value="SEND" id="submit" class="btn btn-light btn-radius btn-brd grd1 btn-block">수정하기</button>
                                </div>
                            </div>
                        </form>











						</div>
					</div>
				</div>






			</div>
		</div>
	</div>

	</div>













<script>

function msgsend(receive_id) {
	console.log("보낼아이디");	
	console.log(receive_id);
	
	notevm.$data.receive_id = receive_id;
	
}

function msgdel(id,num) {
	
	axios.get('msgdel.do', {
		params : {
			receive_id : id,
			msg_num : num
		}

	}).then(function(data) {
		
		
		
		location.href="mypage.do"	
		
		
		})
	
	
}



function mentorok(id,num) {
	
	axios.get('mentorok.do', {
		params : {
			member_id : id,
			msg_num : num
		}

	}).then(function(data) {
		
		
		
		location.href="mypage.do"	
		
		
		})
	
}





</script>





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
							<h3>About US</h3>
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
							<h3>Information Link</h3>
						</div>
						<ul class="footer-links">
							<li><a href="#">Home</a></li>
							<li><a href="#">Blog</a></li>
							<li><a href="#">Pricing</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">Contact</a></li>
						</ul>
						<!-- end links -->
					</div>
					<!-- end clearfix -->
				</div>
				<!-- end col -->

				<div class="col-lg-4 col-md-4 col-xs-12">
					<div class="widget clearfix">
						<div class="widget-title">
							<h3>Contact Details</h3>
						</div>

						<ul class="footer-links">
							<li><a href="mailto:#">info@yoursite.com</a></li>
							<li><a href="#">www.yoursite.com</a></li>
							<li>PO Box 16122 Collins Street West Victoria 8007 Australia</li>
							<li>+61 3 8376 6284</li>
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
						All Rights Reserved. &copy; 2018 <a href="#">SmartEDU</a> Design
						By : <a href="https://html.design/">html design</a>
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