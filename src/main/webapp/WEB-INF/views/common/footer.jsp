<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
    
<!-- Footer-->
  <footer class="position-relative z-index-10 d-print-none">
    <!-- Main block - menus, subscribe form-->
    <div class="pt-2 fw-light bg-gray-800">
      <div class="container text-center">
        <a class="text-sm mb-md-0 text-gray-300" href="#">개인정보처리방침</a>
        <a class="text-sm mb-md-0 text-gray-300 ms-sm-6" href="#">이메일무단수집거부</a>
        <a class="text-sm mb-md-0 text-gray-300 ms-sm-6" href="#">사이트맵</a>
      </div>
    </div>
    <!-- Copyright section of the footer-->
    <div class="pb-4 fw-light bg-gray-800 text-gray-300">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6 text-center text-md-start">
            <p class="text-sm mb-md-0">&copy; 2021, 제브리띵. All rights reserved.</p>
          </div>
          <div class="col-md-6">
            <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
              <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/visa.svg" alt="..."></li>
              <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/mastercard.svg" alt="..."></li>
              <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/paypal.svg" alt="..."></li>
              <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/western-union.svg" alt="..."></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </footer>
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
</body>

</html>