<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="제주소개/관광 > 제주명소 > ${visitJeju.title}" name="title" />
</jsp:include>

<!-- Hero Section-->
<c:choose>
  <c:when test="${category == '명소'}">
	<section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
		style="background-image: url('${path}/resources/image/img/Jeju7.jpg');">
		<div class="container overlay-content">
			<div
				class="d-flex justify-content-center flex-column flex-lg-row align-items-lg-end">
				<div class="text-white mb-lg-0 text-center">
					<h1 class="text-shadow verified">제주소개/관광</h1>
					<p>자연과 문화, 사람의 가치를 키우는 제주도</p>
				</div>
			</div>
		</div>
	</section>
	<div class="container py-2">
		<a class="text-custom-gray400" href="${path}"> <i class="fa-solid fa-house"></i> </a>
		<a class="text-custom-gray400" href="${path}/resources/category-olle"> 제주소개/관광 <i style="color: #404040" class="fa-solid fa-chevron-right"></i> 제주명소 </a>
		<p class="d-inline-block text-custom-gray400"><i class="fa-solid fa-chevron-right"></i></p>
		<p class="d-inline-block text-custom-gray400"> ${visitJeju.title} </p>
	</div>
  </c:when>
  
  <c:when test="${category == '축제'}">
	<section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
		style="background-image: url('${path}/resources/image/img/expo1.jpeg');">
		<div class="container overlay-content">
			<div
				class="d-flex justify-content-center flex-column flex-lg-row align-items-lg-end">
				<div class="text-white mb-lg-0 text-center">
					<h1 class="text-shadow verified">제주소개/관광</h1>
					<p>자연과 문화, 사람의 가치를 키우는 제주도</p>
				</div>
			</div>
		</div>
	</section>
	<div class="container py-2">
		<a class="text-custom-gray400" href="${path}"> <i class="fa-solid fa-house"></i> </a>
		<a class="text-custom-gray400" href="${path}/resources/category-festival"> 제주소개/관광 <i style="color: #404040" class="fa-solid fa-chevron-right"></i> 축제/행사 </a>
		<p class="d-inline-block text-custom-gray400"><i class="fa-solid fa-chevron-right"></i></p>
		<p class="d-inline-block text-custom-gray400"> ${visitJeju.title} </p>
	</div>
  </c:when>
  
  <c:when test="${category == '박물관'}">
	<section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
		style="background-image: url('${path}/resources/image/img/jeju13.jpg');">
		<div class="container overlay-content">
			<div
				class="d-flex justify-content-center flex-column flex-lg-row align-items-lg-end">
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
		<p class="d-inline-block text-custom-gray400"><i class="fa-solid fa-chevron-right"></i></p>
		<p class="d-inline-block text-custom-gray400"> ${visitJeju.title} </p>
	</div>
  </c:when>
  
  <c:when test="${category == '숙소'}">
	<section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
		style="background-image: url('${path}/resources/image/img/Jeju6.png');">
		<div class="container overlay-content">
			<div
				class="d-flex justify-content-center flex-column flex-lg-row align-items-lg-end">
				<div class="text-white mb-lg-0 text-center">
					<h1 class="text-shadow verified">숙소</h1>
					<p>감성충만 캠핑장과 가성비 민박까지</p>
				</div>
			</div>
		</div>
	</section>
	<div class="container py-2">
		<a class="text-custom-gray400" href="${path}"> <i class="fa-solid fa-house"></i> </a>
		<a class="text-custom-gray400" href="${path}/resources/category-room"> 숙소 </a>
		<p class="d-inline-block text-custom-gray400"><i class="fa-solid fa-chevron-right"></i></p>
		<p class="d-inline-block text-custom-gray400"> ${visitJeju.title} </p>
	</div>
  </c:when>
  
  <c:when test="${category == '맛집'}">
	<section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
		style="background-image: url('${path}/resources/image/img/Jeju8.jpg');">
		<div class="container overlay-content">
			<div
				class="d-flex justify-content-center flex-column flex-lg-row align-items-lg-end">
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
		<p class="d-inline-block text-custom-gray400"><i class="fa-solid fa-chevron-right"></i></p>
		<p class="d-inline-block text-custom-gray400"> ${visitJeju.title} </p>
	</div>
  </c:when>
</c:choose>

<section class="py-2">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<!-- About Listing-->
				<div class="text-block">
					<p class="text-primary text-center">${visitJeju.code}</p>
					<h3 class="mb-5 text-center">${visitJeju.title}</h3>
					<p class="text-muted">${visitJeju.introduction}</p>
				</div>
				<div class="text-block">
					<!-- Gallery-->
					<h3 class="mb-4">사진 갤러리</h3>
					<div class="row gallery ms-n1 me-n1">
						<div class="mt-4 text-center">
							<img src="${visitJeju.imgpath}"
								style="width: 600px; height: 400px;" alt="">
						</div>
					</div>
					<!-- 태그 -->
					<div class="text-block">
						<h3 class="mb-4">연관태그</h3>
						<ul class="amenities-list list-inline">
						<c:forEach var="item" items="${tags}">
							<li class="list-inline-item mb-3">
								<div class="d-flex align-items-center">
									<div class="icon-circle bg-secondary me-2">
										<i class="fa fa-hashtag"></i>
									</div>
									<span>${item}</span>
								</div>
							</li>
						</c:forEach>
						</ul>
					</div>
					<c:choose>
						<c:when test="${fn:contains(visitJeju.title, '제주올레')}">
							<div class="text-block">
								<!-- Listing Location-->
								<h3 class="mb-4">코스안내</h3>
								<div class="justify-content-center">
									<div class="px-1 mb-4">
										<img class="ollemap m-auto"
											src="${path}/resources/image/ollemap/${visitJeju.title}.png">
									</div>
								</div>
							</div>
							<!-- Olle Info -->
							<div
								class="text-block p-0 d-flex flex-wrap justify-content-center ">
								<div class="card border-0 shadow my-5 col-8">
									<div class="card-header bg-gray-100 py-4 border-0">
										<div
											class="d-flex align-items-center justify-content-between border-0">
											<div>
												<p class="subtitle text-sm text-primary">떠나기 전 확인!</p>
												<h4 class="mb-0">제주 올레길 세부정보</h4>
											</div>
										</div>
									</div>
									<div class="card-body">
										<table class="table text-sm mb-0">
											<tr>
												<th class="ps-0">전화번호</th>
												<td class="pe-0 text-start">${visitJeju.phoneno}</td>
											</tr>
											<tr>
												<th class="ps-0">지번 주소</th>
												<td class="pe-0 text-start">${visitJeju.address}
													${visitJeju.postcode}</td>
											</tr>
											<tr>
												<th class="ps-0">도로명 주소</th>
												<td class="pe-0 text-start">${visitJeju.roadaddress}
													${visitJeju.postcode}</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="text-block p-0 d-flex flex-wrap justify-content-center ">
								<div class="card border-0 shadow my-5 col-8">
									<div class="card-header bg-gray-100 py-4 border-0">
										<div
											class="d-flex align-items-center justify-content-between border-0">
											<div>
												<p class="subtitle text-sm text-primary">떠나기 전 확인!</p>
												<h4 class="mb-0">관광지 세부정보</h4>
											</div>
										</div>
									</div>
									<div class="card-body">
										<table class="table text-sm mb-0">
											<tr>
												<th class="ps-0">전화번호</th>
												<td class="pe-0 text-start">${visitJeju.phoneno}</td>
											</tr>
											<tr>
												<th class="ps-0">지번 주소</th>
												<td class="pe-0 text-start">${visitJeju.address}
													${visitJeju.postcode}</td>
											</tr>
											<tr>
												<th class="ps-0 border-0">도로명 주소</th>
												<td class="pe-0 text-start border-0">${visitJeju.roadaddress}
													${visitJeju.postcode}</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<div class="text-block">
								<h3 class="mb-4">찾아가는 길</h3>
								<div class="detail-map-infor mb-4">
									<div class="mb-3 "
										style="width: 600px; height: 400px; margin: 0 auto;">
										<div class="h-100" id="kakaoMap"></div>
									</div>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>

				<div class="text-block">
					<p class="subtitle text-sm text-primary">리뷰</p>
					<h5 class="mb-4">후기 리스트</h5>
					<c:if test="${!empty reviewList}">
						<c:forEach var="review" items="${reviewList}">
							<div class="d-flex d-block d-sm-flex review justify-content-between">
							  <div class="d-flex">
								<div class="text-md-center flex-shrink-0 me-4 me-xl-5 align-content-center">
									<img class="d-block avatar avatar-xl p-2 mb-2 ms-2"
										src="${path}/resources/image/icon/user.png" alt="user">
									<span class="text-uppercase text-muted text-sm"> <fmt:formatDate
											type="date" dateStyle="short" timeStyle="short"
											value="${review.createDate}" /> <fmt:formatDate type="time"
											dateStyle="short" timeStyle="short"
											value="${review.createDate}" />
									</span>
								</div>
								<div>
									<c:set var="name" value="${review.userName}" />
									<c:set var="totalLength" value="${fn:length(name) }" />
									<c:set var="first" value="${fn:substring(name, 0, 1) }" />
									<c:set var="last" value="${fn:substring(name, 2, totalLength) }" />
									<h6 class="mt-2 mb-1"><c:out value="${first}*${last}"/></h6>
									<div class="mb-2">
										<c:forEach var="i" begin="1" end="${review.rate}">
											<i class="fa fa-xs fa-star text-primary"></i>
										</c:forEach>
										<c:forEach var="i" begin="${review.rate}" end="4">
											<i class="fa fa-xs fa-star text-gray-300"></i>
										</c:forEach>
									</div>
									<p class="text-muted text-sm">${review.content}</p>
								</div>
						      </div>
							<c:if test="${ !empty loginMember && (loginMember.no == review.uno 	|| loginMember.role == 'ROLE_ADMIN') }">
								<button class="btn btn-primary d-flex my-auto" style="height: 2.5rem;" onclick="deleteReview('${review.no}','${visitJeju.no}');" >삭제</button>
							</c:if>
							</div>
						</c:forEach>
					</c:if>
					<c:if test="${empty reviewList}">
						<tr>
							<td colspan="3" style="text-align: center;">등록된 리뷰가 없습니다.</td>
						</tr>
					</c:if>
					<div class="py-5">
						<button class="btn btn-outline-primary" type="button"
							data-bs-toggle="collapse" data-bs-target="#leaveReview"
							aria-expanded="false" aria-controls="leaveReview">리뷰
							작성하기</button>
						<div class="collapse mt-4" id="leaveReview">
							<h5 class="mb-4">리뷰 작성</h5>
							<form class="form" id="contact-form" method="post" action="${path}/category/detail/review">
								<div class="row">
									<div class="col-sm-6">
										<div class="mb-4">
											<input type="hidden" name="vno" value="${visitJeju.no}"/>
											<c:set var="name" value="${loginMember.name}" />
											<c:set var="totalLength" value="${fn:length(name) }" />
											<c:set var="first" value="${fn:substring(name, 0, 1) }" />
											<c:set var="last" value="${fn:substring(name, 2, totalLength) }" />
											<label class="form-label" for="name">작성자 *</label> <input
												class="form-control" type="text" name="name" id="name"
												placeholder="<c:if test="${!empty  name}"><c:out value="${first}*${last}"/></c:if>" readonly>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="mb-4">
											<label class="form-label" for="rating">별점 *</label> <select
												class="form-select focus-shadow-0" name="rate" id="rate">
												<option value="5">&#9733;&#9733;&#9733;&#9733;&#9733;
													(5/5)</option>
												<option value="4">&#9733;&#9733;&#9733;&#9733;&#9734;
													(4/5)</option>
												<option value="3">&#9733;&#9733;&#9733;&#9734;&#9734;
													(3/5)</option>
												<option value="2">&#9733;&#9733;&#9734;&#9734;&#9734;
													(2/5)</option>
												<option value="1">&#9733;&#9734;&#9734;&#9734;&#9734;
													(1/5)</option>
											</select>
										</div>
									</div>
								</div>
								<div class="mb-4">
									<label class="form-label" for="review">내용 *</label>
									<textarea class="form-control" rows="4" name="content"
										id="reviewContent"
										placeholder="자세하고 꼼꼼한 리뷰를 작성해주시면 다른 여행자에게 큰 도움이 됩니다."
										required="required"></textarea>
								</div>
								<input type="hidden" name="category" value="${category}"/>
								<button class="btn btn-primary" type="submit">리뷰등록</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

<script type="text/javascript">
	function deleteReview(reviewNo, vno){
		var url = "${path}/detail/reviewDel?reviewNo=";
		var requestURL = url + reviewNo +"&vno=" + vno;
		location.replace(requestURL);
	}
</script>

<!-- =========================카카오 맵========================== -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e0216acf240302af61958af813b83190"></script>

<script>
    var mapContainer = document.getElementById('kakaoMap'), // 지도를 표시할 div  
      mapOption = {
        center: new kakao.maps.LatLng(${visitJeju.latitude}, ${visitJeju.longitude}), // 지도의 중심좌표
        level: 2 // 지도의 확대 레벨
      };

    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    // 마커를 표시할 위치와 title 객체 배열입니다 
    var positions = [
      {
        title: '<div class="text-primary">${visitJeju.title}</div>',
        latlng: new kakao.maps.LatLng(${visitJeju.latitude}, ${visitJeju.longitude})
      }
    ];

    // 마커 이미지의 이미지 주소입니다
    var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

    for (var i = 0; i < positions.length; i++) {

      // 마커 이미지의 이미지 크기 입니다
      var imageSize = new kakao.maps.Size(24, 35);

      // 마커 이미지를 생성합니다    
      var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

      // 마커를 생성합니다
      var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title: positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image: markerImage // 마커 이미지 
      });
      
      var infowindow = new kakao.maps.InfoWindow({
  	    content: '<div style="width:150px;text-align:center;line-height:1rem;">${visitJeju.title}</div>' // 인포윈도우에 표시할 내용
  	  });
  	
  	// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
  	// 이벤트 리스너로는 클로저를 만들어 등록합니다 
  	// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
  	kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
  	kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
  	}
  	
  	//인포윈도우를 표시하는 클로저를 만드는 함수입니다 
  	function makeOverListener(map, marker, infowindow) {
  		return function() {
  	    	infowindow.open(map, marker);
  		};
  	}
  	
  	//인포윈도우를 닫는 클로저를 만드는 함수입니다 
  	function makeOutListener(infowindow) {
  		return function() {
  	    	infowindow.close();
  		};
  	}  
  </script>