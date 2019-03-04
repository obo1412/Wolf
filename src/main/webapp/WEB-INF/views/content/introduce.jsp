<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/views/inc/head.jsp"%>
<style type="text/css">
/** hr 태그에 대한 상하 여백 확보 */
.featurette-divider {
    margin: 80px 0;
}

/** 제목 텍스트 모양 */
.featurette-heading {
    font-weight: bold; line-height: 1; letter-spacing: -1px;
}

/** 상세 내용영역의 반응형 기능 >> 제목의 글자 크기 재설정 */
@media (min-width: 768px) {
    .featurette-heading {
        font-size: 50px;
    }
}

@media (min-width: 992px) {
    .featurette-heading {
        margin-top: 120px;
    }
}

.page-header {
	padding-top: 0px;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/inc/topbar.jsp"%>
<!-- 내용영역 -->
<div class="container">

    <h1 class="page-header">우리동네 프로선수들 소개</h1>

    <!-- 그리드 시스템 (데스크탑 가로3칸) -->
    <div class="row">
        <div class="col-md-4 text-center">
            <img src="${pageContext.request.contextPath}/assets/img/intro_ground.PNG" class="img-circle" width="240" height="240"/>
            <h2>경기장 찾기</h2>
            <p>
                우리 동네에 어떤 경기장이 있는지 찾아보세요!<br>
                나도 몰랐던 우리동네 선수들의 핫플레이스!<br>
                일정별로 경기장에 몇 명의 사람들이 오는지 알 수 있습니다.
            </p>
        </div>
        <div class="hidden-lg hidden-md">
            <br/> <br/>
        </div>
        <div class="col-md-4 text-center">
            <img src="${pageContext.request.contextPath}/assets/img/intro_vs.PNG" class="img-circle" width="240" height="240"/>
            <h2>매칭하기</h2>
            <p>
                당신의 베이스 경기장에서 도전자를 기다리세요!<br>
                활발한 경기 매칭이 가능합니다!
            </p>
        </div>
        <div class="hidden-lg hidden-md">
            <br/> <br/>
        </div>
        <div class="col-md-4 text-center">
            <img src="${pageContext.request.contextPath}/assets/img/bs3.jpg" class="img-circle" width="240" height="240"/>
            <h2>웃긴 자료</h2>
            <p>
                웃기고 재밌는 이야기들을 올려주세요.<br>
                재미있는 이야기와 자료를 공유하며 왁자지껄하게 떠들수 있는 공간입니다. 
            </p>
        </div>
    </div>
    <!--// 그리드 시스템 -->

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">
                첫 번째 예제를 확인하세요. <span class="text-muted">마음에 드실겁니다.</span>
            </h2>
            <p class="lead">
                가장 심플한 것이 가장 화려한 것이라는 말이 있습니다. 첫 번째 예제를 통해서 심플하면서도 모던한 웹 퍼블리싱을 경험해 보신다면, Bootstrap3의 매력에 반하시게 될 것입니다.
            </p>
        </div>
        <div class="col-md-5">
            <img class="img-thumbnail img-responsive" src="${pageContext.request.contextPath}/assets//img/img01.jpg" width="500" height="500"/>
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-5">
            <img class="img-thumbnail img-responsive" src="${pageContext.request.contextPath}/assets//img/img02.jpg" width="500" height="500"/>
        </div>
        <div class="col-md-7">
            <h2 class="featurette-heading">무척 쉽습니다. <span class="text-muted">직접 경험해 보세요.</span></h2>
            <p class="lead">
                Twitter Bootstrap3를 사용하면 반응형 웹 페이지 제작이 매우 쉬워집니다. 빠르게 메뉴를 제작하고, 어려운 자바스크립트의 사용 없이도 다이나믹한 컨텐츠의 제공이 가능해 집니다. 단지 HTML 태그의 사용 방법만 알고 계시면 됩니다. CSS의 활용까지 가능하다면, 당신의 가능성은 무한대 입니다.
            </p>
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">단순함이 모여서 화려함이 됩니다. <span class="text-muted">정말 멋집니다.</span></h2>
            <p class="lead">
                지금 경험하시고 계신 페이지는 Bootstrap의 가장 대표적인 기능들을 모두 모아놓은 페이지에 약간의 CSS 기능을 더한 것 입니다. 단순한 기능들이 모인 것 이지만, 결과물은 매우 화려합니다.
            </p>
        </div>
        <div class="col-md-5">
            <img class="img-thumbnail img-responsive" src="${pageContext.request.contextPath}/assets//img/img03.jpg" width="500" height="500"/>
        </div>
    </div>
</div>
<!--// 내용영역 -->
<%@ include file="/WEB-INF/views/inc/footer.jsp"%>
</body>
</html>