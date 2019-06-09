<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>

</head>
	<!-- 로고 영역 -->
	<div class="top-first-line clear">		
		<!-- 로고or그림 -->
		<div class="top-logo">
			<a href="${pageContext.request.contextPath}/index.do">
				<img src="http://placehold.it/200x100" />
			</a>
		</div>
		<!-- //로고or그림 -->
	
		<!--  반응형 메뉴 버튼 -->
		<div class="mb-nav-btn">
			<a href="#">
				<img src="${pageContext.request.contextPath}/assets/img/icon-mb-menu.png" alt="ic1" />
			</a>
		</div>
		<!-- // 반응형 메뉴 버튼 종료 -->
		
		<!-- 메인글자판 -->
		<div class="top-text">
			<a href="${pageContext.request.contextPath}/index.do">우리동네프로선수들</a>
		</div>
		<!-- //메인글자판 -->
			
		<div class="log-info-mb-btn">
			<a href="#">
				<img src="${pageContext.request.contextPath}/assets/img/icon-ps-info.png" alt="ic2" />
			</a>
		</div>
		
		<!-- 로그인 등 -->
		<div class="log-info">
			<ul>
				<li>
					<a href="#">로그인</a>
				</li>
				<li class="log-info-child">
					<a href="#">회원가입</a>
				</li>
			</ul>
		</div>
		<!-- //로그인 등 -->
	</div>
		
	
	<%-- 
	
		<div class="navbar-collapse collapse">
			<!-- 사이트 메뉴 -->
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/content/introduce.do">소개</a></li>
				<li><a href="${pageContext.request.contextPath}/bbs/document_list.do?category=notice">경기장 찾기</a></li>
				<li><a href="${pageContext.request.contextPath}/bbs/document_list.do?category=gallery">매칭하기</a></li>
				<li><a href="${pageContext.request.contextPath}/bbs/document_list.do?category=free">웃긴 자료</a></li>
				<li><a href="${pageContext.request.contextPath}/bbs/document_list.do?category=qna">질문/답변</a></li>
			</ul>
			<!-- //사이트 메뉴 종료 -->
			
			<!-- 로그인(메뉴 우측) -->
			<c:choose>
				<c:when test="${loginInfo==null}">
					<form class="navbar-form navbar-right" method="post" action="${pageContext.request.contextPath}/member/login_ok.do">
						<div class="form-group">
							<input type="text" name="user_id" placeholder="아이디" class="form-control">
						</div>
						<div class="form-group">
							<input type="password" name="user_pw" placeholder="비밀번호" class="form-control">
						</div>
						<button type="submit" class="btn btn-success">
							<i class="glyphicon glyphicon-user"></i>
						</button>
						<a href="${pageContext.request.contextPath}/member/join.do" class="btn btn-warning"><i class="glyphicon glyphicon-plus"></i></a>
						<a href="${pageContext.request.contextPath}/member/find_pw.do" class="btn btn-info"><i class="glyphicon glyphicon-search"></i></a>
					</form>
				</c:when>
				<c:otherwise>
					<!-- 로그인 된 경우 -->
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"
							style="padding:5px;">
							<!-- 쿠키값에 따른 프로필 이미지 표시 -->
							<c:if test="${cookie.profileThumbnail!=null}">
								<img src="${pageContext.request.contextPath}/
								download.do?file=${cookie.profileThumbnail.value}" class="img-circle"/>
							</c:if>
							<!-- 쿠키값에 따른 프로필 이미지 표시 끝 -->
							${loginInfo.name}님 <span class="caret"></span>
							</a>
							<!-- 로그인 한 경우 표시될 메뉴 -->
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a></li>
								<li><a href="${pageContext.request.contextPath}/member/edit.do">회원정보 수정</a></li>
								<li><a href="${pageContext.request.contextPath}/member/out.do">회원탈퇴</a></li>
							</ul>
						</li>
					</ul>
					<!-- //로그인 된 경우 -->
				</c:otherwise>
			</c:choose>
			<!-- 로그인(메뉴 우측) 종료 -->
		</div>
		<!-- //메뉴 영역 종료 -->
		 --%>
<!-- 메뉴바 종료 -->