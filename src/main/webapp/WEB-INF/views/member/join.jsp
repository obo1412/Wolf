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
	<title>Become a member</title>
	<%@ include file="/WEB-INF/views/inc/head.jsp" %>
	
	<style type="text/css">
		.m1 {
			padding-top: 100px;
		}
	</style>
	
</head>
<body>
	<%@include file="/WEB-INF/views/inc/topbar.jsp" %>
	<div class="container">
		<div class='page-header'>
			<h1>회원가입</h1>
		</div>
		<!-- 가입 폼 시작 -->
		<form class="form-horizontal" name="myform" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/member/join_ok.do">
			<div class="form-group">
				<label for='userid' class="col-md-2">아이디<span style="font-color: red;">*</span></label>
				<div class='col-md-10'>
					<input type="text" name='user_id' id="user_id" class="form-control" />
				</div>
			</div>
			
			<div class="form-group">
				<label for='password' class="col-md-2">비밀번호<span style="font-color: red;">*</span></label>
				<div class='col-md-10'>
					<input type="password" name='user_pw' id="user_pw" class="form-control" />
				</div>
			</div>
			
			<div class="form-group">
				<label for='password_re' class="col-md-2">비밀번호 확인<span style="font-color: red;">*</span></label>
				<div class='col-md-10'>
					<input type="password" name='user_pw_re' id="user_pw_re" class="form-control" />
				</div>
			</div>
			
			<div class="form-group">
				<label for='name' class="col-md-2">이름<span style="font-color: red;">*</span></label>
				<div class='col-md-10'>
					<input type="text" name='name' id="name" class="form-control" />
				</div>
			</div>
			
			<div class="form-group">
				<label for='email' class="col-md-2">이메일<span style="font-color: red;">*</span></label>
				<div class='col-md-10'>
					<input type="email" name='email' id="email" class="form-control" />
				</div>
			</div>
			
			<div class="form-group">
				<label for='tel' class="col-md-2">연락처<span style="font-color: red;">*</span></label>
				<div class='col-md-10'>
					<input type="tel" name='tel' id="email" class="form-control" placeholder="'-'없이 입력" />
				</div>
			</div>
			
			<div class="form-group">
				<label for='birthdate' class="col-md-2">생년월일<span style="font-color: red;">*</span></label>
				<div class='col-md-10'>
					<input type="date" name='birthdate' id="birthdate" class="form-control" placeholder="yyyymmdd" />
				</div>
			</div>
			
			<div class="form-group">
				<label for='gender1' class="col-md-2">성별<span style="font-color: red;">*</span></label>
				<div class='col-md-10'>
					<label class="radio-inline">
						<input type="radio" name="gender" id="gender1" value="M" /> 남자
					</label>
					<label class="radio-inline">
						<input type="radio" name="gender" id="gender2" value="F" /> 여자
					</label>
				</div>
			</div>
			
			<div class="form-group">
				<label for='postcode' class="col-md-2">우편번호</label>
				<div class='col-md-10 clearfix'>
					<input type="text" name='postcode' id="postcode" class="form-control pull-left"
						style='width:120px; margin-right:5px;' />
					<!-- 클릭시, Javascript 함수 호출 : openDaumPostcode() -->
					<input type='button' value='우편번호 찾기' class='btn btn-warning'
						onclick='execDaumPostcode("postcode", "addr1", "addr2")' />	
				</div>
			</div>
			
			<div class="form-group">
				<label for='addr1' class="col-md-2">주소</label>
				<div class='col-md-10'>
					<input type="text" name='addr1' id="addr1" class="form-control" />
				</div>
			</div>
			
			<div class="form-group">
				<label for='addr2' class="col-md-2">상세주소</label>
				<div class='col-md-10'>
					<input type="text" name='addr2' id="addr2" class="form-control" />
				</div>
			</div>
			
			<div class="form-group">
				<label for='profile_img' class="col-md-2">프로필 사진</label>
				<div class="col-md-10">
					<input type="file" name="profile_img" id="profile_img" class="form-control" />
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-md-offset-2 col-md-10">
					<button type="submit" class="btn btn-primary">가입하기</button>
					<button type="reset" class="btn btn-danger">다시작성</button>
				</div>
			</div>
		</form>
		<!-- 가입 폼 끝 -->
	</div>
	<%@ include file="/WEB-INF/views/inc/bottombar.jsp" %>
</body>
</html>