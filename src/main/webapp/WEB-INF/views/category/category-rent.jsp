<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
  
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="교통 > 렌트" name="title"/>
</jsp:include>

  <!-- Hero Section-->
  <section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
    style="background-image:url(${path}/resources/image/img/jeju16.jpg)">
    <div class="container overlay-content">
      <div class="d-flex justify-content-center flex-column flex-lg-row align-items-lg-end">
        <div class="text-white mb-lg-0 text-center">
          <h1 class="text-shadow verified">교통</h1>
          <p>편리한 교통정보로 아름다운 제주를 둘러보세요</p>
        </div>
      </div>
    </div>
  </section>
  <div class="container py-2">
    <a class="text-custom-gray400" href="${path}"> <i class="fa-solid fa-house"></i> </a>
	<a class="text-custom-gray400" href="${path}/resources/category-rent.html"> 교통 <i style="color: #404040" class="fa-solid fa-chevron-right"></i> 렌트 </a>
  </div>
  <h3 class="pt-4 pb-2" style="text-align: center;">제주국제공항 렌터카 정보</h3>

   <div class="container py-5">
    <div class="row">

      <div class="text-block mb-5" style="max-width: 1000px;  margin:0 auto;">
        <div class="exclamBox">
          <p class="exclam red">자세한 렌터카 정보는 아래 해당 렌트카서비스 홈페이지를 통해 확인하시기 바랍니다.</p>
        </div>
        <div class="lineTop_tbArea tbScroll mt-3">
          <table class="table2 lineTop_tb2">
            <colgroup>
              <col width="25%">
              <col width="70">
              <col width="20%">
              <col width="100">
              <col width="70">
            </colgroup>
            <thead>
              <tr height="50px">
                <th scope="col">업체명</th>
                <th scope="col">위치</th>
                <th scope="col">연락처</th>
                <th scope="col">기타</th>
                <th scope="col">홈페이지</th>
              </tr>
            </thead>
            <tbody>
              <tr height="50px">
                <td>롯데렌트카</td>
                <td rowspan="5">1층 GATE#2 옆</td>
                <td>
                  <a href="tel:064-751-8000">064-751-8000</a>
                </td>
                <td class="txtL" rowspan="5">
                  <ul class="list_dotBlue">
                    <li>렌터카하우스 대기실에서 셔틀버스 이용</li>
                    <li>세부사항은 업체별 문의확인 필요</li>
                  </ul>
                </td>
                <td>
                  <a href="https://www.lotterentacar.net/hp/kor/main/index.do" target="_blank">바로가기</a>
                </td>
              </tr>
              <tr height="50px">
                <td>탐라렌터카</td>
                <td>
                  <a href="tel:1644-3302">1644-3302</a>
                </td>
                <td>
                </td>
              </tr>
              <tr height="50px">
                <td>무지개렌터카</td>
                <td>
                  <a href="tel:064-745-7502">064-745-4502</a>
                </td>
                <td></td>
              </tr>
              <tr height="50px">
                <td>제주렌트카</td>
                <td>
                  <a href="tel:064-747-3301">064-747-3301</a>
                </td>
                <td>
                  <a href="https://www.jejurentcar.co.kr/" target="_blank">바로가기</a>
                </td>
              </tr>
              <tr height="50px">
                <td>제주특별자치도자동차대여사업조합</td>
                <td>
                  <a href="tel:064-747-4301">064-747-4301</a>
                </td>
                <td></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <div class="container mb-6 text-center">
	<div>
      <h2>렌터카 셔틀버스 승강장</h2>
      <h5 class="text-primary">5번 Gate 외부 위치 안내</h5>
    </div>
   	<img src="${path}/resources/image/custom/rent.png"/>
  </div>

	 
 <!-- JavaScript files-->
 <script>
   function injectSvgSprite(path) {
   
       var ajax = new XMLHttpRequest();
       ajax.open("GET", path, true);
       ajax.send();
       ajax.onload = function(e) {
       var div = document.createElement("div");
       div.className = 'd-none';
       div.innerHTML = ajax.responseText;
       document.body.insertBefore(div, document.body.childNodes[0]);
       }
   }    
   injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'); 
 </script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>