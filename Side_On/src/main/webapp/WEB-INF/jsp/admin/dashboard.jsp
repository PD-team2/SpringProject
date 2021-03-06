<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<%@ include file="../inc/adminHeadLink.jsp" %>
	<title>Admin Dashboard</title>
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
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    </div>

                    <!-- 카드 Row, 방문자수, 신고수, 현재날짜 -->
                    <div class="row">
                       <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-6 col-md-6 mb-4">
                            <div class="card border-left-danger shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                                미처리 신고</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            	<c:out value="${restCount}"></c:out>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-ghost fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                       	</div>
                       
                       <!-- Pending Requests Card Example -->
                        <div class="col-xl-6 col-md-6 mb-4">
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
                        <div class="col-6">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Notice</h6>
                                    
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
				                		<div class="container">
                							<div class="row">
                								<table class="table" style="text-align: center; border: 1px solid #dddddd;">
                									<thead>
                										<tr>
                											<th style="background-color: #eeeeee; text-align: center;">No</th>
                											<th style="background-color: #eeeeee; text-align: center;">Title</th>
                											<th style="background-color: #eeeeee; text-align: center;">게시일</th>
                										</tr>
                									</thead>
                									
                									<tbody>
                										<c:forEach var="dto" items="${noticeList}" varStatus="status">
                											<tr>
	               												<th>${dto.noticeNo}</th>
	               												<th><a href="../notice/adminNoticeDetail?noticeNo=${dto.noticeNo}" style="color: #3f3f3f;">${dto.noticeTitle}</a></th>
	               												<th>${dto.noticeDate}</th>
	               											</tr>
                										</c:forEach>
                									</tbody>
                								</table>
                							</div>
                						</div>
                					</div>
                                </div>
                        </div>


                        <!-- Rest List 상위 5개 -->
                        <div class="col-6">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary"><a href="../rest/restList">Rest</a></h6>
                                    
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
				                		<div class="container">
                							<div class="row">
                								<table class="table" style="text-align: center; border: 1px solid #dddddd;">
                									<thead>
                										<tr>
                											<th style="background-color: #eeeeee; text-align: center;">No</th>
                											<th style="background-color: #eeeeee; text-align: center;">번호</th>
                											<th style="background-color: #eeeeee; text-align: center;">접수</th>
                											<th style="background-color: #eeeeee; text-align: center;">상태</th>
                										</tr>
                									</thead>
                									
                									<tbody>
                										<c:forEach var="rdto" items="${restList}" varStatus="status">
                											<tr>
	               												<th>${rdto.restNo}</th>
	               												<th>${rdto.reason}</th>
	               												<th>${rdto.restEnroll}</th>
	               												<th>
						                							<c:choose>
						                								<c:when test="${rdto.restCheck eq 'F'}">처리요청</c:when>
						                								<c:when test="${rdto.restCheck eq 'T'}">처리완료</c:when>
						                							</c:choose>
						                						</th>
						                					</tr>
                										</c:forEach>
                									</tbody>
                								</table>
                							</div>
                						</div>
                					</div>
                                </div>
                        	</div>

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