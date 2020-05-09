<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>
<head>
	<meta charset='utf-8' />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<title>선수 목록</title>
	<%@ include file="/WEB-INF/views/inc/head.jsp"%>
</head>

<body>
	<div id="main-wrapper">
	<%@include file="/WEB-INF/views/inc/topbar.jsp" %>
	<%@include file="/WEB-INF/views/inc/sidebar.jsp" %>
	<div class="page-wrapper">
	<div class="container-fluid">
		<div class="page-header clearfix">
			<h1 class='pull-left'>선수목록</h1>
			<!-- 검색폼 + 추가버튼 -->
			<div style='margin-top: 30px;' class="pull-right">
				<form method='get' action='${pageContext.request.contextPath}/player/player_list.do' style="width: 300px;">
					<div class="input-group">
						<input type="text" name='keyword' class="form-control" 
							placeholder="선수이름 검색" value="${keyword}" />
						<span class="input-group-btn">
							<button class="btn btn-success" type="submit">
								<i class='fas fa-search'></i>
							</button>
							<a href="${pageContext.request.contextPath}/player/player_add.do" class="btn btn-primary">선수추가</a>
						</span>
					</div>
				</form>
			</div>
		</div>

		<!-- 조회결과를 출력하기 위한 표 -->
		<table class="table">
			<thead>
				<tr>
					<th class="info text-center">선수번호</th>
					<th class="info text-center">이름</th>
					<th class="info text-center">아이디</th>
					<th class="info text-center">포지션</th>
					<th class="info text-center">소속팀</th>
					<th class="info text-center">점수</th>
				</tr>
			</thead>
			<tbody>
		    	<c:choose>
		    		<c:when test="${fn:length(list) > 0}">
		    			<c:forEach var="item" items="${list}">
		    				<tr>
					            <td class="text-center">${item.id}</td>
					            <td>
					            	<c:url var="readUrl" value="/player/player_view.do">
					            		<c:param name="id" value="${item.id}" />
					            	</c:url>
					            	<a href="${readUrl}">${item.name}</a>
					            </td>
					            <td class="text-center">${item.userId}</td>
					            <td class="text-center">${item.email}</td>
					            <td class="text-center">${item.privateOptionKey}</td>
					            <td class="text-center">${item.gender}</td>
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
		</div><!-- Page wrapper 끝 -->
	</div><!-- wrapper 끝 -->
	<%-- <%@ include file="/WEB-INF/views/inc/bottombar.jsp" %> --%>
	<%@ include file="/WEB-INF/views/inc/script-common.jsp" %>
</body>
</html>



