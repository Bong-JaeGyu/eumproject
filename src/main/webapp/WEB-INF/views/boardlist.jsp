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

<script src="https://cdn.jsdelivr.net/npm/vue"></script>
<script src="https://unpkg.com/vue-router/dist/vue-router.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/vue-resource/1.5.1/vue-resource.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script>
	Vue.config.devtools = true;
</script>



<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	
		
	
			   
	

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
	
	<div class="all-title-box">
		<div class="container text-center">
			<h1>MLOG<span class="m_1">멘토의 공간</span></h1>
		</div>
	</div>
	
	
	
	<div id="writerlist">
        
    
	
	<!-- Modal -->
	<div class="modal fade" id="tttt" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"  >
	  <div class="modal-dialog modal-dialog-centered modal-lg" role="document" >
		<div class="modal-content" >
			
			
			
			<div id="overviews" class="section wb" >
        <div class="container">
            <div class="row"> 
                
                   
						
						<div class="post-content" style="margin: 20px" >
							
							<div class="meta-info-blog">
								<span><i class="fa fa-calendar"></i> <a href="#">{{board_date}}</a> </span>
								<span><i class="fa fa-tag"></i>  <a href="#">{{board_cate}}</a> </span>
								<span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
							</div>
							<div class="blog-title">
								<h2><a href="#" title="">제목 : {{board_title}}</a></h2>
							</div>
							<div class="blog-desc" v-html="board_content">
								
								{{board_content}}
								
							</div>
							{{board_title}}							
						</div>
					

	
					
					<div class="blog-author" style="margin: 20px">
						<div class="author-bio">
							<h3 class="author_name"><a href="#">{{board_writer}}</a></h3>
							<h5>CEO at <a href="#">SmartEDU</a></h5>
							<p class="author_det">
								Lorem ipsum dolor sit amet, consectetur adip, sed do eiusmod tempor incididunt  ut aut reiciendise voluptat maiores alias consequaturs aut perferendis doloribus omnis saperet docendi nec, eos ea alii molestiae aliquand.
							</p>
						</div>
						<div class="author-desc">
							<img src="images/author.jpg" alt="about author">
							<ul class="author-social">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"></i></a></li>
							</ul>
						</div>
					</div>
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					<div class="blog-comments" style="margin: 20px">
						<h4>Comments (3)</h4>
						<div id="comment-blog">
							<ul class="comment-list">
								<li class="comment">
									<div class="avatar"><img alt="" src="images/avatar-01.jpg" class="avatar"></div>
									<div class="comment-container">
										<h5 class="comment-author"><a href="#">John Smith</a></h5>
										<div class="comment-meta">
											<a href="#" class="comment-date link-style1">February 22, 2015</a>
											<a class="comment-reply-link link-style3" href="#respond">Reply »</a>
										</div>
										<div class="comment-body">
											<p>Ne omnis saperet docendi nec, eos ea alii molestiae aliquand. Latine fuisset mele, mandamus atrioque eu mea, wi forensib argumentum vim an. Te viderer conceptam sed, mea et delenit fabellas probat.</p>
										</div>
									</div>
								</li>

								
								<li class="comment">
									<div class="avatar"><img alt="" src="images/avatar-02.jpg" class="avatar"></div>
									<div class="comment-container">
										<h5 class="comment-author"><a href="#">John Smith</a></h5>
										<div class="comment-meta">
											<a href="#" class="comment-date link-style1">February 22, 2015</a>
											<a class="comment-reply-link link-style3" href="#respond">Reply »</a>
										</div>
										<div class="comment-body">
											<p>Ne omnis saperet docendi nec, eos ea alii molestiae aliquand. Latine fuisset mele, mandamus atrioque eu mea, wi forensib argumentum vim an. Te viderer conceptam sed, mea et delenit fabellas probat.</p>
										</div>
									</div>
									<ul class="children">
										<li class="comment">
											<div class="avatar"><img alt="" src="images/avatar-03.jpg" class="avatar"></div>
											<div class="comment-container">
												<h5 class="comment-author"><a href="#">Thomas Smith</a></h5>
												<div class="comment-meta"><a href="#" class="comment-date link-style1">February 14, 2015</a><a class="comment-reply-link link-style3" href="#respond">Reply »</a></div>
												<div class="comment-body">
													<p>Labores pertinax theophrastus vim an. Error ditas in sea, per no omnis iisque nonumes. Est an dicam option, ad quis iriure saperet nec, ignota causae inciderint ex vix. Iisque qualisque imp duo eu, pro reque consequ untur. No vero laudem legere pri, error denique vis ne, duo iusto bonorum.</p>
												</div>
											</div>
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
					<div class="comments-form" style="margin: 20px">
						<h4>댓글남기기</h4>
						<div class="comment-form-main">
							<form action="#">
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<input class="form-control" name="commenter-name" placeholder="Name" id="commenter-name" type="text">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<input class="form-control" name="commenter-email" placeholder="Email" id="commenter-email" type="text">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<input class="form-control" name="commenter-url" placeholder="Website URL" id="commenter-url" type="text">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" name="commenter-message" placeholder="Message" id="commenter-message" cols="30" rows="2"></textarea>
										</div>
									</div>
									<div class="col-md-12 post-btn">
										<button class="hover-btn-new orange"><span>Post Comment</span></button>
									</div>
								</div>
							</form>
						</div>
					</div>
					
                </div><!-- end col -->
				
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
			
			
			
			
		
			
			
			
		</div>
	  </div>
	</div>
	
	
	
	
	
	
	
	
	
	
    <div id="overviews" class="section wb">
        <div class="container">
            <div class="row"> 
                <div class="col-lg-9 blog-post-single">
                    

	
					
					
					<div class="blog-comments">
					
			
			<div id="paging_container2" class="container">
				<h2>게시판 구현</h2>
			<c:forEach items="${boardList}" var="boardlist">
				<ul class="content">
					 <li id="lilist" style="list-style: none;">
					 
         
                                            <div class="post-content">
                                                
                                             
                                                <div class="blog-desc" onclick="javascript: test1('${boardlist.board_writer}', '${boardlist.board_num}');" data-toggle="modal" data-target="#tttt" href="#">
                                                   
                                                        <div class="post-date">
                                                                <span class="day">${boardlist.board_writer}</span>
                                                                <span class="month">${boardlist.board_no}</span>
                                                            </div>

                                                            
                                                    <blockquote class="default">
                                                            <h5 class="comment-author">	${boardlist.board_title}</h5>
                                                       
                                                   
                                                       
                                                    </blockquote>
                                              
                                                </div>							
                                            </div>
                                        
								
								</li>
					 
	 
				
					
				</ul>	
					</c:forEach>
					<div>
					
			<!-- 	<a href="boardWrite.do" style="float: right;"><button style="" class="btn btn-light btn-radius btn-brd grd1">
										글작성
							</button></a>	 -->
					
					
				
				
				
				</div>
				<div style="margin-left: auto; margin-right: auto;">
			<div class="page_navigation"></div></div>
			</div>

	
					</div>
                    
           <script>
           
           function test1(writer,num) {
        	
        	  console.log(writer, num);
        	   
        	     axios.get('boardload.do', {
					params : {
						board_writer : writer,
						board_num : num
					}

				}).then(function(data){
					
					console.log(data.data);
					
					vm1.$data.board_title = data.data.board_title;
					vm1.$data.board_type = data.data.board_type;
					vm1.$data.board_pw = data.data.board_pw;
					vm1.$data.board_date = data.data.board_date;
					vm1.$data.board_cate = data.data.board_cate;
					vm1.$data.board_num = data.data.board_num;
					vm1.$data.board_writer = data.data.board_writer;
					vm1.$data.board_own = data.data.board_own;
					vm1.$data.board_hit = data.data.board_hit;
					vm1.$data.board_content = data.data.board_content;
					vm1.$data.board_tag = data.data.board_tag;
					
				});  
		    		
				
		  } 
		
           
           </script>      


					
                </div><!-- end col -->
				<div class="col-lg-3 col-12 right-single">
					<div class="widget-search">
						<div class="site-search-area">
							<form method="get" id="site-searchform" action="#">
								<div>
									<input class="input-text form-control" name="search-k" id="search-k" placeholder="Search keywords..." type="text">
									<input id="searchsubmit" value="Search" type="submit">
								</div>
							</form>
						</div>
					</div>
					<div class="widget-categories">
						<h3 class="widget-title">카테고리</h3>
						<ul>
							<li><a href="#" data-toggle="modal" data-target="#tttt">Political Science</a></li>
							<li><a href="#">Business Leaders Guide</a></li>
							<li><a href="#">Become a Product Manage</a></li>
							<li><a href="#">Language Education</a></li>
							<li><a href="#">Micro Biology</a></li>
							<li><a href="#">Social Media Management</a></li>
						</ul>
					</div>
					<div class="widget-tags">
						<h3 class="widget-title">Tags</h3>
						<ul class="tags">
							<li><a href="#"><b>{{board_tag}}</b></a></li>
							<li><a href="#"><b>jquery</b></a></li>
							<li><a href="#">corporate</a></li>
							<li><a href="#">portfolio</a></li>
							<li><a href="#">css3</a></li>
							<li><a href="#"><b>theme</b></a></li>
							<li><a href="#"><b>html5</b></a></li>
							<li><a href="#"><b>mysql</b></a></li>
							<li><a href="#">multipurpose</a></li>
							<li><a href="#">responsive</a></li>
							<li><a href="#">premium</a></li>
							<li><a href="#">javascript</a></li>
							<li><a href="#"><b>Best jQuery</b></a></li>
							
						</ul>
							
					</div>
					
				</div>
            </div><!-- end row -->
        </div><!-- end container -->
        
    </div><!-- end section -->






	



	
	
		
				
		

		
		<script type="text/javascript">
			
			(function($) { /*******************************************************************************************/
	// jquery.pajinate.js - version 0.4
	// A jQuery plugin for paginating through any number of DOM elements
	// 
	// Copyright (c) 2010, Wes Nolte (http://wesnolte.com)
	// Licensed under the MIT License (MIT-LICENSE.txt)
	// http://www.opensource.org/licenses/mit-license.php
	// Created: 2010-04-16 | Updated: 2010-04-26
	//
	/*******************************************************************************************/

	$.fn.pajinate = function(options) {
		// Set some state information
		var current_page = 'current_page';
		var items_per_page = 'items_per_page';

		var meta;

		// Setup default option values
		var defaults = {
			item_container_id: '.content',
			items_per_page: 10,
			nav_panel_id: '.page_navigation',
			nav_info_id: '.info_text',
			num_page_links_to_display: 10,
			start_page: 0,
			wrap_around: false,
			nav_label_first: '처음',
			nav_label_prev: '이전',
			nav_label_next: '다음',
			nav_label_last: '마지막',
			nav_order: ["first", "prev", "num", "next", "last"],
			nav_label_info: 'Showing {0}-{1} of {2} results',
			show_first_last: true,
			abort_on_small_lists: false,
			jquery_ui: false,
			jquery_ui_active: "ui-state-highlight",
			jquery_ui_default: "ui-state-default",
			jquery_ui_disabled: "ui-state-disabled"
		};

		var options = $.extend(defaults, options);
		var $item_container;
		var $page_container;
		var $items;
		var $nav_panels;
		var total_page_no_links;
		var jquery_ui_default_class = options.jquery_ui ? options.jquery_ui_default : '';
		var jquery_ui_active_class = options.jquery_ui ? options.jquery_ui_active : '';
		var jquery_ui_disabled_class = options.jquery_ui ? options.jquery_ui_disabled : '';

		return this.each(function() {
			$page_container = $(this);
			$item_container = $(this).find(options.item_container_id);
			$items = $page_container.find(options.item_container_id).children();

			if (options.abort_on_small_lists && options.items_per_page >= $items.size()) return $page_container;

			meta = $page_container;

			// Initialize meta data
			meta.data(current_page, 0);
			meta.data(items_per_page, options.items_per_page);

			// Get the total number of items
			var total_items = $item_container.children().size();

			// Calculate the number of pages needed
			var number_of_pages = Math.ceil(total_items / options.items_per_page);

			// Construct the nav bar
			var more = '<span class="ellipse more">...</span>';
			var less = '<span class="ellipse less">...</span>';
			var first = !options.show_first_last ? '' : '<a class="first_link ' + jquery_ui_default_class + '" href="">' + options.nav_label_first + '</a>';
			var last = !options.show_first_last ? '' : '<a class="last_link ' + jquery_ui_default_class + '" href="">' + options.nav_label_last + '</a>';

			var navigation_html = "";

			for (var i = 0; i < options.nav_order.length; i++) {
				switch (options.nav_order[i]) {
				case "first":
					navigation_html += first;
					break;
				case "last":
					navigation_html += last;
					break;
				case "next":
					navigation_html += '<a class="next_link ' + jquery_ui_default_class + '" href="">' + options.nav_label_next + '</a>';
					break;
				case "prev":
					navigation_html += '<a class="previous_link ' + jquery_ui_default_class + '" href="">' + options.nav_label_prev + '</a>';
					break;
				case "num":
					navigation_html += less;
					var current_link = 0;
					while (number_of_pages > current_link) {
						navigation_html += '<a class="page_link ' + jquery_ui_default_class + '" href="" longdesc="' + current_link + '">' + (current_link + 1) + '</a>';
						current_link++;
					}
					navigation_html += more;
					break;
				default:
					break;
				}

			}

			// And add it to the appropriate area of the DOM	
			$nav_panels = $page_container.find(options.nav_panel_id);
			$nav_panels.html(navigation_html).each(function() {

				$(this).find('.page_link:first').addClass('first');
				$(this).find('.page_link:last').addClass('last');

			});

			// Hide the more/less indicators
			$nav_panels.children('.ellipse').hide();

			// Set the active page link styling
			$nav_panels.find('.previous_link').next().next().addClass('active_page ' + jquery_ui_active_class);

			/* Setup Page Display */
			// And hide all pages
			$items.hide();
			// Show the first page			
			$items.slice(0, meta.data(items_per_page)).show();

			/* Setup Nav Menu Display */
			// Page number slices
			total_page_no_links = $page_container.find(options.nav_panel_id + ':first').children('.page_link').size();
			options.num_page_links_to_display = Math.min(options.num_page_links_to_display, total_page_no_links);

			$nav_panels.children('.page_link').hide(); // Hide all the page links
			// And only show the number we should be seeing
			$nav_panels.each(function() {
				$(this).children('.page_link').slice(0, options.num_page_links_to_display).show();
			});

			/* Bind the actions to their respective links */

			// Event handler for 'First' link
			$page_container.find('.first_link').click(function(e) {
				e.preventDefault();

				movePageNumbersRight($(this), 0);
				gotopage(0);
			});

			// Event handler for 'Last' link
			$page_container.find('.last_link').click(function(e) {
				e.preventDefault();
				var lastPage = total_page_no_links - 1;
				movePageNumbersLeft($(this), lastPage);
				gotopage(lastPage);
			});

			// Event handler for 'Prev' link
			$page_container.find('.previous_link').click(function(e) {
				e.preventDefault();
				showPrevPage($(this));
			});


			// Event handler for 'Next' link
			$page_container.find('.next_link').click(function(e) {
				e.preventDefault();
				showNextPage($(this));
			});

			// Event handler for each 'Page' link
			$page_container.find('.page_link').click(function(e) {
				e.preventDefault();
				gotopage($(this).attr('longdesc'));
			});

			// Goto the required page
			gotopage(parseInt(options.start_page));
			toggleMoreLess();
			if (!options.wrap_around) tagNextPrev();
		});

		function showPrevPage(e) {
			new_page = parseInt(meta.data(current_page)) - 1;

			// Check that we aren't on a boundary link
			if ($(e).siblings('.active_page').prev('.page_link').length == true) {
				movePageNumbersRight(e, new_page);
				gotopage(new_page);
			}
			else if (options.wrap_around) {
				gotopage(total_page_no_links - 1);
			}

		};

		function showNextPage(e) {
			new_page = parseInt(meta.data(current_page)) + 1;

			// Check that we aren't on a boundary link
			if ($(e).siblings('.active_page').next('.page_link').length == true) {
				movePageNumbersLeft(e, new_page);
				gotopage(new_page);
			}
			else if (options.wrap_around) {
				gotopage(0);
			}

		};
	
		function gotopage(page_num) {

			page_num = parseInt(page_num, 10)

			var ipp = parseInt(meta.data(items_per_page));

			// Find the start of the next slice
			start_from = page_num * ipp;

			// Find the end of the next slice
			end_on = start_from + ipp;
			// Hide the current page	
			var items = $items.hide().slice(start_from, end_on);

			items.show();

			// Reassign the active class
			$page_container.find(options.nav_panel_id).children('.page_link[longdesc=' + page_num + ']').addClass('active_page ' + jquery_ui_active_class).siblings('.active_page').removeClass('active_page ' + jquery_ui_active_class);

			// Set the current page meta data							
			meta.data(current_page, page_num);
			/*########## Ajout de l'option page courante + nombre de pages*/
	            	var $current_page = parseInt(meta.data(current_page)+1);
	            	// Get the total number of items
	            	var total_items = $item_container.children().size();
	            	// Calculate the number of pages needed
	            	var $number_of_pages = Math.ceil(total_items / options.items_per_page);
            		/*##################################################################*/
			$page_container.find(options.nav_info_id).html(options.nav_label_info.replace("{0}", start_from + 1).
			replace("{1}", start_from + items.length).replace("{2}", $items.length).replace("{3}", $current_page).replace("{4}", $number_of_pages));

			// Hide the more and/or less indicators
			toggleMoreLess();

			// Add a class to the next or prev links if there are no more pages next or previous to the active page
			tagNextPrev();

			// check if the onPage callback is available and call it
			if (typeof(options.onPageDisplayed) !== "undefined" ) {
				options.onPageDisplayed.call(this, page_num + 1)
			}

		}

		// Methods to shift the diplayed index of page numbers to the left or right


		function movePageNumbersLeft(e, new_p) {
			var new_page = new_p;

			var $current_active_link = $(e).siblings('.active_page');

			if ($current_active_link.siblings('.page_link[longdesc=' + new_page + ']').css('display') == 'none') {

				$nav_panels.each(function() {
					$(this).children('.page_link').hide() // Hide all the page links
					.slice(parseInt(new_page - options.num_page_links_to_display + 1), new_page + 1).show();
				});
			}

		}

		function movePageNumbersRight(e, new_p) {
			var new_page = new_p;

			var $current_active_link = $(e).siblings('.active_page');

			if ($current_active_link.siblings('.page_link[longdesc=' + new_page + ']').css('display') == 'none') {

				$nav_panels.each(function() {
					$(this).children('.page_link').hide() // Hide all the page links
					.slice(new_page, new_page + parseInt(options.num_page_links_to_display)).show();
				});
			}
		}

		// Show or remove the ellipses that indicate that more page numbers exist in the page index than are currently shown


		function toggleMoreLess() {

			if (!$nav_panels.children('.page_link:visible').hasClass('last')) {
				$nav_panels.children('.more').show();
			}
			else {
				$nav_panels.children('.more').hide();
			}

			if (!$nav_panels.children('.page_link:visible').hasClass('first')) {
				$nav_panels.children('.less').show();
			}
			else {
				$nav_panels.children('.less').hide();
			}
		}

		/* Add the style class ".no_more" to the first/prev and last/next links to allow custom styling */

		function tagNextPrev() {
			if ($nav_panels.children('.last').hasClass('active_page')) {
				$nav_panels.children('.next_link').add('.last_link').addClass('no_more ' + jquery_ui_disabled_class);
			}
			else {
				$nav_panels.children('.next_link').add('.last_link').removeClass('no_more ' + jquery_ui_disabled_class);
			}

			if ($nav_panels.children('.first').hasClass('active_page')) {
				$nav_panels.children('.previous_link').add('.first_link').addClass('no_more ' + jquery_ui_disabled_class);
			}
			else {
				$nav_panels.children('.previous_link').add('.first_link').removeClass('no_more ' + jquery_ui_disabled_class);
			}
		}

	};

})(jQuery);




			
			
				$('#paging_container2').pajinate();
			

			   
		</script>


				
<style>
.page_navigation , .alt_page_navigation{
	padding-bottom: 10px;
}

.page_navigation a, .alt_page_navigation a{
	padding:3px 5px;
	margin:2px;
	color:white;
	text-decoration:none;
	float: left;
	font-family: Tahoma;
	font-size: 12px;
	background-color:#DB5C04;
}
.active_page{
	background-color:white !important;
	color:black !important;
}	

</style>
		
		
		
		
		
		
		
<script>			
	var vm1 = new Vue({
			el : '#writerlist',
			data : {
				board_title: '',
				board_content:'',
				board_type : '',
				board_writer :'test writer',
				board_num :'10',
				board_pw:'',
				board_date:'',
				board_hit:'',
				board_own:'',
				board_cate:'',
				board_tag:''
				
			},
			methods : function boardlistgo () {
			    // 
			  
			    
		
			    axios.get('boardload.do', {
						params : {
							board_num : this.board_num,
							board_writer : this.board_writer
						}

					}).then(function(data){
						
						console.log(data.data);
						
						vm1.$data.board_title = data.data.board_title;
						vm1.$data.board_type = data.data.board_type;
						vm1.$data.board_pw = data.data.board_pw;
						vm1.$data.board_date = data.data.board_date;
						vm1.$data.board_cate = data.data.board_cate;
						vm1.$data.board_num = data.data.board_num;
						vm1.$data.board_writer = data.data.board_writer;
						vm1.$data.board_own = data.data.board_own;
						vm1.$data.board_hit = data.data.board_hit;
						vm1.$data.board_content = data.data.board_content;
						vm1.$data.board_tag = data.data.board_tag;
						
					});
			    		
					
			  } 
				
		})				
		
	</script>	
	
	
	
	
	
	
	
	
	
	
		
	
	
	
	
	
	
	



    <div class="parallax section dbcolor">
        <div class="container">
            <div class="row logos">
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_01.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_02.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_03.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_04.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_05.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_06.png" alt="" class="img-repsonsive"></a>
                </div>
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>About US</h3>
                        </div>
                        <p> Integer rutrum ligula eu dignissim laoreet. Pellentesque venenatis nibh sed tellus faucibus bibendum. Sed fermentum est vitae rhoncus molestie. Cum sociis natoque penatibus et magnis dis montes.</p>
                        <div class="footer-right">
							<ul class="footer-links-soi">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-github"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
							</ul><!-- end links -->
						</div>
                    </div><!-- end clearfix -->
                </div><!-- end col -->

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
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
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
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
            </div><!-- end row -->
        </div><!-- end container -->
    </footer><!-- end footer -->

    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-center">                   
                    <p class="footer-company-name">All Rights Reserved. &copy; 2018 <a href="#">SmartEDU</a> Design By : <a href="https://html.design/">html design</a></p>
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>












</body>
</html>