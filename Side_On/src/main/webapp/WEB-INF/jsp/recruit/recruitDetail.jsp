<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 상세 페이지 | Side-On</title>

<link type="text/css" rel="stylesheet" href="../css/RecruitHome_juri.css">

    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
   <%@ include file="../inc/header.jsp" %>
    <!-- Services-->
    
     <div class="container">
                <div style="background-color: antiquewhite; padding-top: 10%;">
                    <h2>[제목] 사이드 프로젝트 전용 홈페이지 만드는 프로젝트 팀원 모집 </h2>
                </div>
 	 </div>              
    
	<!-- 처음 -->
	<div class="container emp-profile" style="font-family: 'Noto Sans KR', sans-serif;">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="../img/bear2.jpg" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>
                        
                     <div>
                  		<h3 class="center">memberId 님</h3>
                  	</div>
                        
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h2>
                                    	프로젝트 이름 : Side-On
                                    </h2>
                                    <h4>
                                 		사이드 프로젝트가 메인인 홈페이지 제작
                                 		<hr>
                                    </h4>
                                   	<h5>지원 방법 : 무료 </h5>
                                   	<p>해당 게시글은 무료로 지원이 가능합니다</p>
                                   	
                                   	<h5>지원 방법 : 유료 ( 30,000원 )</h5>
                                   	<p>해당 게시글은 결제 후 지원이 가능합니다</p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Timeline</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="공유하기"/>
                    </div>
                  
                 
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                        <hr>
                        	 <%-- 리더 자기소개  --%>
                        	 <h6 class="center">안녕하세요. 현직 백엔드 개발자로 일하고 있는 케어베어라고 합니다.</h6>
								 <hr>                       
	                           <h5 class="center">모집 분야</h5>
	                            <div>
	                            <ul class="center" style="list-style: none; margin-top:5%; margin-bottom:5%" >
							 			<li>
							 				<span>프론트엔드 </span> <span> 0/2</span> <button>지원하기</button>
							 			</li>
							 			<li>
							 				<span>프론트엔드 </span> <span> 0/2</span> <button>지원하기</button>
							 			</li>
							 			<li>
							 				<span>프론트엔드 </span> <span> 0/2</span> <button>지원하기</button>
							 			</li>
							 			<li>
							 				<span>프론트엔드 </span> <span> 0/2</span> <button>지원하기</button>
							 			</li>
							 			<li>
							 				<span>프론트엔드 </span> <span> 0/2</span> <button>지원하기</button>
							 			</li>
					 			</ul>
					 		</div>	
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Kshiti123</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Kshiti Ghelani</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>kshitighelani@gmail.com</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>123 456 7890</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Profession</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Web Developer and Designer</p>
                                            </div>
                                        </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Experience</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Hourly Rate</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>10$/hr</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Projects</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>230</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>English Level</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Availability</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>6 months</p>
                                            </div>
                                        </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Your Bio</label><br/>
                                        <p>Your detail description</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>

	<!-- 끝 -->
		
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
   
</body>
</html>