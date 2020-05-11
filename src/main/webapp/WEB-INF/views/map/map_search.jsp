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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
					<div id="map" style="float: left; margin: auto; width:1200px; height: 400px; float:left; border:1px solid black;">
					
					</div>
				</div>
				<!-- 조회결과를 출력하기 위한 표 -->
				<table class="table" id="field-List">
						<thead>
							<tr>
								<th class="info text-center">이름</th>
								<th class="info text-center">종류</th>
								<th class="info text-center">주소</th>
								<th class="info text-center">위도</th>
								<th class="info text-center">경도</th>
								<th class="info text-center">사이트주소</th>
							</tr>
						</thead>
						<tbody>
					    	<c:choose>
					    		<c:when test="${fn:length(list) > 0}">
					    			<c:forEach var="item" items="${list}">
					    				<tr>
								            <td class="text-center">${item.nameField}</td>
								            <td class="text-center">${item.classField}</td>
								            <td class="text-center">${item.addrField}</td>
								            <td class="text-center">${item.ycodeField}</td>
								            <td class="text-center">${item.xcodeField}</td>								            
								            <td class="text-center">${item.siteUrlField}</td>
							        	</tr>
					    			</c:forEach>
					    		</c:when>
					    		<c:otherwise>
					    			<tr>
							            <td colspan="8" class="text-center" style="line-height: 100px;">
							                조회된 데이터가 없습니다.</td>
							        </tr>
					    		</c:otherwise>
					    	</c:choose>
						</tbody>
					</table>	
			</div>			
		<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
		</div>
		<!-- page-wrapper 끝 -->
	</div>
	<!-- wrapper 끝 -->
	<%-- <%@ include file="/WEB-INF/views/inc/bottombar.jsp" %> --%>
	<%@ include file="/WEB-INF/views/inc/script-common.jsp" %>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6a3dd312ac8afc0012c58d3a915c29b&libraries=services,clusterer,drawing"></script>
	<script>
		// 테이블의 Row 클릭시 값 가져오기
		$("#field-List tr").click(function(){ 	
	
			var str = ""
			//var tdArr = new Array();	// 배열 선언
			
			// 현재 클릭된 Row(<tr>)
			// alert(tr.text()) // 클릭된 Row의 모든 값
			var tr = $(this);
			var td = tr.children();
			
			var xCode = td.eq(3).text();
			var yCode = td.eq(4).text();
			
			// 값 확인
			//alert(xCode + ' ' + yCode);
			
			setCenter(xCode, yCode);
		});
		
		function setCenter(latitude, longitude) {            
		    // 이동할 위도 경도 위치를 생성합니다 
		    var moveLatLon = new kakao.maps.LatLng(latitude, longitude);
		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		    setMarker(latitude, longitude);
		}
		
		function setMarker(latitude, longitude) {
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(latitude, longitude); 

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
		}
	</script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.541, 126.986),
			level: 5
		};		
		
		var map = new kakao.maps.Map(container, options);

	</script>	

</body>
</html>