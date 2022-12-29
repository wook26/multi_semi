<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="제주이즘" name="title"/>
</jsp:include>

  <section class="hero-home">
    <div class="swiper-container hero-slider mb-sm-1">
      <div class="swiper-wrapper dark-overlay">
        <div class="swiper-slide" style="background-image:url(${path}/resources/image/img/Jeju.jpg)"></div>
        <div class="swiper-slide" style="background-image:url(${path}/resources/image/img/Jeju1.jpg)"></div>
        <div class="swiper-slide" style="background-image:url(${path}/resources/image/img/Jeju2.jpg)"></div>
        <div class="swiper-slide" style="background-image:url(${path}/resources/image/img/Jeju3.jpg)"></div>
      </div>
    </div>
    <div class="container py-6 py-md-7 text-white z-index-20">
      <div class="row">
        <div class="col-xl-10">
          <div class="text-center text-lg-start">
            <h1 class="display-3 text-shadow font-HS">빛나는 제주</h1>
            <p class="subtitle letter-spacing-4 mb-2 text-secondary text-shadow">제주이즘과 고치가게마씸!</p>
          </div>
          <div class="search-bar mt-5 p-3 p-lg-1 ps-lg-4">
            <form action="${path}/category/search-page" method="get">
              <div class="row">
                <div class="col-lg-2 d-flex align-items-center form-group no-divider">
                  <select class="selectpicker" title="선택" name="code" data-style="btn-form-control">
                    <option value="관광지">관광</option>
                    <option value="음식점">맛집</option>
                    <option value="숙박">숙소</option>
                  </select>
                </div>
                <div class="col-lg-8 d-flex align-items-center form-group no-divider">
                  <input class="form-control border-0 shadow-0" type="search" name="search" value="${param.search}" placeholder="사려니 숲길을 검색해보세요!">
                </div>
                <div class="col-lg-2 d-grid float-end">
                  <button class="btn btn-primary rounded-pill h-100" type="submit">검색</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
 	<section class="py-4 bg-secondary bg-opacity-10" style="height: 520px;">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 mb-5 mb-lg-0 text-center text-lg-start">
          <div class="line">
            <h2 class="list-inline-item font-Tenada">지역별</h2>
            <h2 class="list-inline-item text-primary font-Tenada">추천 여행지</h2>
          </div>
          <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
              <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home"
                type="button" role="tab" aria-controls="pills-home" aria-selected="true">제주시</button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile"
                type="button" role="tab" aria-controls="pills-profile" aria-selected="false">서귀포시</button>
            </li>
          </ul>
          <div class="tab-content" id="pills-tabContent">
            <!-- Jeju -->
            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab"
              tabindex="0">
              <div class="container">
                <!-- Slider main container-->
                <div class="swiper-container testimonials-slider testimonials">
                  <!-- Additional required wrapper-->
                  <div class="swiper-wrapper pt-2 pb-2">
                    <!-- Slides-->
                    <div class="swiper-slide p-4">
                      <div class="testimonial card rounded-3 shadow border-0">
                        <div class="testimonial-avatar"><img class="recomend-img" src="${path}/resources/image/img/recom1.jpg"
                            alt="..."></div>
                        <div class="text">
                          <div class="testimonial-quote">
                            <i class="fas fa-quote-left"></i>
                            <p class="fs-4 d-inline text-custom-gray400"> 한라산국립공원</p>
                          </div>
                          <div class="main-tag box-shadow">#산</div>
                          <div class="main-tag box-shadow">#걷기/등산</div>
                          <div class="main-tag box-shadow">#경관/포토</div>
                          <div class="main-tag box-shadow">#친구</div>
                          <div class="main-tag box-shadow">#사계절</div>
                          <div class="main-tag box-shadow">#자연경관</div>
                          <div class="main-tag box-shadow">#포토스팟</div>
                          <div class="main-tag box-shadow">#한라산</div>
                          <div class="main-tag box-shadow">#언택트</div>
                          <div class="main-tag box-shadow">#단풍</div>
                          <div class="main-tag box-shadow">#유네스코</div>
                          <p class="main-address mt-2 mb-4">주소 제주특별자치도 제주시 1100로 2070-61</p>
                        </div>
                        <a class="text-center d-inline-block pe-5" href="${path}/detail/detail-olle?no=1053" target="_blank">상세보기 <i
                            class="fa-solid fa-arrow-up-right-from-square"></i></a>
                      </div>
                    </div>
                    <div class="swiper-slide p-4">
                      <div class="testimonial card rounded-3 shadow border-0">
                        <div class="testimonial-avatar"><img class="recomend-img" src="${path}/resources/image/img/recom2.jpg"
                            alt="..."></div>
                        <div class="text">
                          <div class="testimonial-quote">
                            <i class="fas fa-quote-left"></i>
                            <p class="fs-4 d-inline text-custom-gray400"> 사려니숲길</p>
                          </div>
                          <div class="main-tag box-shadow">#숲길</div>
                          <div class="main-tag box-shadow">#걷기/등산</div>
                          <div class="main-tag box-shadow">#친구</div>
                          <div class="main-tag box-shadow">#커플</div>
                          <div class="main-tag box-shadow">#흐림</div>
                          <div class="main-tag box-shadow">#봄</div>
                          <div class="main-tag box-shadow">#자연경관</div>
                          <div class="main-tag box-shadow">#도보여행</div>
                          <div class="main-tag box-shadow">#도보</div>
                          <div class="main-tag box-shadow">#숲</div>
                          <div class="main-tag box-shadow">#단풍</div>
                          <p class="main-address mt-2 mb-4">주소 제주특별자치도 제주시 조천읍 교래리 산 137-1</p>
                        </div>
                        <a class="text-center d-inline-block pe-5" href="${path}/detail/detail-olle?no=1109" target="_blank">상세보기 <i
                            class="fa-solid fa-arrow-up-right-from-square"></i></a>
                      </div>
                    </div>
                    <div class="swiper-slide p-4">
                      <div class="testimonial card rounded-3 shadow border-0">
                        <div class="testimonial-avatar"><img class="recomend-img" src="${path}/resources/image/img/recom3.jpg"
                            alt="..."></div>
                        <div class="text">
                          <div class="testimonial-quote">
                            <i class="fas fa-quote-left"></i>
                            <p class="fs-4 d-inline text-custom-gray400"> 협재해수욕장</p>
                          </div>
                          <div class="main-tag box-shadow">#일몰</div>
                          <div class="main-tag box-shadow">#해수욕장</div>
                          <div class="main-tag box-shadow">#액티비티</div>
                          <div class="main-tag box-shadow">#아이</div>
                          <div class="main-tag box-shadow">#맑음</div>
                          <div class="main-tag box-shadow">#여름</div>
                          <div class="main-tag box-shadow">#자연경관</div>
                          <div class="main-tag box-shadow">#체험</div>
                          <div class="main-tag box-shadow">#레저/체험</div>
                          <div class="main-tag box-shadow">#해변</div>
                          <div class="main-tag box-shadow">#물놀이</div>
                          <div class="main-tag box-shadow">#어린이</div>
                          <div class="main-tag box-shadow">#수상레저</div>
                          <div class="main-tag box-shadow">#반려동물</div>
                          <div class="main-tag box-shadow">#혼저옵서개</div>
                          <p class="main-address mt-2 mb-4">주소 제주특별자치도 제주시 한림읍 한림로 329-10</p>
                        </div>
                        <a class="text-center d-inline-block pe-5" href="${path}/detail/detail-olle?no=986" target="_blank">상세보기 <i
                            class="fa-solid fa-arrow-up-right-from-square"></i></a>
                      </div>
                    </div>
                    <div class="swiper-slide p-4">
                      <div class="testimonial card rounded-3 shadow border-0">
                        <div class="testimonial-avatar"><img class="recomend-img" src="${path}/resources/image/img/recom4.png"
                            alt="..."></div>
                        <div class="text">
                          <div class="testimonial-quote">
                            <i class="fas fa-quote-left"></i>
                            <p class="fs-4 d-inline text-custom-gray400"> 에코랜드 테마파크</p>
                          </div>
                          <div class="main-tag box-shadow">#테마공원</div>
                          <div class="main-tag box-shadow">#아이</div>
                          <div class="main-tag box-shadow">#맑음</div>
                          <div class="main-tag box-shadow">#봄</div>
                          <div class="main-tag box-shadow">#가을</div>
                          <div class="main-tag box-shadow">#겨울</div>
                          <div class="main-tag box-shadow">#실내관광지</div>
                          <div class="main-tag box-shadow">#어린이</div>
                          <div class="main-tag box-shadow">#어트랙션</div>
                          <p class="main-address mt-2 mb-4">주소 제주특별자치도 제주시 조천읍 번영로 1278-169</p>
                        </div>
                        <a class="text-center d-inline-block pe-5" href="${path}/detail/detail-olle?no=1124" target="_blank">상세보기 <i
                            class="fa-solid fa-arrow-up-right-from-square"></i></a>
                      </div>
                    </div>
                  </div>
                  <div class="swiper-pagination"> </div>
                </div>
              </div>
            </div>
            <!-- Seoguipo -->
            <div class="tab-pane fade active" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab"
              tabindex="0">
              <div class="container">
                <!-- Slider main container-->
                <div class="swiper-container testimonials-slider testimonials">
                  <!-- Additional required wrapper-->
                  <div class="swiper-wrapper pt-2" style="padding-bottom: 2.5rem">
                    <!-- Slides-->
                    <div class="swiper-slide p-4">
                      <div class="testimonial card rounded-3 shadow border-0">
                        <div class="testimonial-avatar"><img class="recomend-img" src="${path}/resources/image/img/recom5.jpg"
                            alt="..."></div>
                        <div class="text">
                          <div class="testimonial-quote">
                            <i class="fas fa-quote-left"></i>
                            <p class="fs-4 d-inline text-custom-gray400"> 성산일출봉</p>
                          </div>
                          <div class="main-tag box-shadow">#일출</div>
                          <div class="main-tag box-shadow">#오름</div>
                          <div class="main-tag box-shadow">#경관/포토</div>
                          <div class="main-tag box-shadow">#부모</div>
                          <div class="main-tag box-shadow">#자연경관</div>
                          <div class="main-tag box-shadow">#포토스팟</div>
                          <div class="main-tag box-shadow">#유네스코</div>
                          <p class="main-address mt-2 mb-4">주소 제주특별자치도 서귀포시 성산읍 일출로 284-12</p>
                        </div>
                        <a class="text-center d-inline-block pe-5" href="${path}/detail/detail-olle?no=1055" target="_blank">상세보기 <i
                            class="fa-solid fa-arrow-up-right-from-square"></i></a>
                      </div>
                    </div>
                    <div class="swiper-slide p-4">
                      <div class="testimonial card rounded-3 shadow border-0">
                        <div class="testimonial-avatar"><img class="recomend-img" src="${path}/resources/image/img/recom6.jpg"
                            alt="..."></div>
                        <div class="text">
                          <div class="testimonial-quote">
                            <i class="fas fa-quote-left"></i>
                            <p class="fs-4 d-inline text-custom-gray400"> 섭지코지</p>
                          </div>
                          <div class="main-tag box-shadow">#일출</div>
                          <div class="main-tag box-shadow">#해변</div>
                          <div class="main-tag box-shadow">#경관/포토</div>
                          <div class="main-tag box-shadow">#커플</div>
                          <div class="main-tag box-shadow">#맑음</div>
                          <div class="main-tag box-shadow">#가을</div>
                          <div class="main-tag box-shadow">#자연경관</div>
                          <div class="main-tag box-shadow">#포토스팟</div>
                          <div class="main-tag box-shadow">#봄꽃</div>
                          <div class="main-tag box-shadow">#유채꽃</div>
                          <div class="main-tag box-shadow">#반려동물</div>
                          <p class="main-address mt-2 mb-4">주소 제주특별자치도 서귀포시 성산읍 섭지코지로 107</p>
                        </div>
                        <a class="text-center d-inline-block pe-5" href="${path}/detail/detail-olle?no=965" target="_blank">상세보기 <i
                            class="fa-solid fa-arrow-up-right-from-square"></i></a>
                      </div>
                    </div>
                    <div class="swiper-slide p-4">
                      <div class="testimonial card rounded-3 shadow border-0">
                        <div class="testimonial-avatar"><img class="recomend-img" src="${path}/resources/image/img/recom7.jpg"
                            alt="..."></div>
                        <div class="text">
                          <div class="testimonial-quote">
                            <i class="fas fa-quote-left"></i>
                            <p class="fs-4 d-inline text-custom-gray400"> 천지연폭포</p>
                          </div>
                          <div class="main-tag box-shadow">#폭포</div>
                          <div class="main-tag box-shadow">#밤</div>
                          <div class="main-tag box-shadow">#경관/포토</div>
                          <div class="main-tag box-shadow">#부모</div>
                          <div class="main-tag box-shadow">#맑음</div>
                          <div class="main-tag box-shadow">#여름</div>
                          <div class="main-tag box-shadow">#자연경관</div>
                          <div class="main-tag box-shadow">#포토스팟</div>
                          <div class="main-tag box-shadow">#유네스코</div>
                          <p class="main-address mt-2 mb-4">주소 제주특별자치도 서귀포시 남성중로 2-15</p>
                        </div>
                        <a class="text-center d-inline-block pe-5" href="${path}/detail/detail-olle?no=1051" target="_blank">상세보기 <i
                            class="fa-solid fa-arrow-up-right-from-square"></i></a>
                      </div>
                    </div>
                    <div class="swiper-slide p-4">
                      <div class="testimonial card rounded-3 shadow border-0">
                        <div class="testimonial-avatar"><img class="recomend-img" src="${path}/resources/image/img/recom8.jpg"
                            alt="..."></div>
                        <div class="text">
                          <div class="testimonial-quote">
                            <i class="fas fa-quote-left"></i>
                            <p class="fs-4 d-inline text-custom-gray400"> 카멜리아힐</p>
                          </div>
                          <div class="main-tag box-shadow">#경관/포토</div>
                          <div class="main-tag box-shadow">#커플</div>
                          <div class="main-tag box-shadow">#아이</div>
                          <div class="main-tag box-shadow">#맑음</div>
                          <div class="main-tag box-shadow">#겨울</div>
                          <div class="main-tag box-shadow">#힐링</div>
                          <div class="main-tag box-shadow">#자연경관</div>
                          <div class="main-tag box-shadow">#포토스팟</div>
                          <div class="main-tag box-shadow">#어린이</div>
                          <div class="main-tag box-shadow">#어트랙션</div>
                          <div class="main-tag box-shadow">#동백</div>
                          <div class="main-tag box-shadow">#수국</div>
                          <p class="main-address mt-2 mb-4">주소 제주 서귀포시 안덕면 병악로 166</p>
                        </div>
                        <a class="text-center d-inline-block pe-5" href="${path}/detail/detail-olle?no=1132" target="_blank">상세보기 <i
                            class="fa-solid fa-arrow-up-right-from-square"></i></a>
                      </div>
                    </div>
                  </div>
                  <div class="swiper-pagination"> </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6 d-inline-block align-items-end">
          <div class="text-end">
            <img class="img-map figure py-5" src="${path}/resources/image/custom/map_jeju.png" />
          </div>
        </div>
      </div>
  </section>
  <section class="py-4">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-8">
          <p class="subtitle text-primary">제주의 특색이 담긴 향토음식, 자연과 함께하는 감성 넘치는 카페</p>
          <h2 class="font-Tenada">음식/카페</h2>
        </div>
        <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm"
            href="category-food.html">
            더 둘러보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
      </div>
      <div class="swiper-container guides-slider mx-n2 pt-3">
        <!-- Additional required wrapper-->
        <div class="swiper-wrapper pb-5">
          <!-- Slides-->
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster hover-animate mb-4 mb-lg-0 shadow"><a class="tile-link"
                href="${path}/detail/detail-olle?no=3603"></a><img class="bg-image" src="${path}/resources/image/custom/foodrecom1.png" alt="제주김만복">
              <div class="card-body overlay-content">
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster hover-animate mb-4 mb-lg-0 shadow"><a class="tile-link"
                href="${path}/detail/detail-olle?no=3135"></a><img class="bg-image" src="${path}/resources/image/custom/foodrecom2.png" alt="올래국수">
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster hover-animate mb-4 mb-lg-0 shadow"><a class="tile-link"
                href="${path}/detail/detail-olle?no=3598"></a><img class="bg-image" src="${path}/resources/image/custom/foodrecom3.png" alt="제주선">
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster hover-animate mb-4 mb-lg-0 shadow"><a class="tile-link"
                href="${path}/detail/detail-olle?no=3657"></a><img class="bg-image" src="${path}/resources/image/custom/foodrecom4.png" alt="돈사돈">
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster hover-animate mb-4 mb-lg-0 shadow"><a class="tile-link"
                href="${path}/detail/detail-olle?no=3238"></a><img class="bg-image" src="${path}/resources/image/custom/foodrecom5.png" alt="카페공작소">
            </div>
          </div>
        </div>
        <div class="swiper-pagination d-md-none"> </div>
      </div>
    </div>
  </section>
  <section class="py-4 bg-gray-100">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-8">
          <p class="subtitle text-primary">호캉스를 즐길 수 있는 호텔부터 가성비 좋은 민박까지</p>
          <h2 class="font-Tenada">인기숙소 </h2>
        </div>
        <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm"
            href="category-room.html">
            더 둘러보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
      </div>
      <!-- Slider main container-->
      <div class="swiper-container swiper-container-mx-negative swiper-init pt-3"
        data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
        <!-- Additional required wrapper-->
        <div class="swiper-wrapper pb-5">
          <!-- Slides-->
          <div class="swiper-slide h-auto px-2">
            <!-- place item-->
            <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
                    src="${path}/resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room" /><a
                    class="tile-link" href="detail-rooms.html"></a>
                  <div class="card-img-overlay-bottom z-index-20">
                    <div class="d-flex text-white text-sm align-items-center"><img
                        class="avatar avatar-border-white flex-shrink-0 me-2" src="${path}/resources/img/avatar/avatar-0.jpg"
                        alt="Pamela" />
                      <div>Pamela</div>
                    </div>
                  </div>
                  <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40"
                      href="javascript: void();">
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"> </use>
                      </svg></a></div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern,
                        Well-Appointed Room</a></h6>
                    <div class="d-flex card-subtitle mb-3">
                      <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <p class="card-text text-muted"><span class="h4 text-primary">$80</span> per night</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
            <!-- place item-->
            <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
                    src="${path}/resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Cute Quirky Garden apt, NYC adjacent" /><a
                    class="tile-link" href="detail-rooms.html"></a>
                  <div class="card-img-overlay-bottom z-index-20">
                    <div class="d-flex text-white text-sm align-items-center"><img
                        class="avatar avatar-border-white flex-shrink-0 me-2" src="${path}/resources/img/avatar/avatar-7.jpg"
                        alt="John" />
                      <div>John</div>
                    </div>
                  </div>
                  <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40"
                      href="javascript: void();">
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"> </use>
                      </svg></a></div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Cute
                        Quirky Garden apt, NYC adjacent</a></h6>
                    <div class="d-flex card-subtitle mb-3">
                      <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-gray-300"> </i>
                      </p>
                    </div>
                    <p class="card-text text-muted"><span class="h4 text-primary">$121</span> per night</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
            <!-- place item-->
            <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
                    src="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!" /><a
                    class="tile-link" href="detail-rooms.html"></a>
                  <div class="card-img-overlay-bottom z-index-20">
                    <div class="d-flex text-white text-sm align-items-center"><img
                        class="avatar avatar-border-white flex-shrink-0 me-2" src="${path}/resources/img/avatar/avatar-8.jpg"
                        alt="Julie" />
                      <div>Julie</div>
                    </div>
                  </div>
                  <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40"
                      href="javascript: void();">
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"> </use>
                      </svg></a></div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern Apt
                        - Vibrant Neighborhood!</a></h6>
                    <div class="d-flex card-subtitle mb-3">
                      <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i><i
                          class="fa fa-star text-gray-300"> </i>
                      </p>
                    </div>
                    <p class="card-text text-muted"><span class="h4 text-primary">$75</span> per night</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
            <!-- place item-->
            <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
                    src="${path}/resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment" /><a
                    class="tile-link" href="detail-rooms.html"></a>
                  <div class="card-img-overlay-bottom z-index-20">
                    <div class="d-flex text-white text-sm align-items-center"><img
                        class="avatar avatar-border-white flex-shrink-0 me-2" src="${path}/resources/img/avatar/avatar-9.jpg"
                        alt="Barbora" />
                      <div>Barbora</div>
                    </div>
                  </div>
                  <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40"
                      href="javascript: void();">
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"> </use>
                      </svg></a></div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Sunny
                        Private Studio-Apartment</a></h6>
                    <div class="d-flex card-subtitle mb-3">
                      <p class="flex-grow-1 mb-0 text-muted text-sm">Shared room</p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-gray-300"> </i>
                      </p>
                    </div>
                    <p class="card-text text-muted"><span class="h4 text-primary">$93</span> per night</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
            <!-- place item-->
            <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
                    src="${path}/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise" /><a
                    class="tile-link" href="detail-rooms.html"></a>
                  <div class="card-img-overlay-bottom z-index-20">
                    <div class="d-flex text-white text-sm align-items-center"><img
                        class="avatar avatar-border-white flex-shrink-0 me-2" src="${path}/resources/img/avatar/avatar-10.jpg"
                        alt="Jack" />
                      <div>Jack</div>
                    </div>
                  </div>
                  <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40"
                      href="javascript: void();">
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"> </use>
                      </svg></a></div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark"
                        href="detail-rooms.html">Mid-Century Modern Garden Paradise</a></h6>
                    <div class="d-flex card-subtitle mb-3">
                      <p class="flex-grow-1 mb-0 text-muted text-sm">Entire house</p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <p class="card-text text-muted"><span class="h4 text-primary">$115</span> per night</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide h-auto px-2">
            <!-- place item-->
            <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
                    src="${path}/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan" /><a
                    class="tile-link" href="detail-rooms.html"></a>
                  <div class="card-img-overlay-bottom z-index-20">
                    <div class="d-flex text-white text-sm align-items-center"><img
                        class="avatar avatar-border-white flex-shrink-0 me-2" src="${path}/resources/img/avatar/avatar-11.jpg"
                        alt="Stuart" />
                      <div>Stuart</div>
                    </div>
                  </div>
                  <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40"
                      href="javascript: void();">
                      <svg class="svg-icon text-white">
                        <use xlink:href="#heart-1"> </use>
                      </svg></a></div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Brooklyn
                        Life, Easy to Manhattan</a></h6>
                    <div class="d-flex card-subtitle mb-3">
                      <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-gray-300"> </i>
                      </p>
                    </div>
                    <p class="card-text text-muted"><span class="h4 text-primary">$123</span> per night</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- If we need pagination-->
        <div class="swiper-pagination"></div>
      </div>
    </div>
  </section>
  <!-- Divider Section-->
  <section class="py-1 position-relative dark-overlay"><img class="bg-image" src="${path}/resources/image/custom/bg3.png" alt="">
    <div class="container">
      <div class="overlay-content text-white py-lg-5">
        <h3 class="display-5 font-Tenada text-shadow mb-5 text-shadow-custom">올레길 초보를 위한<br>초심자 코스로 함께 떠나볼까요?</h3>
        <p class="font-size150">코스길이 ~15km | 소요시간 ~5시간</p>
        <a class="btn btn-light" href="${path}/category/category-olle?search=올레">코스 둘러보기</a><!-- 이후 올레길 난이도 하 선택된 페이지로 보내기 -->
      </div>
    </div>
  </section>
  
  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>