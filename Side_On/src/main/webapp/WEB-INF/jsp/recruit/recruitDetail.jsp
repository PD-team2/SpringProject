<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 상세 페이지 | Side-On</title>

<link type="text/css" rel="stylesheet" href="../css/RecruitHome_juri_JHK.css">

<style>
.tags {
  list-style: none;
  margin: 0;
  overflow: hidden; 
  padding: 0;
}

.tags li {
  float: left; 
}

.tag {
  background: #eee;
  border-radius: 3px 0 0 3px;
  color: #999;
  display: inline-block;
  height: 26px;
  line-height: 26px;
  padding: 0 20px 0 23px;
  position: relative;
  margin: 0 10px 10px 0;
  text-decoration: none;
  -webkit-transition: color 0.2s;
}

.tag::before {
  background: #fff;
  border-radius: 10px;
  box-shadow: inset 0 1px rgba(0, 0, 0, 0.25);
  content: '';
  height: 6px;
  left: 10px;
  position: absolute;
  width: 6px;
  top: 10px;
}

.tag::after {
  background: #fff;
  border-bottom: 13px solid transparent;
  border-left: 10px solid #eee;
  border-top: 13px solid transparent;
  content: '';
  position: absolute;
  right: 0;
  top: 0;
}

.tag:hover {
  background-color: #ffc800;
  color: white;
}

.tag:hover::after {
   border-left-color: #ffc800; 
}
.box {
    width: 150px;
    height: 150px; 
    border-radius: 70%;
    overflow: hidden;
}
.profile {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

</style>
</head>
<body>
   <%@ include file="../inc/header.jsp" %>
    <!-- Services-->
        <section  >
            <div class="container">
                <div style="background-color: antiquewhite; padding-top: 10%;">
                    <h2>프로젝트 이름 </h2>
                </div>
                
			<div class="row" >
				  <div class="col-md-4" style="border: 1px solid">
				  
					  <h3  style="text-align:center;"> < 리더 > </h3>
					  <!--<i class="fas fa-user-circle fa-10x" ></i>  -->
					  
					  <div class="box" style="background: #BDBDBD;">
						    <img class="profile" src="/images/tistory.JPG">
						</div>
					  <img> 
					  <div>
			     		 <h4  style="text-align:center;">memberId님 </h4> 
					  </div>
				  </div>
				  
				  <div class="col-md-4" style="border: 1px solid; backgroud: gray;">
				 	<span>이러이러한프로젝트를 만들고 싶섭니다</span>
				  
				  </div>
				  
				  <div class="col-md-4" style="border: 1px solid">
				  .col-md-4
				  
				  </div>
			</div>
              
              
                 
            </div>
        </section>
        <!-- Portfolio Grid-->
        
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