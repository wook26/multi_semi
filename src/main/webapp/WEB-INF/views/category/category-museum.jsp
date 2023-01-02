<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
    
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

  <!-- Hero Section-->
  <section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
    style="background-image: url('${path}/resources/image/img/jeju13.jpg');">
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
	<a class="text-custom-gray400" href="${path}/resources/category-museum"> 제주소개/관광 <i style="color: #404040" class="fa-solid fa-chevron-right"></i> 박물관/미술관/전시관 </a>
  </div>
  <h3 class="pt-4 pb-2" style="text-align: center;">박물관/미술관/전시관</h3>
  <div class="container position-relative py-3">
    <nav class="nav nav-pills-menu justify-content-center row text-center mb-3">
      <a class="nav-link py-3 mb-2 col-2 ${param.search==null ? 'active' : ''}" href="${path}/category/category-museum">전체 </a>
      <a class="nav-link py-3 mb-2 col-2 ${param.search=='박물관' ? 'active' : ''}" href="${path}/category/category-museum?search=박물관">박물관 </a>
      <a class="nav-link py-3 mb-2 col-2 ${param.search=='미술관' ? 'active' : ''}" href="${path}/category/category-museum?search=미술관">미술관 </a>
      <a class="nav-link py-3 mb-2 col-2 ${param.search=='전시관' ? 'active' : ''}" href="${path}/category/category-museum?search=전시관">전시관 </a>
    </nav>
      <form action="${path}/category/category-museum">
	    <ul class="nav nav-pills-tag justify-content-center">
	      <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="" onchange="this.form.submit();" ${param.search=='' ? 'checked' : ''}><span>#전체</span></label></li>
	      <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="예술" onchange="this.form.submit();" ${param.search=='예술' ? 'checked' : ''}><span>#예술</span></label></li>
		  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="실내" onchange="this.form.submit();" ${param.search=='실내' ? 'checked' : ''}><span>#실내</span></label></li>
		  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="미술/박물관" onchange="this.form.submit();" ${param.search=='미술/박물관' ? 'checked' : ''}><span>#미술/박물관</span></label></li>
		  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="체험" onchange="this.form.submit();" ${param.search=='체험' ? 'checked' : ''}><span>#체험</span></label></li>
		  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="실내관광지" onchange="this.form.submit();" ${param.search=='실내관광지' ? 'checked' : ''}><span>#실내관광지</span></label></li>
		  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="사계절" onchange="this.form.submit();" ${param.search=='사계절' ? 'checked' : ''}><span>#사계절</span></label></li>
		  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="전시와 행사" onchange="this.form.submit();" ${param.search=='전시와 행사' ? 'checked' : ''}><span>#전시와 행사</span></label></li>
		  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="어트랙션" onchange="this.form.submit();" ${param.search=='문화관광' ? 'checked' : ''}><span>#문화관광</span></label></li>
		  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="포토스팟" onchange="this.form.submit();" ${param.search=='포토스팟' ? 'checked' : ''}><span>#포토스팟</span></label></li>
		  <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="비.눈" onchange="this.form.submit();" ${param.search=='비.눈' ? 'checked' : ''}><span>#비.눈</span></label></li>
	   	  <input type="hidden" id="paramSearch" value="${param.search}">
	    </ul>
      </form>
  </div>
  
  <section class="py-5">
    <div class="container">
      <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
        <div class="me-3">
          <p class="mb-3 mb-md-0"></p>
        </div>
        <div class="container">
        </div>
      </div>

      <div class="row">
        <!-- venue item-->
        <c:forEach var="item" items="${list}">
        <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="card h-100 border-0 shadow">
            <div class="card-img-top overflow-hidden dark-overlay bg-cover"
              style="background-image: url(${item.imgpath}); min-height: 200px;"><a class="tile-link"
                href="${path}/detail/detail-olle?no=${item.no}&category=${item.category}"></a>
              <div class="card-img-overlay-bottom z-index-20">
                <h4 class="text-white text-shadow">${item.title}</h4>
                <p class="mb-2 text-xs">
	               	<c:forEach var="i" begin="1" end="${item.avgRate}">
						<i class="fa fa-xs fa-star text-primary"></i>
					</c:forEach>
					<c:forEach var="i" begin="${item.avgRate}" end="4">
						<i class="fa fa-xs fa-star text-gray-300"></i>
					</c:forEach>
                </p>
              </div>
            </div>
            <div class="card-body">
              <p class="text-m mb-3"
                style=" overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">${item.introduction}</p>
              <p class="text-sm text-muted mb-0">${item.tag}</p>
            </div>
          </div>
        </div>
        </c:forEach>
        
       </div>
      </div>


        <!-- Pagination -->
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
		var search = document.getElementById("paramSearch").value; // 갤럭시
		pageUrl = pageUrl + '&search=' + search; 
		location.href = encodeURI(pageUrl);	
	}
</script>

<script>
    $('.nav-link').click(function () {
      if ($(this).hasClass('active')) {
        $('.nav-link').removeClass('active');
      } else {
        $('.nav-link').removeClass('active');
        $(this).addClass('active');
      }
    });
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>