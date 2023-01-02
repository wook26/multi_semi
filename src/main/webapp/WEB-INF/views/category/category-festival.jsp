<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
    
<jsp:include page="/WEB-INF/views/common/header.jsp">
		<jsp:param value="제주소개/관광 > 축제/행사" name="title"/>
	
</jsp:include>
    

  <!-- Hero Section-->
  <section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
    style="background-image: url(${path}/resources/image/img/expo1.jpeg);">
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
    <a class="text-custom-gray400" href="${path}"><i class="fa-solid fa-house"></i></a>
    <a class="text-custom-gray400" href="${path}/category/category-weather">제주소개/관광 <i class="fa-solid fa-chevron-right"></i> 축제/행사</a>
  </div>
  <h3 class="pt-4 pb-2" style="text-align: center;">축제/행사</h3>
  <!-- overflow: hidden; text-overflow: ellipsis; white-space: nowrap; -->

  <section class="py-5">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12">
          <h3 class="text-primary">진행 중인 축제와 행사</h3>
        </div>
      </div>
      <div class="row mb-5">
        <!-- blog item-->
        <c:forEach var="item" items="${list}">
        
        <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
          <div class="card shadow border-0 h-100"><a href="${path}/detail/detail-olle?no=${item.no}&category=${item.category}">
          <img class="img-fluid card-img-top" style="height: 300px; object-fit: cover;" src="${item.imgpath}" alt="#" /></a>
            <div class="card-body">
              <!-- <a class="text-uppercase text-muted text-sm letter-spacing-2" href="#">Travel </a> -->
              <h5 class="my-2"><a class="text-dark" href="detail-festival.html">${item.title} </a></h5>
              <p class="my-2 text-muted text-sm" style="line-height: 1.2em; height: 3.6em; overflow: hidden; over-wrap:white;">${item.introduction}</p>
              <a class="btn btn-link ps-0" href="detail-festival.html">더보기<i class="fa fa-arrow-right ms-2"></i></a>
            </div>
          </div>
        </div>
        </c:forEach>
        

        <!-- Pagination (하단페이지)-->
        <nav class="pt-5" aria-label="Page navigation example">
          <ul class="pagination pagination-template d-flex justify-content-center">
        	<li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-festival?page=${pageInfo.prevPage}');"> <i class="fa fa-angle-left"></i></a></li>
        
       		<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
			  <c:if test="${status.current == pageInfo.currentPage}">
				<li class="page-item active"><a class="page-link">${status.current}</a></li>
			  </c:if>
			  <c:if test="${status.current != pageInfo.currentPage}">
				<li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-festival?page=${status.current}');">${status.current}</a></li>
			  </c:if>
			</c:forEach>
			
        	<li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-festival?page=${pageInfo.nextPage}');"> <i class="fa fa-angle-right"></i></a></li>
          </ul>
        </nav>
      </div>
     </div>
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