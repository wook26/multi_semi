<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
    
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<body style="padding-top: 72px;">
  <header class="header">
    <!-- Navbar-->
    <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
      <div class="container-fluid">
        <a class="d-flex align-items-end ms-2" href="index.html"><img class="logo" src="${path}/resources/image/logoColored.svg"
            alt="Jeverything logo"></a>
        <div class="collapse navbar-collapse ms-8" id="navbarCollapse">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item dropdown text-center"><a class="nav-link dropdown-toggle active"
                id="homeDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                제주소개/관광</a>
              <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item"
                  href="category-olle.html">제주명소<span class="badge badge-info-light ms-1 mt-n1">hot</span></a><a
                  class="dropdown-item" href="category-weather.html">기상정보</a><a class="dropdown-item"
                  href="category-festival.html">축제/행사</a><a class="dropdown-item"
                  href="category-museum.html">박물관/미술관/전시관</a></div>
            </li>
            <li class="nav-item dropdown text-center"><a class="nav-link dropdown-toggle" id="homeDropdownMenuLink"
                href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                맛집</a>
              <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item"
                  href="category-food.html">음식점</a><a class="dropdown-item" href="category-cafe.html">카페<span
                    class="badge badge-info-light ms-1 mt-n1">hot</span></a>
            </li>
            <li class="nav-item text-center me-2"><a class="nav-link" href="category-room.html">숙소 </a>
            </li>
            <li class="nav-item dropdown text-center"><a class="nav-link dropdown-toggle" id="docsDropdownMenuLink"
                href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                교통</a>
              <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item"
                  href="category-rent.html">렌트<span class="badge badge-info-light ms-1 mt-n1">hot</span></a><a
                  class="dropdown-item" href="category-flight.html">항공</a>
            </li>
            <li class="nav-item dropdown text-center"><a class="nav-link dropdown-toggle" id="docsDropdownMenuLink"
                href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                커뮤니티</a>
              <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item"
                  href="category-comunity.html">여행후기/일정공유<span
                    class="badge badge-info-light ms-1 mt-n1">hot</span></a><a class="dropdown-item"
                  href="category-accompany.html">동행모집</a>
            </li>
            <div class="d-lg-flex justify-content-end">
              <li class="nav-item"><a class="nav-link" href="login.html">로그인</a></li>
              <li class="nav-item"><a class="nav-link" href="signup.html">회원가입</a></li>
            </div>
          </ul>
        </div>
      </div>
    </nav>
    <!-- /Navbar -->
  </header>

  <!-- Hero Section-->
  <section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
    style="background-image: url(${path}/resources/image/img/jeju13.jpg);">
    <div class="container overlay-content">
      <div class="d-flex justify-content-center flex-column flex-lg-row align-items-lg-end">
        <div class="text-white mb-lg-0 text-center">
          <h1 class="text-shadow verified">제주소개/관광</h1>
          <p>자연과 문화, 사람의 가치를 키우는 제주도</p>
        </div>
      </div>
    </div>
  </section>
  <div class="container py-2">
    <a class="text-custom-gray400" href="index.html"><i class="fa-solid fa-house"></i></a>
    <a class="text-custom-gray400" href="category-museum.html">제주소개/관광 <i class="fa-solid fa-chevron-right"></i>
      박물관/미술관/전시관</a>
  </div>
  <h3 class="pt-4 pb-2" style="text-align: center;">박물관/미술관/전시관</h3>
  <div class="container position-relative py-3">
    <nav class="nav nav-pills-menu justify-content-center row text-center mb-3">
      <a class="nav-link py-3 mb-2 col-2 active" href="#">전체 </a>
      <a class="nav-link py-3 mb-2 col-2" href="#">박물관 </a>
      <a class="nav-link py-3 mb-2 col-2" href="#">미술관 </a>
      <a class="nav-link py-3 mb-2 col-2" href="#">전시관 </a>
    </nav>
    <ul class="nav nav-pills-tag justify-content-center">
      <li class="nav-item"><a class="nav-link active" href="#">#전체</a></li>
      <li class="nav-item"><a class="nav-link hover" href="#">#박물관</a></li>
      <li class="nav-item"><a class="nav-link hover" href="#">#미술관</a></li>
      <li class="nav-item"><a class="nav-link hover" href="#">#전시관</a></li>
      <li class="nav-item"><a class="nav-link hover" href="#">#제주시</a></li>
      <li class="nav-item"><a class="nav-link hover" href="#">#서귀포시</a></li>
      <li class="nav-item"><a class="nav-link hover" href="#">#문화관광</a></li>
      <li class="nav-item"><a class="nav-link hover" href="#">#실내관광지</a></li>
    </ul>
  </div>

  </section>
  <section class="py-5">
    <div class="container">
      <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
        <div class="me-3">
          <p class="mb-3 mb-md-0"></p>
        </div>
        <div class="container">
        </div>


        <!--  인기순/최신순

        <div>
          <label class="form-label me-2" for="form_sort"></label>
          <select class="selectpicker" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
              <option value="sortBy_0">인기순</option>
              <option value="sortBy_1">최신순</option>
            </select>
          </div> -->
      </div>

      <div class="row">
        <!-- venue item-->
        <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-img-top overflow-hidden dark-overlay bg-cover"
              style="background-image: url(${path}/resources/image/img/art1.jpg); min-height: 200px;"><a class="tile-link"
                href="detail-museum.html"></a>
              <div class="card-img-overlay-bottom z-index-20">
                <h4 class="text-white text-shadow">빛의 벙커</h4>
                <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-gray-300"> </i>
                </p>
              </div>
              <!-- <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                  <div class="badge badge-transparent badge-pill px-3 py-2">#실내관광지</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                    <svg class="svg-icon text-white">
                      <use xlink:href="#heart-1"> </use>
                    </svg></a>
                </div> -->
            </div>
            <div class="card-body">
              <p class="text-sm text-muted mb-3"
                style=" overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">성산에 숨겨져 있던 통신 벙커에서 열리는 고흐 중심의
                미디어 아트 전시</p>
              <!-- <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p> -->
              <p class="text-sm mb-0"><a class="me-1" href="#">#미술관 </a><a class="me-1" href="#">#실내관광지</a>
              </p>
            </div>
          </div>
        </div>
        <!-- venue item-->
        <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-img-top overflow-hidden dark-overlay bg-cover"
              style="background-image: url(${path}/resources/image/img/exhibition1.jpg); min-height: 200px;"><a class="tile-link"
                href="detail-museum.html"></a>
              <div class="card-img-overlay-bottom z-index-20">
                <h4 class="text-white text-shadow">아쿠아플레닛 제주</h4>
                <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-warning"> </i>
                </p>
              </div>
              <!-- <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                <div class="badge badge-transparent badge-pill px-3 py-2">#실내관광지</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
              </div> -->
            </div>
            <div class="card-body">
              <p class="text-sm text-muted mb-3"
                style=" overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">450여종의 바다생명체가 있는 아시아 최대 수족관</p>
              <!-- <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p> -->
              <p class="text-sm mb-0"><a class="me-1" href="#">#전시관 </a><a class="me-1" href="#">#실내관광지</a>
              </p>
            </div>
          </div>
        </div>
        <!-- venue item-->
        <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-img-top overflow-hidden dark-overlay bg-cover"
              style="background-image: url(${path}/resources/image/img/museum1.jpg); min-height: 200px;"><a class="tile-link"
                href="detail-museum.html"></a>
              <div class="card-img-overlay-bottom z-index-20">
                <h4 class="text-white text-shadow">오설록티뮤지엄</h4>
                <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-warning"> </i>
                </p>
              </div>
              <!-- <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                <div class="badge badge-transparent badge-pill px-3 py-2">#실내관광지</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
              </div> -->
            </div>
            <div class="card-body">
              <p class="text-sm text-muted mb-3"
                style=" overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제주녹차문화의 중심, 차박물관과 카페테리아, 2016
                KOREAT JEJU TOP 30 선정</p>
              <!-- <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p> -->
              <p class="text-sm mb-0"><a class="me-1" href="#">#박물관 </a><a class="me-1" href="#">#실내관광지</a>
              </p>
            </div>
          </div>
        </div>
        <!-- venue item-->
        <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-img-top overflow-hidden dark-overlay bg-cover"
              style="background-image: url(${path}/resources/image/img/exhibition2.jpg); min-height: 200px;"><a class="tile-link"
                href="detail-museum.html"></a>
              <div class="card-img-overlay-bottom z-index-20">
                <h4 class="text-white text-shadow">헬로키티아일랜드</h4>
                <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-gray-300"> </i>
                </p>
              </div>
              <!-- <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                <div class="badge badge-transparent badge-pill px-3 py-2">#실내관광지</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
              </div> -->
            </div>
            <div class="card-body">
              <p class="text-sm text-muted mb-3"
                style=" overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">많은 사랑을 받고있는 헬로키티 전시관</p>
              <!-- <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p> -->
              <p class="text-sm mb-0"><a class="me-1" href="#">#전시관 </a><a class="me-1" href="#">#실내관광지</a>
              </p>
            </div>
          </div>
        </div>
        <!-- venue item-->
        <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-img-top overflow-hidden dark-overlay bg-cover"
              style="background-image: url(${path}/resources/image/img/art2.jpg); min-height: 200px;"><a class="tile-link"
                href="detail-museum.html"></a>
              <div class="card-img-overlay-bottom z-index-20">
                <h4 class="text-white text-shadow">제주특별자치도 도립미술관</h4>
                <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-gray-300"> </i>
                </p>
              </div>
              <!-- <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                <div class="badge badge-transparent badge-pill px-3 py-2">#실내관광지</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
              </div> -->
            </div>
            <div class="card-body">
              <p class="text-sm text-muted mb-3"
                style=" overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">예술의 빛과 숨결이 넘치는 숲속의 미술관</p>
              <!-- <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p> -->
              <p class="text-sm mb-0"><a class="me-1" href="#">#미술관 </a><a class="me-1" href="#">#실내관광지</a>
              </p>
            </div>
          </div>
        </div>
        <!-- venue item-->
        <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-img-top overflow-hidden dark-overlay bg-cover"
              style="background-image: url(${path}/resources/image/img/exhibition3.jpg); min-height: 200px;"><a class="tile-link"
                href="detail-museum.html"></a>
              <div class="card-img-overlay-bottom z-index-20">
                <h4 class="text-white text-shadow">서복전시관</h4>
                <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-warning"> </i>
                </p>
              </div>
              <!-- <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                <div class="badge badge-transparent badge-pill px-3 py-2">#실내관광지</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
              </div> -->
            </div>
            <div class="card-body">
              <p class="text-sm text-muted mb-3"
                style=" overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">진시황의 불로장생의 꿈인 불로초를 찾아 제주도에 온
                것으로 전해지는 서복(徐福)을 기념하는 전시관</p>
              <!-- <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p> -->
              <p class="text-sm mb-0"><a class="me-1" href="#">#전시관 </a><a class="me-1" href="#">#실내관광지</a>
              </p>
            </div>
          </div>
        </div>

        <!-- venue item-->
        <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-img-top overflow-hidden dark-overlay bg-cover"
              style="background-image: url(${path}/resources/image/img/museum3.jpg); min-height: 200px;"><a class="tile-link"
                href="detail-museum.html"></a>
              <div class="card-img-overlay-bottom z-index-20">
                <h4 class="text-white text-shadow">테디베어뮤지엄제주</h4>
                <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-gray-300"> </i>
                </p>
              </div>
              <!-- <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                <div class="badge badge-transparent badge-pill px-3 py-2">#실내관광지</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
              </div> -->
            </div>
            <div class="card-body">
              <p class="text-sm text-muted mb-3"
                style=" overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제주다양한 테마와 재미있는 볼거리가 가득한 국내 유일의
                테디베어 박물관, 중문관광단지 중심에 있음</p>
              <!-- <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p> -->
              <p class="text-sm mb-0"><a class="me-1" href="#">#박물관 </a><a class="me-1" href="#">#실내관광지</a>
              </p>
            </div>
          </div>
        </div>

        <!-- venue item-->
        <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-img-top overflow-hidden dark-overlay bg-cover"
              style="background-image: url(${path}/resources/image/img/museum2.jpg); min-height: 200px;"><a class="tile-link"
                href="detail-museum.html"></a>
              <div class="card-img-overlay-bottom z-index-20">
                <h4 class="text-white text-shadow">제주항공우주박물관</h4>
                <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-gray-300"> </i>
                </p>
              </div>
              <!-- <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                <div class="badge badge-transparent badge-pill px-3 py-2">#실내관광지</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
              </div> -->
            </div>
            <div class="card-body">
              <p class="text-sm text-muted mb-3"
                style=" overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">제주항공우주박물관은 항공 기술과 우주를 꿈꾸는 사람들에게
                무한한 상상력을 심어준다. 하늘을 날고자 했던 라이트 형제의 수많은 도전과 미래 행성을 세우는 일까지 마음껏 상상의 나래를 펼칠 수 있다.</p>
              <!-- <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p> -->
              <p class="text-sm mb-0"><a class="me-1" href="#">#박물관 </a><a class="me-1" href="#">#실내관광지</a>
              </p>
            </div>
          </div>
        </div>

        <!-- venue item-->
        <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-img-top overflow-hidden dark-overlay bg-cover"
              style="background-image: url(${path}/resources/image/img/art3.jpg); min-height: 200px;"><a class="tile-link"
                href="detail-museum.html"></a>
              <div class="card-img-overlay-bottom z-index-20">
                <h4 class="text-white text-shadow">김택화미술관</h4>
                <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                    class="fa fa-star text-gray-300"> </i>
                </p>
              </div>
              <!-- <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                <div class="badge badge-transparent badge-pill px-3 py-2">#실내관광지</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
              </div> -->
            </div>
            <div class="card-body">
              <p class="text-sm text-muted mb-3"
                style=" overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">화가 김택화이 삶과 작품을 볼 수 있는 미술관</p>
              <!-- <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p> -->
              <p class="text-sm mb-0"><a class="me-1" href="#">#미술관 </a><a class="me-1" href="#">#실내관광지</a>
              </p>
            </div>
          </div>
        </div>


        <!-- Pagination (하단페이지)-->
        <nav class="pt-5" aria-label="Page navigation example">
          <ul class="pagination pagination-template d-flex justify-content-center">
            <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
          </ul>
        </nav>
      </div>
  </section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>