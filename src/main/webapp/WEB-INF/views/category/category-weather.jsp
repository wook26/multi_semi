<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
  
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="제주소개/관광 > 기상정보" name="title"/>
</jsp:include>

  <!-- Hero Section-->
   <section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
    style="background-image:url(${path}/resources/image/img/jeju9.jpg)">
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
    <a class="text-custom-gray400" href="${path}/category/category-weather">제주소개/관광 <i class="fa-solid fa-chevron-right"></i> 기상정보</a>
  </div>
  <h3 class="pt-4 pb-2" style="text-align: center;">기상정보</h3>


  <section>

    <div class="container position-relative py-3">
      <nav class="nav nav-pills-menu justify-content-center row text-center py-3">
        <nav class="nav nav-pills-menu justify-content-center row text-center py-3">
        <a class="nav-link py-3 mb-2 col-2  justify-content-center active">제주시 날씨</a>
        <br>
        </nav>
   
          <div class="tomorrow"
             data-location-id="065406"
             data-language="KO"
             data-unit-system="METRIC"
             data-skin="light"
             data-widget-type="upcoming"
             style="padding-bottom:22px;position:relative;"
          >
            <a
              href="https://www.tomorrow.io/weather-api/"
              rel="nofollow noopener noreferrer"
              target="_blank"
              style="position: absolute; bottom: 0; transform: translateX(-50%); left: 50%;"
            >
              <img
                alt="Powered by the Tomorrow.io Weather API"
                src="https://weather-website-client.tomorrow.io/img/powered-by.svg"
                width="250"
                height="18"
              />
            </a>
          </div>
         
    
            <div class="tomorrow"
               data-location-id="065407"
               data-language="KO"
               data-unit-system="METRIC"
               data-skin="light"
               data-widget-type="aqiPollen"
               style="padding-bottom:22px;position:relative;"
            >
              <a
                href="https://www.tomorrow.io/weather-api/"
                rel="nofollow noopener noreferrer"
                target="_blank"
                style="position: absolute; bottom: 0; transform: translateX(-50%); left: 50%;"
              >
                <img
                  alt="Powered by the Tomorrow.io Weather API"
                  src="https://weather-website-client.tomorrow.io/img/powered-by.svg"
                  width="250"
                  height="18"
                />
              </a>
            </div>

      </nav>
      <br><br>


      <nav class="nav nav-pills-menu justify-content-center row text-center py-3">
        <nav class="nav nav-pills-menu justify-content-center row text-center py-3">
          <a class="nav-link py-3 mb-2 col-2  justify-content-center active">서귀포시 날씨</a>
          <br>
          </nav>

    
            <div class="tomorrow"
               data-location-id="065490"
               data-language="KO"
               data-unit-system="METRIC"
               data-skin="light"
               data-widget-type="upcoming"
               style="padding-bottom:22px;position:relative;"
            >
              <a
                href="https://www.tomorrow.io/weather-api/"
                rel="nofollow noopener noreferrer"
                target="_blank"
                style="position: absolute; bottom: 0; transform: translateX(-50%); left: 50%;"
              >
                <img
                  alt="Powered by the Tomorrow.io Weather API"
                  src="https://weather-website-client.tomorrow.io/img/powered-by.svg"
                  width="250"
                  height="18"
                />
              </a>
            </div>

      
              <div class="tomorrow"
                 data-location-id="065490"
                 data-language="KO"
                 data-unit-system="METRIC"
                 data-skin="light"
                 data-widget-type="aqiPollen"
                 style="padding-bottom:22px;position:relative;"
              >
                <a
                  href="https://www.tomorrow.io/weather-api/"
                  rel="nofollow noopener noreferrer"
                  target="_blank"
                  style="position: absolute; bottom: 0; transform: translateX(-50%); left: 50%;"
                >
                  <img
                    alt="Powered by the Tomorrow.io Weather API"
                    src="https://weather-website-client.tomorrow.io/img/powered-by.svg"
                    width="0"
                    height="0"
                  />
                </a>
              </div>
      </nav>
    </div>
</section>
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
    

    <!-- jQuery-->
    <script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${path}/resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="${path}/resources/js/theme.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    
    
  <script>
          (function(d, s, id) {
              if (d.getElementById(id)) {
                  if (window.__TOMORROW__) {
                      window.__TOMORROW__.renderWidget();
                  }
                  return;
              }
              const fjs = d.getElementsByTagName(s)[0];
              const js = d.createElement(s);
              js.id = id;
              js.src = "https://www.tomorrow.io/v1/widget/sdk/sdk.bundle.min.js";
  
              fjs.parentNode.insertBefore(js, fjs);
          })(document, 'script', 'tomorrow-sdk');
          </script>
  
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>