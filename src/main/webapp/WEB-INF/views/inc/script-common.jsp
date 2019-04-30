<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- 공통 스크립트 영역 -->
<script type="text/javascript">
		function resize_page() {
			var windowWidth = $(window).width();
			if(windowWidth > 768) {
				window.location.reload();
			}
		}

		$(function() {
			$(window).resize(function(e){
				resize_page();
			});
		});
		
		$(".mb-nav-btn").click(function(){
			$(".sidebar").toggle();
		});
</script>
<!--// 공통 스크립트 영역 -->