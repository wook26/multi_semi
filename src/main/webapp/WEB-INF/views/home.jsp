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
                    <c:forEach var="list" items="${list1}">
                    <div class="swiper-slide p-4">
                      <div class="testimonial card rounded-3 shadow border-0">
                        <div class="testimonial-avatar"><img class="recomend-img" src="${list.imgpath}"
                            alt="..."></div>
                        <div class="text">
                          <div class="testimonial-quote">
                            <i class="fas fa-quote-left"></i>
                            <p class="fs-4 d-inline text-custom-gray400">${list.title}</p>
                          </div>
                          <c:forEach var="tag" items="${list.tagList}" end="7">
                            <div class="main-tag box-shadow">${tag}</div>
                          </c:forEach>
                          <p class="main-address mt-2 mb-4">주소 ${list.roadaddress}</p>
                        </div>
                        <a class="text-center d-inline-block pe-5" href="${path}/detail/detail-olle?no=${list.no}" target="_blank">상세보기 <i
                            class="fa-solid fa-arrow-up-right-from-square"></i></a>
                      </div>
                    </div>
                    </c:forEach>
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
                    <c:forEach var="list" items="${list2}">
                    <div class="swiper-slide p-4">
                      <div class="testimonial card rounded-3 shadow border-0">
                        <div class="testimonial-avatar"><img class="recomend-img" src="${list.imgpath}"
                            alt="..."></div>
                        <div class="text">
                          <div class="testimonial-quote">
                            <i class="fas fa-quote-left"></i>
                            <p class="fs-4 d-inline text-custom-gray400">${list.title}</p>
                          </div>
                          <c:forEach var="tag" items="${list.tagList}" end="7">
                            <div class="main-tag box-shadow">${tag}</div>
                          </c:forEach>
                          <p class="main-address mt-2 mb-4">주소 ${list.roadaddress}</p>
                        </div>
                        <a class="text-center d-inline-block pe-5" href="${path}/detail/detail-olle?no=${list.no}" target="_blank">상세보기 <i
                            class="fa-solid fa-arrow-up-right-from-square"></i></a>
                      </div>
                    </div>
                    </c:forEach>
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
            href="${path}/category/category-room">
            더 둘러보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
      </div>
      <div class="swiper-container guides-slider mx-n2 pt-3">
        <!-- Additional required wrapper-->
        <div class="swiper-wrapper pb-5">
        
          <!-- Slides-->
          <c:forEach var="list" items="${list3}" varStatus="status">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster hover-animate mb-4 mb-lg-0 shadow"><a class="tile-link"
                href="${path}/detail/detail-olle?no=${list.no}"></a><img class="bg-image" src="${path}/resources/image/custom/foodrecom${status.count}.png">
              <div class="card-body overlay-content">
              </div>
            </div>
          </div>
          </c:forEach>
          
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
            href="${path}/category/category-room">
            더 둘러보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
      </div>
      <!-- Slider main container-->
      <div class="swiper-container swiper-container-mx-negative swiper-init pt-3"
        data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
        <!-- Additional required wrapper-->
        <div class="swiper-wrapper pb-5">
          <!-- Slides-->
          <c:forEach var="list" items="${list4}">
          <div class="swiper-slide h-auto px-2">
            <!-- place item-->
            <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
              <div class="card h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden gradient-overlay" style="height: 200px;"> <img class="img-fluid"
                    src="${list.imgpath}" style="object-fit: cover;" /><a
                    class="tile-link" href="${path}/detail/detail-olle?no=${list.no}"></a>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="${path}/detail/detail-olle?no=${list.no}">${list.title}</a></h6>
                    <div class="d-flex card-subtitle mb-3">
                      <p class="flex-grow-1 mb-0 text-muted text-sm">${list.si} > ${list.gu}</p>
                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
                          class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <c:forEach var="tag" items="${list.tagList}" end="1">
                      <p class="card-text text-muted d-inline-block"><span class="h4 text-primary">${tag}&nbsp;</span></p> 
                    </c:forEach>
                  </div>
                </div>
              </div>
            </div>
          </div>
           </c:forEach> 
        </div>
        <!-- If we need pagination-->
        <div class="swiper-pagination"></div>
      </div>
    </div>
  </section>
  <!-- Community Section -->
  <section class="container">
  	<div class = "row">
	    <div class="col-5 container my-6">
	      <div class="row mb-2">
	        <div class="col-md-8">
	          <p class="subtitle text-primary">제주 여행가들의 생생한</p>
	          <h2 class="font-Tenada">여행후기/일정공유 </h2>
	        </div>
	        <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm"
	            href="${path}/category/">
	            더 둘러보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
	      </div>
	      <table class="table text-start">
	        <tr>
	          <td><a href="#">후기 1</a></td>
	        </tr>
	        <tr>
	          <td><a href="#">후기 1</a></td>
	        </tr>
	        <tr>
	          <td><a href="#">후기 1</a></td>
	        </tr>
	        <tr>
	          <td><a href="#">후기 1</a></td>
	        </tr>
	        <tr>
	          <td class="border-0"><a href="#">후기 1</a></td>
	        </tr>
	      </table>
	    </div>
	    <div class="col-5 container my-6">
	      <div class="row mb-2">
	        <div class="col-md-8">
	          <p class="subtitle text-primary">설레는 새 여행을 함께할</p>
	          <h2 class="font-Tenada">동행모집 </h2>
	        </div>
	        <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm"
	            href="category-room.html">
	            더 둘러보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
	      </div>
	      <table class="table text-start">
	        <tr>
	          <td><a href="#">후기 1</a></td>
	        </tr>
	        <tr>
	          <td><a href="#">후기 1</a></td>
	        </tr>
	        <tr>
	          <td><a href="#">후기 1</a></td>
	        </tr>
	        <tr>
	          <td><a href="#">후기 1</a></td>
	        </tr>
	        <tr>
	          <td class="border-0"><a href="#">후기 1</a></td>
	        </tr>
	      </table>
	    </div>
	</div>
  </section>
  <!-- Divider Section-->
  <section class="py-1 position-relative dark-overlay"><img class="bg-image" src="${path}/resources/image/custom/bg3.png" alt="">
    <div class="container">
      <div class="overlay-content text-white py-lg-5">
        <h3 class="display-5 font-Tenada text-shadow mb-5 text-shadow-custom">올레길 초보를 위한<br>초심자 코스로 함께 떠나볼까요?</h3>
        <p class="font-size150 text-shadow">코스길이 ~15km | 소요시간 ~5시간</p>
        <a class="btn btn-light" href="${path}/category/category-olle?search=올레">코스 둘러보기</a><!-- 이후 올레길 난이도 하 선택된 페이지로 보내기 -->
      </div>
    </div>
  </section>
  
  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>