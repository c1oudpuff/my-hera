<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HERA | SEOUL BEAUTY</title>
  <!-- Bootstrap 4.6 CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/index.css? ver=2501301" />
  <link rel="icon" href="../images/faviconV2.png" type="image/x-icon" />
</head>
<body>

 <%@ include file="./menu.jsp"%>

<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="5"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="6"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="7"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="../images/carousel2.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-lg-block text-left">
                <h4>NEW 리플렉션 스킨 글로우 쿠션</h4>
                <h2>속부터 투명하게 차올라 유연하게 빛나는 피부</h2>
            </div>
        </div>
        <div class="carousel-item">
            <img src="../images/carousel1.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-lg-block text-left">
                <h4>NEW 센슈얼 누드 밤</h4>
                <h2>풍부한 세라마이드로 30시간 촉촉한 생기립밤</h2>
            </div>
        </div>
        <div class="carousel-item">
            <img src="../images/carousel3.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-lg-block text-left">
                <h4>NEW 헤라 하이드레이팅 래디언스 프라이머</h2>
                <h2>즉각적인 광채 톤업과 수분 코팅한 듯 매끈한 피부</h2>
            </div>
        </div>
                <div class="carousel-item">
            <img src="../images/carousel4.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-lg-block text-left">
                <h4>NEW 헤라 에어리 파우더 프라이머</h4>
                <h2>확실한 모공 커버 효과의 혁신 프라이머</h2>
            </div>
        </div>
        <div class="carousel-item">
            <img src="../images/carousel5.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-lg-block text-left">
                <h4>NEW 헤라 블러쉬</h4>
                <h2>물 들이듯 표현되는 투명한 습식 블러쉬</h2>
            </div>
        </div>
                <div class="carousel-item">
            <img src="../images/carousel6.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-lg-block text-left">
                <h4>NEW 블랙쿠션 파운데이션</h4>
                <h2>I CAN GO ANYWHERE</h2>
            </div>
        </div>
        <div class="carousel-item">
            <img src="../images/carousel7.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-lg-block text-left">
                <h4>ROUGE CLASSY</h2>
                <h2>SEOUL RED</h2>
            </div>
        </div>
                <div class="carousel-item">
            <img src="../images/carousel8.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-lg-block text-left cs-text-white">
                <h4>헤라 NEW 브랜드 캠페인</h4>
                <h2>HOW FAR CAN YOU GO</h2>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </button>
</div>

<div class="container-fluid mt-5 pl-3 ml-3">
	<h3 class="mb-5 ml-4 pl-4"><strong>BEST SELLER</strong></h3>
    <div class="row text-left">
        <!-- 제품 1 -->
        <div class="col-md-3 col-5">
            <div class="product">
                <span class="product-number ml-5 pl-4">1</span>
                <img src="../images/best1.png" alt="블랙 쿠션 파운데이션" class="img-fluid" id="product1">
                <h5>블랙 쿠션 파운데이션 SPF34/PA++</h5>
            </div>
        </div>

        <!-- 제품 2 -->
        <div class="col-md-3 col-5">
            <div class="product">
                <span class="product-number ml-5 pl-4">2</span>
                <img src="../images/best2.png" alt="리플렉션 스킨 글로우 쿠션 파운데이션" class="img-fluid" id="product2">
                <h5>리플렉션 스킨 글로우 쿠션 파운데이션</h5>
            </div>
        </div>

        <!-- 제품 3 -->
        <div class="col-md-3 col-5">
            <div class="product">
                <span class="product-number ml-5 pl-4">3</span>
                <img src="../images/best3.png" alt="센슈얼 누드 밤" class="img-fluid" id="product3">
                <h5>센슈얼 누드 밤</h5>
            </div>
        </div>

        <!-- 제품 4 -->
        <div class="col-md-3 col-5">
            <div class="product">
                <span class="product-number ml-5 pl-4">4</span>
                <img src="../images/best4.png" alt="센슈얼 파우더 매트 립스틱" class="img-fluid" id="product4">
                <h5>센슈얼 파우더 매트 립스틱</h5>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid mt-5 p-0">
	<div class="section">
		<a href="./faces.jsp">
			<img src="../images/face.jpg" alt="" class="img-fluid"/>
		</a>
		<h1 class="cs-text-white" id="section1">FACE</h1>
	</div>
	<div class="section">
		<img src="../images/lip.png" alt="" class="img-fluid mt-4"/>
		<h1 id="section2">LIP</h1>
	</div>
	<div class="section">
		<img src="../images/skincare.jpg" alt="" class="img-fluid mt-4"/>
		<h1 id="section3">SKINCARE</h1>
	</div>
</div>

<div class="container-fluid mt-5">
	<h1 id="sns_account" class="text-center">@HERABEAUTY_OFFICIAL</h1>
    <div class="row g-3">
        <!-- 왼쪽 큰 이미지 -->
        <div class="col-md-5">
            <img src="../images/sns1.jpg" class="img-fluid w-100">
        </div>
        <!-- 오른쪽 작은 이미지 2개 -->
        <div class="col-md-2 d-flex flex-column">
            <img src="../images/sns2.jpg" alt="작은 이미지 1" class="img-fluid small">
            <img src="../images/sns3.jpg" alt="작은 이미지 2" class="img-fluid small">
        </div>
        <div class="col-md-5">
            <img src="../images/sns4.jpg" alt="큰 이미지" class="img-fluid w-100">
        </div>
    </div>
</div>

<div class="container-fluid mt-5 p-0">
	<div class="section">
		<img src="../images/story.jpg" alt="" class="img-fluid"/>
		<h4 class="section4">헤라 스토리</h4>
		<h1 class="section4 mt-5">HERA NOW MYSELF</h1>
	</div>
</div>

 <%@ include file="./footer.jsp"%>

  <!-- Bootstrap 4.6 JS 및 의존성 -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
  <script src="../js/index.js"></script>
</body>
</html>