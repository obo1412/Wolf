<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
	<style type="text/css">	
		.bottombar {
			border-top: 1px solid black;
			background-color: white;
		}
	</style>
</head>
<!-- 메뉴바 -->
<div class="navbar navbar-fixed-bottom">
	<div class="container bottombar">
		<!-- 메뉴 영역 -->
			<!-- 사이트 메뉴 -->
			<ul class="nav navbar-nav navbar-static-bottom">
				<li><a class="btm-ic0 col-xs-2 glyphicon glyphicon-home" href="${pageContext.request.contextPath}/index.do"></a></li>
				<li><a class="btm-ic1 col-xs-2 glyphicon glyphicon-heart-empty" href="${pageContext.request.contextPath}/content/introduce.do"></a></li>
				<li><a class="btm-ic3 col-xs-2 glyphicon glyphicon-wrench" href="#"></a></li>
				<li><a class="btm-ic4 col-xs-2 glyphicon glyphicon-globe" href="#"></a></li>
			</ul>
			<!-- //사이트 메뉴 종료 -->
		<!-- //메뉴 영역 종료 -->
	</div>
</div>
<!-- 메뉴바 종료 -->