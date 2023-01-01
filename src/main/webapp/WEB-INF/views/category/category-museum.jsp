<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
    
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="박물관/미술관/전시관" name="title"/>

</jsp:include>


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
      <a class="nav-link py-3 mb-2 col-2" href="${param.search=='박물관전체' ? 'checked' : ''}">전체 </a>
      <a class="nav-link py-3 mb-2 col-2" href="${param.search=='박물관' ? 'checked' : ''}">박물관 </a>
      <a class="nav-link py-3 mb-2 col-2" href="${param.search=='미술관' ? 'checked' : ''}">미술관 </a>
      <a class="nav-link py-3 mb-2 col-2" href="${param.search=='전시관' ? 'checked' : ''}">전시관 </a>
    </nav>
    <ul class="nav nav-pills-tag justify-content-center">
      <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="박물관전체" onchange="this.form.submit();" ${param.search=='박물관전체' ? 'checked' : ''}/><span>#전체</span></label></li>
      <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="박물관" onchange="this.form.submit();" ${param.search=='박물관' ? 'checked' : ''}><span>#박물관</span></label></li>
      <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="미술관" onchange="this.form.submit();" ${param.search=='미술관' ? 'checked' : ''}><span>#미술관</span></label></li>
      <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="전시관" onchange="this.form.submit();" ${param.search=='전시관' ? 'checked' : ''}><span>#전시관</span></label></li>
      <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="제주시" onchange="this.form.submit();" ${param.search=='제주시' ? 'checked' : ''}><span>#제주시</span></label></li>
      <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="서귀포시" onchange="this.form.submit();" ${param.search=='서귀포시' ? 'checked' : ''}><span>#서귀포시</span></label></li>
      <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="문화관광" onchange="this.form.submit();" ${param.search=='문화관광' ? 'checked' : ''}><span>#문화관광</span></label></li>
      <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="실내관광지" onchange="this.form.submit();" ${param.search=='실내관광지' ? 'checked' : ''}><span>#실내관광지</span></label></li>
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
       <c:forEach var="item" items="${list}">
        <!-- venue item-->
        <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-img-top overflow-hidden dark-overlay bg-cover"
              style="background-image: url(${item.imgpath}); min-height: 200px;"><a class="tile-link"
                href="detail-museum.html"></a>
              <div class="card-img-overlay-bottom z-index-20">
                <h4 class="text-white text-shadow">${item.title}</h4>
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
                style=" overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">${item.introduction}</p>
              <!-- <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p> -->
              <p class="text-sm mb-0"><a class="me-1" href="${path}/detail/detail-museum?no=${item.no}">#미술관 </a><a class="me-1" href="${path}/detail/detail-museum?no=${item.no}">#실내관광지</a>
              </p>
            </div>
          </div>
        </div>
       </c:forEach>



        <!-- Pagination (하단페이지)-->
        <nav aria-label="Page navigation pt-3">
      <ul class="pagination pagination-template d-flex justify-content-center">
        <li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-museum?page=${pageInfo.prevPage}');"> <i class="fa fa-angle-left"></i></a></li>
        
        <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
			<c:if test="${status.current == pageInfo.currentPage}">
				<li class="page-item active"><a class="page-link">${status.current}</a></li>
			</c:if>
			<c:if test="${status.current != pageInfo.currentPage}">
				<li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-museum?page=${status.current}');">${status.current}</a></li>
			</c:if>
		</c:forEach>
        <li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-museum?page=${pageInfo.nextPage}');"> <i class="fa fa-angle-right"></i></a></li>
      </ul>
    </nav>
   </div>
  </section>


<script type="text/javascript">
	function movePage(pageUrl){
		var search = document.getElementById("searchValue").value; // 갤럭시
		pageUrl = pageUrl + '&search=' + search; 
		location.href = encodeURI(pageUrl);	
	}
  </script>
  
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>