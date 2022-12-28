<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
  
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="제주소개/관광 > 제주명소 > 올레" name="title"/>
</jsp:include>

  <!-- Hero Section-->
  <section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
    style="background-image:url(${path}/resources/image/img/Jeju7.jpg)">
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
    <a class="text-custom-gray400" href="category-olle.html">제주소개/관광 <i class="fa-solid fa-chevron-right"></i> 제주명소</a>
  </div>
  <h3 class="pt-4 pb-2" style="text-align: center;">제주명소</h3>

  <div class="container position-relative mb-3">
    <ul class="nav nav-tabs search-bar-nav-tabs" role="tablist">
      <li class="nav-item me-2 shadow"><a class="nav-link active" href="#olle" data-bs-toggle="tab" role="tab">명소 검색</a></li>
    </ul>
    <div class="search-bar search-bar-with-tabs p-3 p-lg-4">
      <div class="tab-content">
    
        <!-- 올레 검색창 -->
        <div class="tab-pane fade show active" id="olle" role="tabpanel">
          <form action="${path}/category/category-olle">
            <div class="row">
              <div class="col-lg-2 d-flex align-items-center form-group no-divider">
              </div>
              <div class="col-lg-6 d-flex align-items-center form-group no-divider">
                <input class="form-control border-0 shadow-0" type="search" name="search" value="${param.search}" placeholder="검색어를 입력하세요.">
              </div>
              <div class="col-lg-2 d-grid form-group mb-0">
                <button class="btn btn-primary h-100" type="submit">검색 </button>
              </div>
            </div>
	
	          <!-- 태그 -->
	          <!-- <ul class="nav nav-pills-tag justify-content-start mt-3">
	            <li class="nav-item"><a class="nav-link active" name="nav-click" href="#">#전체</a></li>
	            <li class="nav-item"><a class="nav-link hover" name="nav-click" href="#">#박물관</a></li>
	            <li class="nav-item"><a class="nav-link hover" name="nav-click" href="#">#미술관</a></li>
	            <li class="nav-item"><a class="nav-link hover" name="nav-click" href="#">#전시관</a></li>
	            <li class="nav-item"><a class="nav-link hover" name="nav-click" href="#">#제주시</a></li>
	            <li class="nav-item"><a class="nav-link hover" name="nav-click" href="#">#서귀포시</a></li>
	            <li class="nav-item"><a class="nav-link hover" name="nav-click" href="#">#문화관광</a></li>
	            <li class="nav-item"><a class="nav-link hover" name="nav-click" href="#">#실내관광지</a></li>
	          </ul>
	 -->    
			 <ul class="nav nav-pills-tag">
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="cp_item" value="opt2" ><span>#박물관</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="cp_item" value="opt3" ><span>#미술관</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="cp_item" value="opt4" ><span>#전시관</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="cp_item" value="opt5" ><span>#제주시</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="cp_item" value="opt6" ><span>#서귀포시</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="cp_item" value="opt7" ><span>#문화관광</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="cp_item" value="opt8" ><span>#실내관광지</span></label></li>
			</ul>
          </form>

        
        </div>


      </div>
    </div>
  </div>

	<c:if test="${param.search  == null}">
	
	  <!-- Our picks section-->
	  <section class="py-4">
	    <div class="container">
	      <div class="row mb-5">
	        <div class="col-md-8">
	          <h3 class="text-primary">인기 장소</h3>
	        </div>
	      </div>
	      <div class="row">
	        <div class="d-flex align-items-lg-stretch mb-4 col-lg-8">
	          <div class="card shadow-lg border-0 w-100 border-0 hover-animate"
	            style="background: center center url(${path}/resources/img/photo/photo-1449034446853-66c86144b0ad.jpg) no-repeat; background-size: cover;">
	            <a class="tile-link" href="detail-olle.html"> </a>
	            <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
	              <h3 class="text-shadow text-uppercase mb-0">San Francisco</h3>
	            </div>
	          </div>
	        </div>
	        <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
	          <div class="card shadow-lg border-0 w-100 border-0 hover-animate"
	            style="background: center center url(${path}/resources/img/photo/photo-1429554429301-1c7d5ae2d42e.jpg) no-repeat; background-size: cover;">
	            <a class="tile-link" href="detail-olle.html"> </a>
	            <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
	              <h3 class="text-shadow text-uppercase mb-0">Los Angeles</h3>
	            </div>
	          </div>
	        </div>
	      </div>
	      <div class="row">
	        <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
	          <div class="card shadow-lg border-0 w-100 border-0 hover-animate"
	            style="background: center center url(${path}/resources/img/photo/photo-1523430410476-0185cb1f6ff9.jpg) no-repeat; background-size: cover;">
	            <a class="tile-link" href="detail-olle.html"> </a>
	            <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
	              <h3 class="text-shadow text-uppercase mb-0">Santa Monica</h3>
	            </div>
	          </div>
	        </div>
	        <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
	          <div class="card shadow-lg border-0 w-100 border-0 hover-animate"
	            style="background: center center url(${path}/resources/img/photo/photo-1505245208761-ba872912fac0.jpg) no-repeat; background-size: cover;">
	            <a class="tile-link" href="detail-olle.html"> </a>
	            <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
	              <h3 class="text-shadow text-uppercase mb-0">San Diego</h3>
	            </div>
	          </div>
	        </div>
	        <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
	          <div class="card shadow-lg border-0 w-100 border-0 hover-animate"
	            style="background: center center url(${path}/resources/img/photo/photo-1519867850-74775a87e783.jpg) no-repeat; background-size: cover;">
	            <a class="tile-link" href="detail-olle.html"> </a>
	            <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
	              <h3 class="text-shadow text-uppercase mb-0">Fresno</h3>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </section>
  </c:if>
  
  
  
  <section class="py-4">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-8">
          <h3 class="text-primary">전체보기</h3>
        </div>
      </div>
      <div class="row">
      	<c:forEach var="item" items="${list}">
      	
	        <div class="col-3 hover-animate mb-4" data-marker-id="59c0c8e33b1527bfe2abaf92">
	          <div class="card h-100 border-0 shadow">
	            <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
	                src="${item.imgpath}" alt="Modern, Well-Appointed Room" /><a
	                class="tile-link" href="detail-rooms.html"></a>
	              <div class="card-img-overlay-bottom z-index-20">
	              </div>
	              <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40"
	                  href="javascript: void();">
	                  <svg class="svg-icon text-white">
	                    <use xlink:href="#heart-1"> </use>
	                  </svg></a></div>
	            </div>
	            <div class="card-body d-flex align-items-center">
	              <div class="w-100">
	                <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">${item.title}</a></h6>
	                <div class="d-flex card-subtitle mb-3">
	                  <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
	                  <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i
	                      class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i
	                      class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
	                  </p>
	                </div>
	                <p class="card-text text-muted"><span class="h4 text-primary">$80</span> per night</p>
	              </div>
	            </div>
	          </div>
	        </div>
        
      	</c:forEach>
      </div>
    </div>

    <!-- Pagination -->
    <nav aria-label="Page navigation pt-3">
      <ul class="pagination pagination-template d-flex justify-content-center">
        <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
        <li class="page-item active"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
      </ul>
    </nav>
  </section>
  
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>