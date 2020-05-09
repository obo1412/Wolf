<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>
<head>
	<meta charset='utf-8' />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<title>선수 추가</title>
	<%@ include file="/WEB-INF/views/inc/head.jsp"%>
</head>
<style>
div #login_wrapper {
     height: 50px;     
     display: flex;
     align-items: center;     
}
</style>
<body>
	<div id="main-wrapper">
	<%@include file="/WEB-INF/views/inc/topbar.jsp" %>
	<%@include file="/WEB-INF/views/inc/sidebar.jsp" %>
	<div class="page-wrapper">
	<div class="container-fluid">
		<div class="page-header clearfix">
			<h1 class='pull-left'>선수추가</h1>
			<div style='margin-top: 30px;' class="pull-right">
				<form method='post' action='${pageContext.request.contextPath}/player/player_add_ok.do' style="width: 300px;">
					<div id="login_wrapper" class="input-group">	     					

					<div>
						<input type="text" name="name" class="form-control" placeholder="선수명"/>					
					</div>
					<div>
						<input type="text" name="userId" class="form-control" placeholder="선수ID" />					
					</div>					
					<div>
						<input type="text" name='userPw' class="form-control" placeholder="선수PW"  />					
					</div>
					<div>
						<input type="text" name='email' class="form-control" placeholder="이메일" />					
					</div>
					<div>
						<input type="text" name='gender' class="form-control" placeholder="성별" />					
					</div>					
					<div>
						<input type="text" name='birthdate' class="form-control" placeholder="생일"  />					
					</div>
					<div>
						<input type="text" name='tel' class="form-control" placeholder="전화번호" />					
					</div>
					<div>
						<input type="text" name='postcode' class="form-control" placeholder="우편번호"  />					
					</div>
					<div>
						<input type="text" name='addr1' class="form-control" placeholder="주소1"  />					
					</div>
					<div>
						<input type="text" name='addr2' class="form-control" placeholder="주소2"  />					
					</div>
					<div>
						<input type="text" name='profileImg' class="form-control" placeholder="프로필" />					
					</div>									

					<div>
						<button type="submit" class="btn btn-primary">확인</button>
					</div>
					</div>
				</form>
			</div>
		</div>

	</div>
	
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
		</div><!-- Page wrapper 끝 -->
	</div><!-- wrapper 끝 -->
	<%@ include file="/WEB-INF/views/inc/script-common.jsp" %>
</body>
</html>