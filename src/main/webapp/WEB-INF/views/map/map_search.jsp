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
				<select name="town" id="area2">
					<option value="">시/군/구 선택</option>
					<c:forEach var="a2item" items="${a2list}" varStatus="i">
						<option value="${a2item.id}">${a2item.name}</option>
					</c:forEach>
				</select>
				<div id="result"></div>
				<input type="button" value="지역게시판 입장" onclick="location.href='${pageContext.request.contextPath}/bbs/document_list.do?category=1001000'">
			</div>
			
		</div>
	</div>
	
	
	<script type="text/javascript">
		$("#area1").change(function(e) {
			e.preventDefault();
			
			var sltArea1 = $("#area1").find("option:selected").val();
			
			$.ajax({
				url: '${pageContext.request.contextPath}/map/map_search.do',
				method: 'get',
				data: { selectedArea1 : sltArea1 },
				dataType: 'html',
				success: function(req) {
					console.log(sltArea1);
					
				}
			});		//end ajax
		}); //end change
	</script>
	
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
	<%@ include file="/WEB-INF/views/inc/bottombar.jsp" %>
	<%@ include file="/WEB-INF/views/inc/script-common.jsp" %>

	
	
</body>
</html>