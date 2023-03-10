<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="검색결과:" name="title"/>
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
          <div class="text-start text-lg-start">
            <h1 class="display-3 text-shadow font-HS">빛나는 제주</h1>
            <p class="subtitle letter-spacing-4 mb-2 text-secondary text-shadow">제브리띵과 고치가게마씸!</p>
          </div>
          <div class="search-bar mt-5 p-3 p-lg-1 ps-lg-4">
            <form action="${path}/category/search-page" method="get">
              <div class="row">
                <div class="col-lg-2 d-flex align-items-center form-group no-divider">
                  <select class="selectpicker" title="선택" name="code" data-style="btn-form-control">
                    <option value="관광지" ${param.code=='관광지' ? 'selected' : ''}>관광</option>
                    <option value="음식점" ${param.code=='음식점' ? 'selected' : ''}>맛집</option>
                    <option value="숙박" ${param.code=='숙박' ? 'selected' : ''}>숙소</option>
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

  <br><br>

  <section class="py-2">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <!-- About Listing-->
          <div class="text-block">
            <h5 class="text-primary text-center">검색 결과</h5>
            <h3 class="mb-5 text-center">검색어 <em style="color:#ffaC34;">${param.search}</em>&nbsp;에 대한 전체 <em style="color:#868686;">${count}</em>&nbsp;개의 결과를 찾았습니다.</h3>
            
            <br><br>
            
            <div class="text-block">
              <ul class="result_list">
              	<c:forEach var="item" items="${list}">
                <li><p class="text-muted mt-5">
                	<a style="font-size: 1.3rem" href="${path}/detail/detail-olle?no=${item.no}"><span style="font-weight: 700" class="hl">${item.title}</span><span class="hl">/ ${item.introduction}</span> 
                		<span class="hl" style="font-size: 1rem; line-height: 1rem; opacity: 80%">${item.tag}</span>
                	</a>
                </li>
                </c:forEach>
              </ul>
            </div>

          <nav aria-label="Page navigation pt-3">
		      <ul class="pagination pagination-template d-flex justify-content-center">
		        <li class="page-item"><a class="page-link" onclick="movePage('${path}/category/search-page?page=${pageInfo.prevPage}');"> <i class="fa fa-angle-left"></i></a></li>
		        
		        <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
					<c:if test="${status.current == pageInfo.currentPage}">
						<li class="page-item active"><a class="page-link">${status.current}</a></li>
					</c:if>
					<c:if test="${status.current != pageInfo.currentPage}">
						<li class="page-item"><a class="page-link" onclick="movePage('${path}/category/search-page?page=${status.current}');">${status.current}</a></li>
					</c:if>
				</c:forEach>
		        <li class="page-item"><a class="page-link" onclick="movePage('${path}/category/search-page?page=${pageInfo.nextPage}');"> <i class="fa fa-angle-right"></i></a></li>
		      </ul>
		    </nav>
		   </div>
		  </div>
		 </div>
        </div>
        <input type="hidden" id="paramSearch" value="${param.search}">
        <input type="hidden" id="paramCode" value="${param.code}">
    </section>
    
<script type="text/javascript">
	function movePage(pageUrl){
		var search = document.getElementById("paramSearch").value;
		var code = document.getElementById("paramCode").value;
		pageUrl = pageUrl + '&code=' + code + '&search=' + search; 
		location.href = encodeURI(pageUrl);	
	}
</script>

<script type="text/javascript">
	window.onload = function () {
		let search = document.getElementById("paramSearch").value;
		let hlList = document.querySelectorAll(".hl");
		for (var i = 0; i < hlList.length; i++) {
			let text =  hlList[i].innerHTML;
			console.dir("text : "+text);
			text = text.replaceAll(search,"<span style='color:#ffaC34; font-weight: 900;'>"+search+"</span>");
			document.querySelectorAll(".hl")[i].innerHTML = text;
		}
		//for (var i = 0; i < hlList.length; i++) {
			
		//  }
	}


</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>