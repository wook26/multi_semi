<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
    
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="맛집" name="title"/>
</jsp:include>
    

  <!-- Hero Section-->
  <section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover z-index-20"
    style="background-image: url('${path}/resources/image/img/Jeju8.jpg');">
    <div class="container overlay-content">
      <div class="d-flex justify-content-center flex-column flex-lg-row align-items-lg-end">
        <div class="text-white mb-lg-0 text-center">
          <h1 class="text-shadow verified">맛집</h1>
          <p>제주에서만 찾을 수 있는 특별한 맛을 느껴보세요</p>
        </div>
      </div>
    </div>
  </section>
  <div class="container py-2">
    <a class="text-custom-gray400" href="${path}"> <i class="fa-solid fa-house"></i> </a>
	<a class="text-custom-gray400" href="${path}/resources/category-food.html"> 맛집 </a>
  </div>

  <!-- 본문 시작  -->
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-6 py-5 p-xl-5">
        <div class="mb-2">
          <ul class="nav nav-tabs search-bar-nav-tabs" role="tablist">
            <li class="nav-item me-2 shadow"><a class="nav-link active" href="#food" data-bs-toggle="tab" role="tab">맛집 검색</a></li>
          </ul>
          <div class="search-bar search-bar-with-tabs p-3 p-lg-4">
            <div class="tab-content">
            
              <!-- 검색창 -->
              <div class="tab-pane fade show active" id="food" role="tabpanel">
                <form action="${path}/category/category-food">
                  <div class="row">
                    <div class="col-lg-3 d-flex align-items-center form-group no-divider">
                      <select class="selectpicker" title="지역" name="si" data-style="btn-form-control">
			              <option value="제주시" ${param.si=='제주시' ? 'selected' : ''}>제주시</option>
			              <option value="서귀포시" ${param.si=='서귀포시' ? 'selected' : ''}>서귀포시</option>
			              <input type="hidden" id="paramSi" value="${param.si}">
			            </select>
                    </div>                      
					<div class="col-lg-7 d-flex align-items-center form-group no-divider">
                      <input class="form-control border-0 shadow-0" type="search" name="search"
                         value="${param.search}" placeholder="검색어를 입력하세요.">
                    </div>
                    <div class="col-lg-2 d-grid form-group mb-0">
                      <button class="btn btn-primary h-100" type="submit">검색 </button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        

        <form action="${path}/category/category-food">
          <div class="row">
            <div class="col-xl-auto col-md-auto mb-5">
              <h3 class="text-primary mt-4">추천 맛 태그 TOP 15</h3>
              <ul class="nav nav-pills-tag">
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="돔베고기" onchange="this.form.submit();"><span>#돔베고기</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="흑돼지구이" onchange="this.form.submit();"><span>#흑돼지구이</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="갈치조림" onchange="this.form.submit();"><span>#갈치조림</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="해물뚝배기" onchange="this.form.submit();"><span>#해물뚝배기</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="고기국수" onchange="this.form.submit();"><span>#고기국수</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="전복구이" onchange="this.form.submit();"><span>#전복구이</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="갈치조림" onchange="this.form.submit();"><span>#갈치조림</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="고등어회" onchange="this.form.submit();"><span>#고등어회</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="땅콩아이스크림" onchange="this.form.submit();"><span>#땅콩아이스크림</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="애월카페" onchange="this.form.submit();"><span>#애월카페</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="핸드드립커피" onchange="this.form.submit();"><span>#핸드드립커피</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="북카페" onchange="this.form.submit();"><span>#북카페</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="스튜디오카페" onchange="this.form.submit();"><span>#스튜디오카페</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="케이크" onchange="this.form.submit();"><span>#케이크</span></label></li>
                <li class ="nav-item"><label class="box-radio-input"><input type="radio" name="search" value="애플망고" onchange="this.form.submit();"><span>#애플망고</span></label></li>
                <input type="hidden" id="paramSearch" value="${param.search}">
              </ul>
            </div>
          </div>
        </form>
        
       <div class="row">
          <!-- 맛집 리스트 -->
          
          <c:forEach var="item" items="${list}">
          <!-- cafe item 1 -->
          <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden bg-cover"
                style="background-image: url(${item.imgpath}); min-height: 230px;"><a class="tile-link"
                  href="${path}/detail/detail-olle?no=${item.no}&category=${item.category}" ></a>
              </div>
              <div class="card-body">
                <h4 class="text-black text-shadow">${item.title}</h4>
                <p class="mb-2 text-xs">
                <c:forEach var="i" begin="1" end="${item.avgRate}">
					<i class="fa fa-xs fa-star text-primary"></i>
				</c:forEach>
				<c:forEach var="i" begin="${item.avgRate}" end="4">
					<i class="fa fa-xs fa-star text-gray-300"></i>
				</c:forEach>
                </p>
                <p class="text-sm text-muted mb-3">${item.introduction}</p>
                <input type="hidden" id="lat" value="${item.latitude}">
                <input type="hidden" id="lng" value="${item.longitude}">
              </div>
            </div>
          </div>
          </c:forEach>
          
          
          
          
          <!-- 페이지 네비게이터 -->
          <nav aria-label="Page navigation example">
            <ul class="pagination2 pagination-template d-flex justify-content-center">
              <li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-food?page=${pageInfo.prevPage}');"> <i class="fa fa-angle-left"></i></a></li>
             
              <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
             	<c:if test="${status.current == pageInfo.currentPage}">
					<li class="page-item active"><a class="page-link">${status.current}</a></li>
				</c:if>
				<c:if test="${status.current != pageInfo.currentPage}">
					<li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-food?page=${status.current}');">${status.current}</a></li>
				</c:if>	
              </c:forEach>
              
              <li class="page-item"><a class="page-link" onclick="movePage('${path}/category/category-food?page=${pageInfo.nextPage}');"> <i class="fa fa-angle-right"></i></a></li>
            </ul>
          </nav>
        </div>
	
	
        <!-- 사이드 카카오  지도  -->
        <div class="col-lg-6 map-side-lg pe-lg-0">
          <div class="map-full shadow-left" id="kakaoMap"
          ></div>
        </div>

      </div>
    </div>
   </div> 
  </div>
    
    
<script type="text/javascript">
	function movePage(pageUrl){
		var si = document.getElementById("paramSi").value;
		var search = document.getElementById("paramSearch").value;
		pageUrl = pageUrl + '&si=' + si + '&search=' + search; 
		location.href = encodeURI(pageUrl);
	}
</script>
	
<!-- =========================카카오 맵========================== -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e0216acf240302af61958af813b83190"></script>

<script>
    var mapContainer = document.getElementById('kakaoMap'), // 지도를 표시할 div 
        mapOption = { 
    	        center: new kakao.maps.LatLng(${x}, ${y}), // 지도의 중심좌표
    	        level: 9 // 지도의 확대 레벨
    	    };
    	
    	var map = new kakao.maps.Map(mapContainer, mapOption);
    	
    	<c:forEach var="map" items="${list}" >
    		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; // 마커이미지의 주소입니다    
    		    imageSize = new kakao.maps.Size(24, 35), // 마커이미지의 크기입니다
    		    imageOption = {offset: new kakao.maps.Point(25, 60)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
    		
    		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
    		    markerPosition = new kakao.maps.LatLng(${map.latitude}, ${map.longitude}); // 마커가 표시될 위치입니다
    		
    		// 마커를 생성합니다
    		var marker = new kakao.maps.Marker({
    		  position: markerPosition,
    		  image: markerImage // 마커이미지 설정 
    		});
    		
    		// 마커가 지도 위에 표시되도록 설정합니다
    		marker.setMap(map);  
    		
    		// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    		var content = '<div class="customoverlay">' +
    		    '  <a href="${path}/detail/detail-olle?no=${map.no}&category=${item.category}" >' +
    		    '    <span class="text-custom-gray400">${map.title}</span>' +
    		    '  </a>' +
    		    '</div>';
    		
    		// 커스텀 오버레이가 표시될 위치입니다 
    		var position = new kakao.maps.LatLng(${map.latitude}, ${map.longitude});  
    		
    		// 커스텀 오버레이를 생성합니다
    		var customOverlay = new kakao.maps.CustomOverlay({
    		    map: map,
    		    position: position,
    		    content: content,
    		    yAnchor: 1 
    		});
    	</c:forEach>
  </script>





<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>