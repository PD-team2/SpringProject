<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
     	<title>팀원찾기 | Side-On</title>
     
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../css/RecruitHome_juri.css" rel="stylesheet" />
        
        <script>
        
        function applyCheck(){
        	
        	var target = document.getElementById("part"); 
        	var value =  target.options[target.selectedIndex].value;   
        	
        	
        	if(value == "null"){
        		alert('[안내] 희망 포지션을 선택해주세요.');
        		$('#part').focus();
        		return false;
        	}
        	
        	$('#position').val(value);
        }
        
        </script>
        
        <script>

        </script>
        
    </head>
    <body>
        <!-- navibar -->
       <%@ include file="../inc/header.jsp" %>
    
    
        <!-- Header-->
        <header class="bg-warning py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                <!-- 헤더...어떻게... -->
                <div style="padding-top: 8%;">
                    <h1 class="display-5 fw-bolder">지원하기</h1>
				</div>
				</div>
			</div>
        </header>
        
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="justify-content-center">
					  <form action="/recruit/apply/complete" method="post" name="applyForm" id="applyForm">
					  <fieldset>
						<div class="justify-content-center text-center">
					
						</div>
							
						    <div class="form-group">
						      <input type="text" class="form-control" id="exampleInputTitle" aria-describedby="title" placeholder="${list.title }"disabled>
						    	
						    	<!-- 글번호 -->
						    	<input type="hidden" id="recruit_num" name="recruit_num" value="${list.recruit_num }">
						    </div>
									
						    <div class="form-group">
						      <label for="examplePosition" class="form-label mt-4">희망포지션</label>
						      <select class="form-select" id="part" name="part" required="required">
						      
						      <option value="null">희망 포지션을 선택해주세요</option>
						      
						       <c:if test="${ list.front != null  && list.front > 0}">
						        <option  value="front">Front-end(프론트)</option>
						        </c:if>
						        
						        <c:if test="${ list.back != null  && list.back > 0}">
						        <option  value="back">Back-end(백엔드)</option>
						        </c:if>	
						        
						        <c:if test="${ list.aos != null  && list.aos > 0}">
						        <option  value="aos">AOS(안드로이드)</option>
						        </c:if>
						        
						        <c:if test="${ list.ios != null  && list.ios > 0}">
						        <option  value="ios">IOS(애플)</option>
						        </c:if>
						        
						        <c:if test="${ list.server != null  && list.server > 0}">
						        <option value="server">Server(서버)</option>
						        </c:if>
						        
						        <c:if test="${ list.uxui != null  && list.uxui > 0}">
								<option  value="uxui">UI/UX</option>
								</c:if>
								
								<c:if test="${ list.plan != null  && list.plan > 0}">
								<option  value="plan">기획</option>
								</c:if>
								
								<c:if test="${ list.pm != null  && list.pm > 0}">
								<option value="pm" >PM(Project Manager)</option>
								</c:if>
								
						      </select>
						      <input type="hidden" id="position" name="position">
						    </div>
						    
						    <div class="form-group">
						      <label for="exampleTextarea" class="form-label mt-4">자기소개</label>
						      <textarea class="form-control" id="message" name="message" placeholder="자유롭게 자신을 소개해주세요." rows="3" maxlength="30" required></textarea>
							   
						    </div>

							<br>
							<br>
							
							<div class="justify-content-center text-center">
						    <button type="submit" class="btn btn-warning" onclick="applyCheck();">등록</button>
							</div>
							
						  </fieldset>
						</form>
					 </div>
	                    </div>
        </section>
        <!-- Footer-->

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
