<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
	<style type="text/css">
		.bottombar {
			display: none;
		}
		
		@media (max-width: 768px) {
			.bottombar {
				display: block;
				position: fixed;
				bottom: 0;
				width: 100%;
				height: 60px;
				background-color: white;
				border-top: 2px solid black;
				z-index: 1001;
			}
		
			.bottomBarItem {
				float: left;
				width: 25%;
				text-align: center;
			}
		
			.bottomNav {
				height: 60px;
				width: 100%;
			}
		
			.bottomNav a{
				display: block;
				width: 25%;
				height: 100%;
				margin: auto;
			}
		
			.bottombar i {
				font-size: 30px;
			}
		
			.hlpoint:hover {
				display: block;
				background-color: gray;
			}	
		}
	</style>
</head>
	<div class="bottombar clear">
		<!-- 바텀바 -->
		<div class="bottomNav">
			<div class="PreSetVM bottomBarItem">
				<div class="SetVerticalMid hlpoint">
					<a href="${pageContext.request.contextPath}/index.do">
						<i class='btm-ic0 glyphicon glyphicon-home'></i>
					</a>
				</div>
			</div>
			<div class="PreSetVM bottomBarItem">
				<div class="SetVerticalMid hlpoint">
					<a href="${pageContext.request.contextPath}/content/introduce.do">
						<i class="btm-ic1 glyphicon glyphicon-heart-empty"></i>
					</a>
				</div>
			</div>
			<div class="PreSetVM bottomBarItem">
				<div class="SetVerticalMid hlpoint">
					<a href="#">
						<i class="btm-ic2 glyphicon glyphicon-comment"></i>
					</a>
				</div>
			</div>
			<div class="PreSetVM bottomBarItem">
				<div class="SetVerticalMid hlpoint">
					<a href="#">
						<i class="btm-ic3 glyphicon glyphicon-wrench"></i>
					</a>
				</div>
			</div>
		</div>
		<!-- //바텀바 종료 -->
	</div>	
