<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="host_version"> 

	<!-- Modal -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header tit-up">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Member Login</h4>
			</div>
			<div class="modal-body customer-box">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs">
					<li><a class="active" href="#Login" data-toggle="tab">로그인</a></li>
					<li><a href="#Registration" data-toggle="tab">가입하기</a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active" id="Login">
						<form role="form" class="form-horizontal">
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="email1" placeholder="아이디" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="exampleInputPassword1" placeholder="비밀번호" type="email">
								</div>
							</div>
							<div class="row">
								<div class="col-sm-10">
									<button type="submit" class="btn btn-light btn-radius btn-brd grd1">
										접속하기
									</button>
									<a class="for-pwd" href="javascript:;">비밀번호를 잊으셨나요?</a>
								</div>
							</div>
						</form>
					</div>
					<div class="tab-pane" id="Registration">
						<form role="form" class="form-horizontal">
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" placeholder="이름" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="email" placeholder="아이디" type="email">
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="password" placeholder="비밀번호" type="password">
								</div>
                            </div>

                            <div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="password-cf" placeholder="비밀번호확인" type="password">
								</div>
                            </div>

                            <div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="mobile" placeholder="전화번호" type="text">
								</div>
							</div>

							<div class="row">							
								<div class="col-sm-10">
									<button type="button" class="btn btn-light btn-radius btn-brd grd1">
										가입하기
									</button>
									<button type="button" class="btn btn-light btn-radius btn-brd grd1">
										취소</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	  </div>
	</div>





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
				<a class="navbar-brand" href="index.html">
					<img id="logo" src="images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-host" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
					<span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-host">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="index.html">메인</a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">MLOG</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">진로정보</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="course-grid-2.html">진로심리검사</a>
								<a class="dropdown-item" href="course-grid-3.html">학과정보</a>
								<a class="dropdown-item" href="course-grid-4.html">정보찾기</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">멘토찾기</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="blog.html">Blog </a>
								<a class="dropdown-item" href="blog-single.html">Blog single </a>
							</div>
						</li>
						<li class="nav-item"><a class="nav-link" href="teachers.html">마이페이지</a></li>
				
					</ul>
					<ul class="nav navbar-nav navbar-right">
                        <li><a class="hover-btn-new log orange" href="#" data-toggle="modal" data-target="#login"><span>login</span></a></li>
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
	
	
	
	
	
	
	
    <div id="overviews" class="section wb">
        <div class="container">
            <div class="row"> 
                <div class="col-lg-9 blog-post-single">
                    <div class="blog-item">
						<div class="image-blog">
							<img src="images/blog_single.jpg" alt="" class="img-fluid">
						</div>
						<div class="post-content">
							<div class="post-date">
								<span class="day">30</span>
								<span class="month">Nov</span>
							</div>
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
					</div>

	
					
					<div class="blog-author">
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
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					<div class="blog-comments">
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
					<div class="comments-form">
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
							<li><a href="#">Political Science</a></li>
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



	<script>			
	var vm1 = new Vue({
			el : '#overviews',
			data : {
				board_title: '',
				board_content:'',
				board_type : '',
				board_writer :'test writer',
				board_num :'2',
				board_pw:'',
				board_date:'',
				board_hit:'',
				board_own:'',
				board_cate:'',
				board_tag:''
				
			},
			mounted : function () {
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