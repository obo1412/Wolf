<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/views/inc/head.jsp" %>
</head>
<body>
<div id="main-wrapper">
		<%@ include file="/WEB-INF/views/inc/topbar.jsp"%>
		<%@include file="/WEB-INF/views/inc/sidebar.jsp"%>
	<div class="page-wrapper">
	<form class="form-horizontal" method="post" enctype="multipart/form-data"
		action="${pageContext.request.contextPath}/bbs/copy_copy_convert.do">
		<!-- 버튼들 -->
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10" align="center">
				<br/>
				<button type="submit" class="btn btn-primary">실행 !!</button>
				<br/>
			</div>
		</div>
		
	</form>
</div>
</div>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>