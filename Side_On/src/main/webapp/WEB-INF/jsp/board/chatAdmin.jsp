<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<%@ include file="../inc/adminHeadLink.jsp" %>
	<title>1:1 chat|Admin </title>
	<link type="text/css" rel="stylesheet" href="../css/chat_JHK.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="../js/chat_JHK.js"></script>
</head>

<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
	
        <!-- Sidebar (사이드바) -->
        <%@ include file="../inc/adminSideNav.jsp" %>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar (상단바) -->
                <%@ include file="../inc/adminTopNav.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">1:1 채팅문의</h1>
                    </div>

                    <!-- 카드 Row, 방문자수, 신고수, 현재날짜 -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                               하루 결제 건수 
                                               </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="far fa-meh-blank fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                이번 달 결제 건수</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">3,174</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-meh-blank fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-danger shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                                총 금액</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">3</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-ghost fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                       	</div>
                       
                       <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-8 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Date</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            	<c:set var="today" value="<%=new java.util.Date()%>" />
                                            	<c:set var="date"><fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></c:set>
                                            	<c:out value="${date}" />
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->

                    <div class="row">

                        <!-- Notice List 상위 5개 -->
                        <div class="col-12">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">채팅창</h6>
                                    
                                </div>
                                <!-- Card Body -->
                                <div id="container" class="container">
									<div class="ChatForm">
									<input type="hidden" id="sessionId" value="">
									<div id="chating" class="chating">
									</div>
									
									<div id="yourName">
										<table class="inputTable">
											<tr>
												
												<th><input type="text" name="userName" id="userName" value="${dto.memberId}"></th>
												<th><button onclick="chatName()" id="startBtn" class="btn-warning">이름 등록</button></th>
											</tr>
										</table>
									</div>
									<div id="yourMsg">
										<table class="inputTable">
											<tr>
												
												<th><input id="chatting" placeholder="보내실 메시지를 입력하세요."></th>
												<th><button onclick="send()" id="sendBtn" class="btn-warning">보내기</button></th>
											</tr>
										</table>
									</div>
								</div>
							</div>  


                        <!-- Browser Column -->

                        <div class="col-lg-6 mb-4">

                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Team2 Project 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
	
    <%@ include file="../inc/adminBodyLink.jsp" %>

</body>

</html>