<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
	
</head>
<!-- 메뉴바 -->
	<div class="sidebar">
		<!-- 사이트 메뉴 -->
		<ul class="nav">
			<li><a href="${pageContext.request.contextPath}/content/introduce.do">소개</a></li>
			<li><a href="${pageContext.request.contextPath}/bbs/document_list.do?category=notice">공지사항</a></li>
			<li><a href="${pageContext.request.contextPath}/bbs/document_list.do?category=gallery">매칭하기</a></li>
			<li><a href="${pageContext.request.contextPath}/bbs/document_list.do?category=free">웃긴 자료</a></li>
			<li><a href="${pageContext.request.contextPath}/bbs/document_list.do?category=qna">질문/답변</a></li>
			<li><a href="${pageContext.request.contextPath}/player/player_list.do">선수 목록</a></li>
			<li><a href="${pageContext.request.contextPath}/map/map_search.do">경기장 찾기</a></li>
		</ul>
		<!-- //사이트 메뉴 종료 -->
	</div>
