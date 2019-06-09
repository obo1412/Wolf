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
	
	<div class="con clear">
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
				<div class="icon icon-arrow-game-left icon-arrow-left PreSetVM">
					<div class="SetVerticalMid">
						<img src="${pageContext.request.contextPath}/assets/img/icon-arrow-game-left.png">
					</div>
				</div>
				<div class="icon icon-arrow-game-right icon-arrow-right PreSetVM">
					<div class="SetVerticalMid">
						<img src="${pageContext.request.contextPath}/assets/img/icon-arrow-game-right.png">
					</div>
				</div>
			</div>
	
	
			<div id="map" style="width:500px;height:400px; float:left; border:1px solid black;">
			
			</div>
			<input type="text" id="search-keyword" value="체육관" style="width:500px; height:50px; float:left; border: 1px solid black;">
			
		</div>
	</div>
	
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
	<%@ include file="/WEB-INF/views/inc/bottombar.jsp" %>
	<%@ include file="/WEB-INF/views/inc/script-common.jsp" %>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6a3dd312ac8afc0012c58d3a915c29b&libraries=services,clusterer,drawing"></script>
	<script>
		var infowindow = new daum.maps.InfoWindow({zIndex:1});
		
		var mapContainer = document.getElementById('map');
		var mapOptions = {
			center: new daum.maps.LatLng(33.450701, 126.570667),
			level: 3
		};
	
		var map = new daum.maps.Map(mapContainer, mapOptions);
		
		var searchKeyword = document.getElementById('search-keyword');
		
		/* setMap 라이브러리 기능확인중 */
		var places = new daum.maps.services.Places();
		var callback = function(result, status) {
		    if (status === daum.maps.services.Status.OK) {
		        console.log(result);
		    }
		};

		places.keywordSearch(searchKeyword, placesSearchCB);
		
		function placesSearchCB (data, status, pagination) {
		    if (status === daum.maps.services.Status.OK) {

		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        var bounds = new daum.maps.LatLngBounds();

		        for (var i=0; i<data.length; i++) {
		            displayMarker(data[i]);    
		            bounds.extend(new daum.maps.LatLng(data[i].y, data[i].x));
		        }       

		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		        map.setBounds(bounds);
		    } 
		}
		
		// 지도에 마커를 표시하는 함수입니다
		function displayMarker(place) {
		    
		    // 마커를 생성하고 지도에 표시합니다
		    var marker = new daum.maps.Marker({
		        map: map,
		        position: new daum.maps.LatLng(place.y, place.x) 
		    });

		    // 마커에 클릭이벤트를 등록합니다
		    daum.maps.event.addListener(marker, 'click', function() {
		        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
		        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
		        infowindow.open(map, marker);
		    });
		}
		/* setMap 라이브러리 기능확인중 끝 */
	</script>
</body>
</html>