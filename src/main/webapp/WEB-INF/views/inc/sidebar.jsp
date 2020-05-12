<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<head>
<style type="text/css">
</style>
</head>

<aside class="left-sidebar" data-sidebarbg="skin5">
	<!-- Sidebar scroll-->
	<div class="scroll-sidebar">
		<!-- Sidebar navigation-->
		<nav class="sidebar-nav">
			<ul id="sidebarnav" class="p-t-30">
				<li class="sidebar-item"><a
					class="sidebar-link waves-effect waves-dark sidebar-link"
					href="${pageContext.request.contextPath}/bbs/document_list.do?category=notice" aria-expanded="false"><i
						class="mdi mdi-view-dashboard"></i><span class="hide-menu">공지사항</span></a></li>
				<li class="sidebar-item"><a
					class="sidebar-link waves-effect waves-dark sidebar-link"
					href="${pageContext.request.contextPath}/map/map_search.do" aria-expanded="false"><i
						class="mdi mdi-chart-bar"></i><span class="hide-menu">경기장 찾기</span></a></li>
				<li class="sidebar-item"><a
					class="sidebar-link waves-effect waves-dark sidebar-link"
					href="${pageContext.request.contextPath}/player/player_list.do" aria-expanded="false"><i
						class="mdi mdi-chart-bubble"></i><span class="hide-menu">선수목록</span></a></li>
				<li class="sidebar-item"><a
					class="sidebar-link waves-effect waves-dark sidebar-link"
					href="tables.html" aria-expanded="false"><i
						class="mdi mdi-border-inside"></i><span class="hide-menu">웃긴 자료</span></a></li>
				<%-- <li class="sidebar-item"><a
					class="sidebar-link waves-effect waves-dark sidebar-link"
					href="${pageContext.request.contextPath}/field/insert_field.do" aria-expanded="false"><i
						class="mdi mdi-blur-linear"></i><span class="hide-menu">운동장정보 일괄등록</span></a></li> --%>

				<li class="sidebar-item"><a
					class="sidebar-link has-arrow waves-effect waves-dark"
					href="javascript:void(0)" aria-expanded="false"><i
						class="mdi mdi-receipt"></i><span class="hide-menu">Forms </span></a>
					<ul aria-expanded="false" class="collapse  first-level">
						<li class="sidebar-item"><a href="form-basic.html"
							class="sidebar-link"><i class="mdi mdi-note-outline"></i><span
								class="hide-menu"> Form Basic </span></a></li>
						<li class="sidebar-item"><a href="form-wizard.html"
							class="sidebar-link"><i class="mdi mdi-note-plus"></i><span
								class="hide-menu"> Form Wizard </span></a></li>
					</ul></li>
				<li class="sidebar-item"><a
					class="sidebar-link waves-effect waves-dark sidebar-link"
					href="pages-buttons.html" aria-expanded="false"><i
						class="mdi mdi-relative-scale"></i><span class="hide-menu">Buttons</span></a></li>
				<li class="sidebar-item"><a
					class="sidebar-link has-arrow waves-effect waves-dark"
					href="javascript:void(0)" aria-expanded="false"><i
						class="mdi mdi-face"></i><span class="hide-menu">Icons </span></a>
					<ul aria-expanded="false" class="collapse  first-level">
						<li class="sidebar-item"><a href="icon-material.html"
							class="sidebar-link"><i class="mdi mdi-emoticon"></i><span
								class="hide-menu"> Material Icons </span></a></li>
						<li class="sidebar-item"><a href="icon-fontawesome.html"
							class="sidebar-link"><i class="mdi mdi-emoticon-cool"></i><span
								class="hide-menu"> Font Awesome Icons </span></a></li>
					</ul></li>
				<li class="sidebar-item"><a
					class="sidebar-link waves-effect waves-dark sidebar-link"
					href="pages-elements.html" aria-expanded="false"><i
						class="mdi mdi-pencil"></i><span class="hide-menu">Elements</span></a></li>
				<li class="sidebar-item"><a
					class="sidebar-link has-arrow waves-effect waves-dark"
					href="javascript:void(0)" aria-expanded="false"><i
						class="mdi mdi-move-resize-variant"></i><span class="hide-menu">Addons
					</span></a>
					<ul aria-expanded="false" class="collapse  first-level">
						<li class="sidebar-item"><a href="index2.html"
							class="sidebar-link"><i class="mdi mdi-view-dashboard"></i><span
								class="hide-menu"> Dashboard-2 </span></a></li>
						<li class="sidebar-item"><a href="pages-gallery.html"
							class="sidebar-link"><i class="mdi mdi-multiplication-box"></i><span
								class="hide-menu"> Gallery </span></a></li>
						<li class="sidebar-item"><a href="pages-calendar.html"
							class="sidebar-link"><i class="mdi mdi-calendar-check"></i><span
								class="hide-menu"> Calendar </span></a></li>
						<li class="sidebar-item"><a href="pages-invoice.html"
							class="sidebar-link"><i class="mdi mdi-bulletin-board"></i><span
								class="hide-menu"> Invoice </span></a></li>
						<li class="sidebar-item"><a href="pages-chat.html"
							class="sidebar-link"><i class="mdi mdi-message-outline"></i><span
								class="hide-menu"> Chat Option </span></a></li>
					</ul></li>
				<li class="sidebar-item"><a
					class="sidebar-link has-arrow waves-effect waves-dark"
					href="javascript:void(0)" aria-expanded="false"><i
						class="mdi mdi-account-key"></i><span class="hide-menu">Authentication
					</span></a>
					<ul aria-expanded="false" class="collapse  first-level">
						<li class="sidebar-item"><a href="authentication-login.html"
							class="sidebar-link"><i class="mdi mdi-all-inclusive"></i><span
								class="hide-menu"> Login </span></a></li>
						<li class="sidebar-item"><a
							href="authentication-register.html" class="sidebar-link"><i
								class="mdi mdi-all-inclusive"></i><span class="hide-menu">
									Register </span></a></li>
					</ul></li>
				<li class="sidebar-item"><a
					class="sidebar-link has-arrow waves-effect waves-dark"
					href="javascript:void(0)" aria-expanded="false"><i
						class="mdi mdi-alert"></i><span class="hide-menu">Errors </span></a>						
					<ul aria-expanded="false" class="collapse  first-level">
						<li class="sidebar-item"><a href="error-403.html"
							class="sidebar-link"><i class="mdi mdi-alert-octagon"></i><span
								class="hide-menu"> Error 403 </span></a></li>
						<li class="sidebar-item"><a href="error-404.html"
							class="sidebar-link"><i class="mdi mdi-alert-octagon"></i><span
								class="hide-menu"> Error 404 </span></a></li>
						<li class="sidebar-item"><a href="error-405.html"
							class="sidebar-link"><i class="mdi mdi-alert-octagon"></i><span
								class="hide-menu"> Error 405 </span></a></li>
						<li class="sidebar-item"><a href="error-500.html"
							class="sidebar-link"><i class="mdi mdi-alert-octagon"></i><span
								class="hide-menu"> Error 500 </span></a></li>
					</ul></li>
					
				<li class="sidebar-item"><a
					class="sidebar-link waves-effect waves-dark sidebar-link"
					href="${pageContext.request.contextPath}/bulpan/bulpan_home.do" aria-expanded="false"><i
						class="mdi mdi-relative-scale"></i><span class="hide-menu">불판</span></a></li>
											
			</ul>
		</nav>
		<!-- End Sidebar navigation -->
	</div>
	<!-- End Sidebar scroll-->
</aside>

<!-- 메뉴바 -->
<%-- <div class="sidebar">
	<!-- 사이트 메뉴 -->
	<ul class="nav">
		<li><a
			href="${pageContext.request.contextPath}/content/introduce.do">소개</a></li>
		<li><a
			href="${pageContext.request.contextPath}/bbs/document_list.do?category=notice">공지사항</a></li>
		<li><a
			href="${pageContext.request.contextPath}/bbs/document_list.do?category=gallery">매칭하기</a></li>
		<li><a
			href="${pageContext.request.contextPath}/bbs/document_list.do?category=free">웃긴
				자료</a></li>
		<li><a
			href="${pageContext.request.contextPath}/bbs/document_list.do?category=qna">질문/답변</a></li>
		<li><a
			href="${pageContext.request.contextPath}/bbs/document_search.do">지역
				게시판</a></li>
		<li><a
			href="${pageContext.request.contextPath}/player/player_list.do">선수
				목록</a></li>
		<li><a
			href="${pageContext.request.contextPath}/map/map_search.do">경기장
				찾기</a></li>
	</ul>
	<!-- //사이트 메뉴 종료 -->
</div> --%>
