<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0,
	maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	<title>Our Hometown Professional</title>
	<%@ include file="/WEB-INF/views/inc/head.jsp" %>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/index.css" />
	<style type="text/css">
		
		/** 메인페이지 > 최근게시물 > 제목 영역 */
		.article-item .page-header {
			margin-top: 20px;
			margin-bottom: 0px;
			border-bottom: 0px;
		}
		
		/** 메인페이지 > 최근게시물 > 제목 영역 > 제목 텍스트 */
		.article-item h4 {
			font-weight: bold;
			margin-bottom: 0;
		}
		
		/** 메인페이지 > 최근게시물 > 제목 우측의 more 버튼 */
		.article-item .btn {
			
		}
		
		/** 메인페이지 > 최근게시물 > 글 목록 > 링크 */
		.article-item .list-group-item a {
			display: block;
			color: #222;
			white-space: nowrap;
			overflow: hidden;
			text-overflow: ellipsis;
		}	
	</style>
</head>
<body>
	<%@include file="/WEB-INF/views/inc/topboard.jsp" %>
	<%@include file="/WEB-INF/views/inc/sidebar.jsp" %>
	
	<div class="container">
		<div class="content-box">
			<%@include file="/WEB-INF/views/inc/selectbar.jsp" %>
			<div class="content search-game">
				<!-- 검색 폼 -->
			    <div class="pull-left">
					<form method="get" action="${pageContext.request.contextPath}/bbs/document_list.do" style="width: 200px">
						<input type="hidden" name="category" value="${category}" />
						<div class="input-group">
							<input type="text" name="keyword" class="form-control" 
								placeholder="제목,내용 검색"  value="${keyword}"/>
							<span class="input-group-btn">
								<button class="btn btn-success" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</span>
						</div>
					</form>
				</div>
			</div>
			<div class="content hot-game">
				<div class="icon icon-arrow-game-left icon-arrow-left imgVerticalMiddle">
					<img src="${pageContext.request.contextPath}/assets/img/icon-arrow-game-left.png">
				</div>
				<div class="icon icon-arrow-game-right icon-arrow-right imgVerticalMiddle">
					<img src="${pageContext.request.contextPath}/assets/img/icon-arrow-game-right.png">
				</div>
			</div>
			
			<!-- 공지사항 -->
			<div class="content article-item notice-board">
				<div class="page-header clearfix">
					<h4 class="pull-left">공지사항</h4>
					<div class="pull-right">
						<a href="${pageContext.request.contextPath}/bbs/document_list.do?category=notice" class="btn btn-warning btn-xs">more</a>
					</div>
				</div>
				
				<ul class="list-group">
					<c:forEach var="document" items="${noticeList}">
						<li class="list-group-item">
							<a href="${pageContext.request.contextPath}/bbs/document_read.do?category=${document.category}&document_id=${document.id}">${document.subject}</a>
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
						<a href="${pageContext.request.contextPath}/bbs/document_list.do?category=free" class="btn btn-warning btn-xs">more</a>
					</div>
				</div>
				
				<ul class="list-group">
					<c:forEach var="document" items="${freeList}">
						<li class="list-group-item">
							<a href="${pageContext.request.contextPath}/bbs/document_read.do?category=${document.category}&document_id=${document.id}">${document.subject}</a>
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
						<a href="${pageContext.request.contextPath}/bbs/document_list.do?category=qna" class="btn btn-warning btn-xs">more</a>
					</div>
				</div>
				
				<ul class="list-group">
					<c:forEach var="document" items="${qnaList}">
						<li class="list-group-item">
							<a href="${pageContext.request.contextPath}/bbs/document_read.do?category=${document.category}&document_id=${document.id}">${document.subject}</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!-- 질문답변 끝 -->
			
		</div>
	</div>
	
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
	<%@ include file="/WEB-INF/views/inc/bottombar.jsp" %>
	<%@ include file="/WEB-INF/views/inc/script-common.jsp" %>

	<script type="text/javascript">

	</script>
</body>
</html>