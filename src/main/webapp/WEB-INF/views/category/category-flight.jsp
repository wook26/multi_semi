<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
    
<jsp:include page="/WEB-INF/views/common/header.jsp">
		<jsp:param value="교통 > 항공" name="title"/>
</jsp:include>
  
<!-- Hero Section-->
  <section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
    style="background-image: url('${path}/resources/image/img/jeju16.jpg');">
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
    <a class="text-custom-gray400" href="index.html"><i class="fa-solid fa-house"></i></a>
    <a class="text-custom-gray400" href="category-flight.html">교통 <i class="fa-solid fa-chevron-right"></i> 항공</a>
  </div>
  <h3 class="pt-4 pb-2" style="text-align: center;">항공 운항 정보</h3>

  <div class="container py-4">
    <div class="search-bar rounded p-3 p-lg-4 position-relative z-index-20">
      <form action="#">
        <div class="row">
          <div class="col-2 d-flex align-items-center form-group no-divider">
            <select class="selectpicker" title="출발/도착" data-style="btn-form-control">
              <option value="type_0">출발</option>
              <option value="type_1">도착</option>
            </select>
          </div>
          <div class="col-2 d-flex align-items-center form-group no-divider">
            <div class="datepicker-container datepicker-container-left">
              <input class="form-control border-0 shadow-0" type="text" name="bookingDate" id="bookingDate"
                placeholder="운항일" required="required">
            </div>
          </div>
          <div class="col-2 d-flex align-items-center form-group no-divider">
            <select class="selectpicker" title="지역" data-style="btn-form-control">
              <option value="type_0">서울/김포</option>
              <option value="type_1">부산/김해</option>
              <option value="type_2">대구</option>
              <option value="type_3">울산</option>
              <option value="type_4">청주</option>
            </select>
          </div>
          <div class="col-1 d-flex align-items-center form-group no-divider">
            <select class="selectpicker" title="필터" data-style="btn-form-control">
              <option value="type_0">전체</option>
              <option value="type_1">항공사</option>
              <option value="type_2">편명</option>
            </select>
          </div>
          <div class="col-lg-3 d-flex align-items-center form-group no-divider">
            <input class="form-control border-0 shadow-0" type="search" name="search" placeholder="검색어를 입력하세요.">
          </div>
          <div class="col-lg-2 d-grid form-group mb-0">
            <button class="btn btn-primary h-100" type="submit">검색 </button>
          </div>
        </div>
      </form>
    </div>
  </div>

  <!--항공스케줄 동적 테이블-->
  <div class="flight pt-4">
    <table id="flight-table" class="table table-bordered text-sm mb-0" style="text-align: center;">

      <thead class="table-light">
        <tr>
          <th scope="col">날짜</th>
          <th scope="col">시간</th>
          <th scope="col">목적지</th>
          <th scope="col">항공사</th>
          <th scope="col">편명</th>
        </tr>
      </thead>
      <tbody id="flight-tbody">
        <tr>
          <th class="ps">2022.12.22</th>
          <th class="ps">07:45</th>
          <th class="ps">서울/김포</th>
          <th class="ps">대한항공</th>
          <th class="ps">KE707</th>
        </tr>
        <tr>
          <th class="ps">2022.12.22</th>
          <th class="ps">07:45</th>
          <th class="ps">서울/김포</th>
          <th class="ps">대한항공</th>
          <th class="ps">KE707</th>
        </tr>
        <tr>
          <th class="ps">2022.12.22</th>
          <th class="ps">07:45</th>
          <th class="ps">서울/김포</th>
          <th class="ps">대한항공</th>
          <th class="ps">KE707</th>
        </tr>
        <tr>
          <th class="ps">2022.12.22</th>
          <th class="ps">07:45</th>
          <th class="ps">서울/김포</th>
          <th class="ps">대한항공</th>
          <th class="ps">KE707</th>
        </tr>
        <tr>
          <th class="ps">2022.12.22</th>
          <th class="ps">07:45</th>
          <th class="ps">서울/김포</th>
          <th class="ps">대한항공</th>
          <th class="ps">KE707</th>
        </tr>
        <tr>
          <th class="ps">2022.12.22</th>
          <th class="ps">07:45</th>
          <th class="ps">서울/김포</th>
          <th class="ps">대한항공</th>
          <th class="ps">KE707</th>
        </tr>
        <tr>
          <th class="ps">2022.12.22</th>
          <th class="ps">07:45</th>
          <th class="ps">서울/김포</th>
          <th class="ps">대한항공</th>
          <th class="ps">KE707</th>
        </tr>
        <tr>
          <th class="ps">2022.12.22</th>
          <th class="ps">07:45</th>
          <th class="ps">서울/김포</th>
          <th class="ps">대한항공</th>
          <th class="ps">KE707</th>
        </tr>
      </tbody>
    </table>
  </div>

  </div>
  </div>
  <br><br><br>

  <!-- Pagination (하단페이지)-->
  <nav aria-label="Page navigation example">
    <ul class="pagination pagination-template d-flex justify-content-center">
      <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
      <li class="page-item active"><a class="page-link" href="#">1</a></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
    </ul>
  </nav>
  </div>
  </section>

  <!-- JavaScript files-->
  <script>
    // ------------------------------------------------------- //
    //   Inject SVG Sprite - 
    //   see more here 
    //   https://css-tricks.com/ajaxing-svg-sprite/
    // ------------------------------------------------------ //
    function injectSvgSprite(path) {

      var ajax = new XMLHttpRequest();
      ajax.open("GET", path, true);
      ajax.send();
      ajax.onload = function (e) {
        var div = document.createElement("div");
        div.className = 'd-none';
        div.innerHTML = ajax.responseText;
        document.body.insertBefore(div, document.body.childNodes[0]);
      }
    }
    // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
    // use your own URL in production, please :)
    // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
    //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
    injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');
  
    <!-- Daterange picker-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"> </script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js"> </script>
    <script src="${path}/resources/js/datepicker-category.js"> </script>
    <!-- Price Slider-->
    <script src="${path}/resources/vendor/nouislider/nouislider.min.js"></script>
    <script>
      var snapSlider = document.getElementById('slider-snap');

      noUiSlider.create(snapSlider, {
        start: [40, 110],
        snap: false,
        connect: true,
        step: 1,
        range: {
          'min': 40,
          'max': 110
        }
      });
      var snapValues = [
        document.getElementById('slider-snap-value-from'),
        document.getElementById('slider-snap-value-to')
      ];
      var inputValues = [
        document.getElementById('slider-snap-input-from'),
        document.getElementById('slider-snap-input-to')
      ];
      snapSlider.noUiSlider.on('update', function (values, handle) {
        snapValues[handle].innerHTML = values[handle];
        inputValues[handle].value = values[handle];
      })
    </script>


    <script>
      // 카테고리 클릭시 전체 버튼 해제 
      $('.nav-link').click(function () {
        if ($(this).hasClass('active')) {
          $('.nav-link').removeClass('active');
        } else {
          $('.nav-link').removeClass('active');
          $(this).addClass('active');
        }

      });
    </script>

    <script>
      // 달력에서 현재 날짜 
      document.getElementById('currentDate').value = new Date().toISOString().substring(0, 10);;
    </script>


    <script>
      // 항공 스케줄 호출시 동적 테이블 생성
      function tableCreate() {

        $.ajax({

          url: "/jquery/tableCreate.do",
          success: function (data) {
            var html = '';

            for (key in data) {
              html += '<tr>';
              html += '<td>' + data[key].date + '</td>';
              html += '<td>' + data[key].time + '</td>';
              html += '<td>' + data[key].arrive + '</td>';
              html += '<td>' + data[key].airline + '</td>';
              html += '<td>' + data[key].flightname + '</td>';
              html += '</tr>';
            }

            $("#flight-Tbody").empty();
            $("flight-Tbody").append(html);

          }
        })
      }
    </script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>