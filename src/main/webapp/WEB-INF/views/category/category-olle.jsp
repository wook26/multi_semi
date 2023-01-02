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
    <a class="text-custom-gray400" href="${path}"> <i class="fa-solid fa-house"></i> </a>
	<a class="text-custom-gray400" href="${path}/resources/category-olle.html"> 제주소개/관광 <i style="color: #404040" class="fa-solid fa-chevron-right"></i> 제주명소 </a>
  </div>
  <h3 class="pt-4 pb-2" style="text-align: center;">제주명소</h3>

  <div class="container position-relative mb-3">
    <ul class="nav nav-tabs search-bar-nav-tabs" role="tablist">
      <li class="nav-item me-2 shadow"><a class="nav-link active" href="#olle" data-bs-toggle="tab" role="tab">명소 검색</a></li>
    </ul>
    <div class="search-bar search-bar-with-tabs p-3 p-lg-4">
      <div class="tab-content">
    
        <div class="tab-pane fade show active" id="olle" role="tabpanel">
          <form action="${path}/category/category-olle">
            <div class="row">
              <div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider">
	            <select class="selectpicker" title="지역" name="si" data-style="btn-form-control">
	              <option value="제주시" ${param.si=='제주시' ? 'selected' : ''}>제주시</option>
	              <option value="서귀포시" ${param.si=='서귀포시' ? 'selected' : ''}>서귀포시</option>
	              <input type="hidden" id="paramSi" value="${param.si}">
	            </select>
	          </div>
              <div class="col-lg-7 d-flex align-items-center form-group no-divider">
                <input class="form-control border-0 shadow-0" type="search" name="search" value="${param.search}" placeholder="검색어를 입력하세요.">
              </div>
              <div class="col-lg-2 d-grid form-group mb-0">
                <button class="btn btn-primary h-100" type="submit">검색 </button>
              </div>
            </div>
          </form>
          <form action="${path}/category/category-olle">
			 <ul class="nav nav-pills-tag">
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="체험관광" onchange="this.form.submit();" ${param.search=='체험관광' ? 'checked' : ''}><span>#체험관광</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="문화관광" onchange="this.form.submit();" ${param.search=='문화관광' ? 'checked' : ''}><span>#문화관광</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="휴식/힐링" onchange="this.form.submit();" ${param.search=='휴식/힐링' ? 'checked' : ''}><span>#휴식/힐링</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="경관/포토" onchange="this.form.submit();" ${param.search=='경관/포토' ? 'checked' : ''}><span>#경관/포토</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="액티비티" onchange="this.form.submit();" ${param.search=='액티비티' ? 'checked' : ''}><span>#액티비티</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="역사유적" onchange="this.form.submit();" ${param.search=='역사유적' ? 'checked' : ''}><span>#역사유적</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="반려동물" onchange="this.form.submit();" ${param.search=='반려동물' ? 'checked' : ''}><span>#반려동물</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="어트랙션" onchange="this.form.submit();" ${param.search=='어트랙션' ? 'checked' : ''}><span>#어트랙션</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="테마공원" onchange="this.form.submit();" ${param.search=='테마공원' ? 'checked' : ''}><span>#테마공원</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="마을산책" onchange="this.form.submit();" ${param.search=='마을산책' ? 'checked' : ''}><span>#마을산책</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="친구" onchange="this.form.submit();" ${param.search=='친구' ? 'checked' : ''}><span>#친구</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="커플" onchange="this.form.submit();" ${param.search=='커플' ? 'checked' : ''}><span>#커플</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="아이" onchange="this.form.submit();" ${param.search=='아이' ? 'checked' : ''}><span>#아이</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="혼자" onchange="this.form.submit();" ${param.search=='혼자' ? 'checked' : ''}><span>#혼자</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="산" onchange="this.form.submit();" ${param.search=='산' ? 'checked' : ''}><span>#산</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="실내" onchange="this.form.submit();" ${param.search=='실내' ? 'checked' : ''}><span>#실내</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="해변" onchange="this.form.submit();" ${param.search=='해변' ? 'checked' : ''}><span>#해변</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="올레" onchange="this.form.submit();" ${param.search=='올레' ? 'checked' : ''}><span>#올레</span></label></li>
			  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="오름" onchange="this.form.submit();" ${param.search=='오름' ? 'checked' : ''}><span>#오름</span></label></li>
			  <input type="hidden" id="paramSearch" value="${param.search}">
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
	            style="background: center center url('${recomList[0].imgpath}') no-repeat; background-size: cover;">
	            <a class="tile-link" href="${path}/detail/detail-olle?no=${recomList[0].no}&category=${item.category}"> </a>
	            <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
	              <h3 class="text-shadow text-uppercase mb-0">${recomList[0].title}</h3>
	            </div>
	          </div>
	        </div>
	        <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
	          <div class="card shadow-lg border-0 w-100 border-0 hover-animate"
	            style="background: center center url('${recomList[1].imgpath}') no-repeat; background-size: cover;">
	            <a class="tile-link" href="${path}/detail/detail-olle?no=${recomList[1].no}&category=${item.category}"> </a>
	            <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
	              <h3 class="text-shadow text-uppercase mb-0">${recomList[1].title}</h3>
	            </div>
	          </div>
	        </div>
	      </div>
	      <div class="row">
	      
	       <c:forEach var="item" items="${recomList}" begin="2">
	        <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
	          <div class="card shadow-lg border-0 w-100 border-0 hover-animate"
	            style="background: center center url('${item.imgpath}') no-repeat; background-size: cover;">
	            <a class="tile-link" href="${path}/detail/detail-olle?no=${item.no}&category=${item.category}"> </a>
	            <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
	              <h3 class="text-shadow text-uppercase mb-0">${item.title}</h3>
	            </div>
	          </div>
	        </div>
	       </c:forEach>
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
	            <div class="card-img-top overflow-hidden gradient-overlay">
	            	<img class="img-fluid" style="height: 200px; width: 100%; object-fit: cover;"
	                src="${item.imgpath}" alt="" /><a
	                class="tile-link" href="${path}/detail/detail-olle?no=${item.no}&category=${item.category}"></a>
	              <div class="card-img-overlay-bottom z-index-20">
	              </div>
	            </div>
	            <div class="card-body d-flex align-items-center">
	              <div class="w-100">
	                <h5 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">${item.title}</a></h5>
	                <div class="d-flex card-subtitle mb-3">
	                  <p class="flex-grow-1 mb-0 text-muted">${item.si} > ${item.gu}</p>
	                  <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
	                    <c:forEach var="i" begin="1" end="${item.avgRate}">
							<i class="fa fa-xs fa-star text-primary"></i>
						</c:forEach>
						<c:forEach var="i" begin="${item.avgRate}" end="4">
							<i class="fa fa-xs fa-star text-gray-300"></i>
						</c:forEach>
	                  </p>
	                </div>
	                <div style="height: 50px; overflow: hidden;">
	                  <p class="card-text text-muted">${item.tag}</p>
	                </div>
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
        <li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-olle?page=${pageInfo.prevPage}');"> <i class="fa fa-angle-left"></i></a></li>
        
        <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
			<c:if test="${status.current == pageInfo.currentPage}">
				<li class="page-item active"><a class="page-link">${status.current}</a></li>
			</c:if>
			<c:if test="${status.current != pageInfo.currentPage}">
				<li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-olle?page=${status.current}');">${status.current}</a></li>
			</c:if>
		</c:forEach>
        <li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-olle?page=${pageInfo.nextPage}');"> <i class="fa fa-angle-right"></i></a></li>
      </ul>
    </nav>
  </section>
  
  <script type="text/javascript">
	function movePage(pageUrl){
		var si = document.getElementById("paramSi").value;
		var search = document.getElementById("paramSearch").value;
		pageUrl = pageUrl + '&si=' + si + '&search=' + search; 
		location.href = encodeURI(pageUrl);	
	}
	</script>
  
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>