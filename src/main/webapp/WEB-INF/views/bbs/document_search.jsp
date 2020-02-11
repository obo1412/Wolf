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
	<%@include file="/WEB-INF/views/inc/topbar.jsp" %>
	<%@include file="/WEB-INF/views/inc/sidebar.jsp" %>
	
	<div class="con clear">
		<div class="content-box">
			<%@include file="/WEB-INF/views/inc/selectbar.jsp" %>
				
			<div class="content" style="height:400px; float:left;">
				<div id="map" style="float: left; margin: auto; width:450px; height: 350px; float:left; border:1px solid black;">
				
				</div>
			</div>
			
			<div>
				<select name="city" id="area1">
					<option value="">시/도 선택</option>
					<c:forEach var="aitem" items="${alist}" varStatus="i">
						<option value="${aitem.id}">${aitem.name}</option>
					</c:forEach>
				</select>
				<select name="town">
					<option value="">시/군/구 선택</option>
					<c:forEach var="a2item" items="${a2list}" varStatus="i">
						<option value="${a2item.id}">${a2item.name}</option>
					</c:forEach>
				</select>
				<input type="button" value="지역게시판 입장" onclick="location.href='${pageContext.request.contextPath}/bbs/document_list.do?category=1001000'">
			</div>
			
		</div>
	</div>
	
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
	<%@ include file="/WEB-INF/views/inc/bottombar.jsp" %>
	<%@ include file="/WEB-INF/views/inc/script-common.jsp" %>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6a3dd312ac8afc0012c58d3a915c29b&libraries=services,clusterer,drawing"></script>
	<script>
	
		var infowindow = new daum.maps.InfoWindow({zIndex:1});
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new daum.maps.LatLng(37.566826, 126.9786567), "C:/Users/OK-home"// 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };  
	
		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption);
		
		// 장소 검색 객체를 생성합니다
		var ps = new daum.maps.services.Places(); 

		// 키워드로 장소를 검색합니다
		ps.keywordSearch('성동구', placesSearchCB); 

		// 키워드 검색 완료 시 호출되는 콜백함수 입니다
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
		
		$(function() {
			$("#area1").change(function(e) {
				e.preventDefault();
				var selectedArea1 = $("#area1").val();
				$.ajax({
					url: '${pageContext.request.contextPath}/map/map_search.do',
					method: 'post',
					data: {selectedArea1:selectedArea1},
					dataType : 'html',
					success: function(req) {
						
					}
				});
				
			});
		});
		
	</script>
</body>
</html>