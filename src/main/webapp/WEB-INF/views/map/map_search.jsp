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
	<div id="main-wrapper">
		<%@include file="/WEB-INF/views/inc/topbar.jsp" %>
		<%-- <%@include file="/WEB-INF/views/inc/selectbar.jsp" %> --%>
		<%@include file="/WEB-INF/views/inc/sidebar.jsp" %>
		<div class="page-wrapper">
			<div class="container-fluid">
				<div class="content" style="height:400px; float:left;">
					<div id="map" style="float: left; margin: auto; width:450px; height: 350px; float:left; border:1px solid black;">
					
					</div>
				</div>
			</div>
		<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
		</div>
		<!-- page-wrapper 끝 -->
	</div>
	<!-- wrapper 끝 -->
	<%-- <%@ include file="/WEB-INF/views/inc/bottombar.jsp" %> --%>
	<%@ include file="/WEB-INF/views/inc/script-common.jsp" %>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6a3dd312ac8afc0012c58d3a915c29b"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
	
</body>
</html>