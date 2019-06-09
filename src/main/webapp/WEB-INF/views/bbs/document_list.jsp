<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/views/inc/head.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/document_list.css" />
	<style type="text/css">
		.container {
			max-width: 900px;
		}
		
		.page-header {
			margin: 0px;
		}
		
		@media (max-width: 768px) {
			.container {
				display: inline-block;
				margin: 0px;
			}
			
			.page-header {
				display: inline-block;
				margin-top: 10px;
			}
		}
	</style>
</head>
<body>
<%@ include file="/WEB-INF/views/inc/topboard.jsp" %>
<%@ include file="/WEB-INF/views/inc/sidebar.jsp" %>

<div class="con">
	<h1 class="page-header">${bbsName} - <small>글 목록</small></h1>
		
	<!-- 글 목록 시작 -->
	<div class="table-responsive">
		<table class="table table-hover">
		    <thead>
		        <tr>
		            <th class="text-center" style="width: 100px">번호</th>
		            <th class="text-center">제목</th>
		            <th class="text-center" style="width: 120px">작성자</th>
		            <th class="text-center" style="width: 100px">조회수</th>
		            <th class="text-center" style="width: 120px">작성일</th>
		        </tr>
		    </thead>
		    <tbody>
		    	<c:choose>
		    		<c:when test="${fn:length(documentList) > 0}">
		    			<c:forEach var="document" items="${documentList}">
		    				<tr>
					            <td class="text-center">${maxPageNo}</td>
					            <td>
					            	<c:url var="readUrl" value="/bbs/document_read.do">
					            		<c:param name="category" value="${document.category}" />
					            		<c:param name="document_id" value="${document.id}" />
					            	</c:url>
					            	<a href="${readUrl}">${document.subject}</a>
					            </td>
					            <td class="text-center">${document.writerName}</td>
					            <td class="text-center">${document.hit}</td>
					            <td class="text-center">${document.regDate }</td>
				        	</tr>
				        	<c:set var="maxPageNo" value="${maxPageNo-1}"/>
		    			</c:forEach>
		    		</c:when>
		    		<c:otherwise>
		    			<tr>
				            <td colspan="5" class="text-center" style="line-height: 100px;">
				                조회된 글이 없습니다.</td>
				        </tr>
		    		</c:otherwise>
		    	</c:choose>
		    </tbody>
		</table>
	</div>
	<!--// 글 목록 끝 -->

	<!-- 목록 페이지 하단부의 쓰기버튼+검색폼+페이지 번호 공통 영역 include -->
	<%@ include file="/WEB-INF/views/inc/bbs_list_bottom.jsp" %>
	<%@ include file="/WEB-INF/views/inc/script-common.jsp" %>
		
</div>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
<%@ include file="/WEB-INF/views/inc/bottombar.jsp" %>
</body>
</html>



