<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,
	maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<title>Our Hometown Professional</title>
<%@ include file="/WEB-INF/views/inc/head.jsp"%>
<style type="text/css">
</style>
</head>
<body>
	<div id="main-wrapper">

		<%@include file="/WEB-INF/views/inc/topbar.jsp"%>
		<%@include file="/WEB-INF/views/inc/sidebar.jsp"%>

		<div class="page-wrapper">

			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h5 class="card-title">Calender</h5>
						<div class="card">
							<div class="">
								<div class="row">
									<div class="col-lg-3 border-right p-r-0">
										<div class="card-body border-bottom">
											<h4 class="card-title m-t-10">Drag n Drop Event</h4>
										</div>
										<div class="card-body">
											<div class="row">
												<div class="col-md-12">
													<div id="calendar-events" class="">
														<div class="calendar-events m-b-20" data-class="bg-info">
															<i class="fa fa-circle text-info m-r-10"></i>Event One
														</div>
														<div class="calendar-events m-b-20"
															data-class="bg-success">
															<i class="fa fa-circle text-success m-r-10"></i> Event
															Two
														</div>
														<div class="calendar-events m-b-20" data-class="bg-danger">
															<i class="fa fa-circle text-danger m-r-10"></i>Event
															Three
														</div>
														<div class="calendar-events m-b-20"
															data-class="bg-warning">
															<i class="fa fa-circle text-warning m-r-10"></i>Event
															Four
														</div>
													</div>
													<!-- checkbox -->
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="drop-remove"> <label
															class="custom-control-label" for="drop-remove">Remove
															after drop</label>
													</div>
													<a href="javascript:void(0)" data-toggle="modal"
														data-target="#add-new-event"
														class="btn m-t-20 btn-info btn-block waves-effect waves-light">
														<i class="ti-plus"></i> Add New Event
													</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-9">
										<div class="card-body b-l calender-sidebar">
											<div id="calendar"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- container-fluid 끝 -->
			<%@ include file="/WEB-INF/views/inc/footer.jsp"%>
		</div>
		<!-- Page wrapper 끝 -->
	</div>
	<!-- wrapper 끝 -->

	<%-- <%@ include file="/WEB-INF/views/inc/bottombar.jsp" %> --%>
	<%@ include file="/WEB-INF/views/inc/bottom_script_common.jsp"%>

	<script type="text/javascript">
		
	</script>

</body>
</html>

<%-- <div class="con clear">
				<div class="content-box">
					<%@include file="/WEB-INF/views/inc/selectbar.jsp"%>
					<div class="content search-game">
						<!-- 검색 폼 -->
						<div class="pull-left">
							<form method="get"
								action="${pageContext.request.contextPath}/bbs/document_list.do"
								style="width: 200px">
								<input type="hidden" name="category" value="${category}" />
								<div class="input-group">
									<input type="text" name="keyword" class="form-control"
										placeholder="제목,내용 검색" value="${keyword}" /> <span
										class="input-group-btn">
										<button class="btn btn-success" type="submit">
											<i class="glyphicon glyphicon-search"></i>
										</button>
									</span>
								</div>
							</form>
						</div>
					</div>
					<div class="content hot-game">
						<div class="icon icon-arrow-game-left icon-arrow-left PreSetVM">
							<div class="SetVerticalMid">
								<img
									src="${pageContext.request.contextPath}/assets/img/icon-arrow-game-left.png">
							</div>
						</div>
						<div class="icon icon-arrow-game-right icon-arrow-right PreSetVM">
							<div class="SetVerticalMid">
								<img
									src="${pageContext.request.contextPath}/assets/img/icon-arrow-game-right.png">
							</div>
						</div>
					</div>

					<!-- 공지사항 -->
					<div class="content article-item notice-board">
						<div class="page-header clearfix">
							<h4 class="pull-left">공지사항</h4>
							<div class="pull-right">
								<a
									href="${pageContext.request.contextPath}/bbs/document_list.do?category=notice"
									class="btn btn-warning btn-xs">more</a>
							</div>
						</div>

						<ul class="list-group">
							<c:forEach var="document" items="${noticeList}">
								<li class="list-group-item"><a
									href="${pageContext.request.contextPath}/bbs/document_read.do?category=${document.category}&document_id=${document.id}">${document.subject}</a>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!-- 공지사항 끝 -->

					<!-- 자유게시판 -->
					<div class="content article-item free-board">
						<div class="page-header clearfix">
							<h4 class="pull-left">자유게시판</h4>
							<div class="pull-right">
								<a
									href="${pageContext.request.contextPath}/bbs/document_list.do?category=free"
									class="btn btn-warning btn-xs">more</a>
							</div>
						</div>

						<ul class="list-group">
							<c:forEach var="document" items="${freeList}">
								<li class="list-group-item"><a
									href="${pageContext.request.contextPath}/bbs/document_read.do?category=${document.category}&document_id=${document.id}">${document.subject}</a>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!-- 자유게시판 끝 -->

					<!-- 질문답변 -->
					<div class="content article-item">
						<div class="page-header clearfix">
							<h4 class="pull-left">질문답변</h4>
							<div class="pull-right">
								<a
									href="${pageContext.request.contextPath}/bbs/document_list.do?category=qna"
									class="btn btn-warning btn-xs">more</a>
							</div>
						</div>

						<ul class="list-group">
							<c:forEach var="document" items="${qnaList}">
								<li class="list-group-item"><a
									href="${pageContext.request.contextPath}/bbs/document_read.do?category=${document.category}&document_id=${document.id}">${document.subject}</a>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!-- 질문답변 끝 -->

				</div>
			</div> --%>