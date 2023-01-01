<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
  
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="숙소" name="title"/>
</jsp:include>

<!-- Hero Section-->
  <section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
    style="background-image: url('${path}/resources/image/img/jeju14.jpg');">
    <div class="container overlay-content">
      <div class="d-flex justify-content-center flex-column flex-lg-row align-items-lg-end">
        <div class="text-white mb-lg-0 text-center">
          <h1 class="text-shadow verified">숙소</h1>
          <p>감성충만 캠핑장과 가성비 민박까지</p>
        </div>
      </div>
    </div>
  </section>
  <div class="container py-2">
    <a class="text-custom-gray400" href="${path}"> <i class="fa-solid fa-house"></i> </a>
	<a class="text-custom-gray400" href="${path}/resources/category-room.html"> 숙소 </a>
  </div>

  <div class="container pt-3">
    <div class="search-bar rounded p-3 p-lg-4 position-relative z-index-20">
      <form action="${path}/category/category-room">
        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider">
            <select class="selectpicker" title="지역" name="gu" data-style="btn-form-control">
              <option value="제주시내" ${param.gu=='제주시내' ? 'selected' : ''}>제주시내</option>
              <option value="서귀포시내" ${param.gu=='서귀포시내' ? 'selected' : ''}>서귀포시내</option>
              <option value="중문" ${param.gu=='중문' ? 'selected' : ''}>중문</option>
              <option value="애월" ${param.gu=='애월' ? 'selected' : ''}>애월</option>
              <option value="가파도" ${param.gu=='가파도' ? 'selected' : ''}>가파도</option>
              <option value="구좌" ${param.gu=='구좌' ? 'selected' : ''}>구좌</option>
              <option value="남원" ${param.gu=='남원' ? 'selected' : ''}>남원</option>
              <option value="대정" ${param.gu=='대정' ? 'selected' : ''}>대정</option>
              <option value="마라도" ${param.gu=='마라도' ? 'selected' : ''}>마라도</option>
              <option value="성산" ${param.gu=='성산' ? 'selected' : ''}>성산</option>
              <option value="안덕" ${param.gu=='안덕' ? 'selected' : ''}>안덕</option>
              <option value="조천" ${param.gu=='조천' ? 'selected' : ''}>조천</option>
              <option value="추차도" ${param.gu=='추차도' ? 'selected' : ''}>추자도</option>
              <option value="표선" ${param.gu=='표선' ? 'selected' : ''}>표선</option>
              <option value="한경" ${param.gu=='한경' ? 'selected' : ''}>한경</option>
              <option value="한림" ${param.gu=='한림' ? 'selected' : ''}>한림</option>
            </select>
          </div>
          <div class="col-lg-7 d-flex align-items-center form-group no-divider">
            <input class="form-control border-0 shadow-0" type="search" name="search" value="${param.search}" placeholder="검색어를 입력하세요">
          </div>
          <div class="col-lg-2 form-group d-grid mb-0">
            <button class="btn btn-primary h-100" type="submit">검색 </button>
          </div>
        </div>
      </form>
         <form>
          <ul class="nav nav-pills-tag justify-content-start mt-3">
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="숙소" onchange="this.form.submit();" ${param.search=='숙소' ? 'checked' : ''}><span>#숙소</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="호텔" onchange="this.form.submit();" ${param.search=='호텔' ? 'checked' : ''}><span>#호텔</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="리조트" onchange="this.form.submit();" ${param.search=='리조트' ? 'checked' : ''}><span>#리조트</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="펜션" onchange="this.form.submit();" ${param.search=='펜션' ? 'checked' : ''}><span>#펜션</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="게스트하우스" onchange="this.form.submit();" ${param.search=='게스트하우스' ? 'checked' : ''}><span>#게스트하우스</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="바비큐" onchange="this.form.submit();" ${param.search=='바비큐' ? 'checked' : ''}><span>#바비큐</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="온돌방" onchange="this.form.submit();" ${param.search=='온돌방' ? 'checked' : ''}><span>#온돌방</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="반려동물" onchange="this.form.submit();" ${param.search=='반려동물' ? 'checked' : ''}><span>#반려동물</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="캠핑" onchange="this.form.submit();"  ${param.search=='캠핑' ? 'checked' : ''}><span>#캠핑</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="해변" onchange="this.form.submit();"  ${param.search=='해변' ? 'checked' : ''}><span>#해변</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="독채" onchange="this.form.submit();"  ${param.search=='독채' ? 'checked' : ''}><span>#독채</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="주차장" onchange="this.form.submit();"  ${param.search=='주차장' ? 'checked' : ''}><span>#주차장</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="와이파이" onchange="this.form.submit();"  ${param.search=='와이파이' ? 'checked' : ''}><span>#와이파이</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="힐링" onchange="this.form.submit();"  ${param.search=='힐링' ? 'checked' : ''}><span>#힐링</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="풀빌라" onchange="this.form.submit();"  ${param.search=='풀빌라' ? 'checked' : ''}><span>#풀빌라</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="조식" onchange="this.form.submit();"  ${param.search=='조식' ? 'checked' : ''}><span>#조식</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="단체" onchange="this.form.submit();"  ${param.search=='단체' ? 'checked' : ''}><span>#단체</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="커플" onchange="this.form.submit();"  ${param.search=='커플' ? 'checked' : ''}><span>#커플</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="가족" onchange="this.form.submit();"  ${param.search=='가족' ? 'checked' : ''}><span>#가족</span></label></li>
            <li class="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="안전" onchange="this.form.submit();"  ${param.search=='안전' ? 'checked' : ''}><span>#안전</span></label></li>
            <input type="hidden" id="searchValue" value="${param.search}">
          </ul>
         </form>
    </div>
  </div>

  <section class="py-6">
      <!-- 인기 숙소   -->
	<c:if test="${param.search == null}">
     <section class="pt-6">
      <div class="container">
        <div class="row mb-4">
          <div class="col-lg-8">
            <h2>인기숙소</h2>
            <p class="text-muted mb-0">제주 여행가들의 선택</p>
          </div>
        </div>
      </div>
      <div class="container-fluid">
        <div class="row">
         <c:forEach var="item" items="${recomList}">
          <div class="col-6 col-lg-4 col-xl-3 px-0">
            <div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;"><img class="bg-image" src="${item.imgpath}" alt="">
              <div class="p-3 p-sm-5 text-white z-index-20">
                <h4 class="h2">${item.title}</h4>
                <p class="mb-4">${item.si} ${item.gu}</p><a class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="${path}/detail/detail-olle?no=${item.no}">상세정보 확인<i class="fa fa-chevron-right ms-2"></i></a>
              </div>
            </div>
          </div>
          </c:forEach>
        </div>
      </div>
     </section>
     </c:if>
        <!-- 전체보기 -->
        <section class="py-5">
          <div class="container">
            <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
              <div class="col-md-8">
                <h3 class="text-primary">전체보기</h3>
              </div>
            </div>
            <div class="row">
	            <c:forEach var="item" items="${list}">
	              <!-- place item 1 -->
	              <div class="col-sm-3 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
	                <div class="card h-100 border-0 shadow">
	                  <div class="card-img-top overflow-hidden gradient-overlay" style="height: 200px;"> <img class="img-fluid"
	                      src="${item.imgpath}" alt="" style="object-fit: cover;" /><a class="tile-link"
	                      href="${path}/detail/detail-olle?no=${item.no}"></a>
	                  </div>
	                  <div class="card-body d-flex align-items-center">
	                    <div class="w-100">
	                      <h6 class="card-title"><a class="text-decoration-none text-dark"
	                          href="detail-rooms.html">${item.title}</a></h6>
	                      <div class="d-flex card-subtitle mb-3">
	                        <p class="flex-grow-1 mb-0 text-muted text-sm">${item.si} > ${item.gu}</p>
	                      </div>
	                      <div class="d-flex card-subtitle mb-3">
	                        <p class="flex-grow-1 mb-0 text-primary text-sm">${item.tag}</p>
	                      </div>
	                      <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
		                    <c:forEach var="i" begin="1" end="${item.avgRate}">
								<i class="fa fa-xs fa-star text-primary"></i>
							</c:forEach>
							<c:forEach var="i" begin="${item.avgRate}" end="4">
								<i class="fa fa-xs fa-star text-gray-300"></i>
							</c:forEach>
	                      </p>
	                    </div>
	                  </div>
	                </div>
	              </div>
	              </c:forEach>
              </div>
             </div>
            </section>
        	

        <!-- Pagination -->
    <nav aria-label="Page navigation pt-3">
      <ul class="pagination pagination-template d-flex justify-content-center">
        <li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-room?page=${pageInfo.prevPage}');"> <i class="fa fa-angle-left"></i></a></li>
        
        <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
			<c:if test="${status.current == pageInfo.currentPage}">
				<li class="page-item active"><a class="page-link">${status.current}</a></li>
			</c:if>
			<c:if test="${status.current != pageInfo.currentPage}">
				<li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-room?page=${status.current}');">${status.current}</a></li>
			</c:if>
		</c:forEach>
        <li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-room?page=${pageInfo.nextPage}');"> <i class="fa fa-angle-right"></i></a></li>
      </ul>
    </nav>
  </section>
  
  <script type="text/javascript">
	function movePage(pageUrl){
		var search = document.getElementById("searchValue").value; // 갤럭시
		pageUrl = pageUrl + '&search=' + search; 
		location.href = encodeURI(pageUrl);	
	}
  </script>
  
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>