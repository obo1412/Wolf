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
	<%@include file="/WEB-INF/views/inc/topboard.jsp" %>
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
				<select name="town">
					<option value="">시/군/구 선택</option>
					<c:forEach var="a2item" items="${a2list}" varStatus="i">
						<option value="${a2item.id}">${a2item.name}</option>
					</c:forEach>
				</select>
				<input type="button" value="지역게시판 입장" onclick="location.href='${pageContext.request.contextPath}/bbs/document_list.do?category=1001000'">
			</div>
			
		</div>
	</div>
	
	
	<script type="text/javascript">
	function getAddrLoc(){
		 // 적용예 (api 호출 전에 검색어 체크)
		if (!checkSearchedWord(document.form.keyword))
		 {
		 return ;
		 }

		 $.ajax({
		 url :"/sample/getAddrApi.do"
		 ,type:"post"
		 ,data:$("#form").serialize()
		 ,dataType: ”json"
		 ,success:function(jsonStr){
		 $("#list").html("");
		 var errCode =
		jsonStr.results.common.errorCode;
		 var errDesc =
		jsonStr.results.common.errorMessage;
		 if(errCode!= ＂0＂){
		 alert(errCode+"="+errDesc);
		 }else{
		 if(xmlStr!= null){
		 makeListJson(jsonStr); //JSON데이터 HTML형태로 변환
		 }
		 }
		 },error: function(xhr,status, error){
		 alert("에러발생");
		 }
		 });
		}
		//특수문자, 특정문자열(sql예약어의 앞뒤공백포함)
		제거
		function checkSearchedWord(obj){
		 if(obj.value.length >0){
		 //특수문자 제거
		 var expText = /[%=><]/ ;
		 if(expText.test(obj.value) == true){
		 alert("특수문자를 입력 할수 없습니다.") ;
		 obj.value = obj.value.split(expText).join("");
		 return false;
		 }

		 //특정문자열(sql예약어의 앞뒤공백포함) 제거
		 var sqlArray = new Array(
		 //sql 예약어
		 "OR", "SELECT", "INSERT", "DELETE", "UPDATE“
		 ,"CREATE", "DROP", "EXEC", "UNION“
		 ,"FETCH", "DECLARE", "TRUNCATE" );

		 var regex;
		 for(var i=0; i<sqlArray.length; i++){
		 regex = new RegExp( sqlArray[i] ,"gi") ;

		 if (regex.test(obj.value) ) {
		 alert("\"" + sqlArray[i]+"\"와(과) 같은 특
		정문자로 검색할 수 없습니다.");
		 obj.value =obj.value.replace(regex, "");
		 return false;
		 }
		 }
		 }
		 return true ;
		}
	</script>
	
	<form name="form" id="form" method="post">
 		<!-- 요청 변수 설정 (검색결과형식 설정, json) -->
 		<input type="hidden" name="resultType" value="json"/>
	</form>
	
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
	<%@ include file="/WEB-INF/views/inc/bottombar.jsp" %>
	<%@ include file="/WEB-INF/views/inc/script-common.jsp" %>

	
	
</body>
</html>