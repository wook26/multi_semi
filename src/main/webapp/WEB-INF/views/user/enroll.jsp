<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>회원가입</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link rel="stylesheet" href="${path}/resources/vendor/nouislider/nouislider.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <link rel="stylesheet" href="${path}/resources/vendor/magnific-popup/magnific-popup.css">
    <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
    <link rel="stylesheet" href="${path}/resources/css/custom.css">
    <link rel="shortcut icon" href="${path}/resources/image/logo_favicon.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  </head>
  <body>
    <div class="container-fluid px-3">
      <div class="row min-vh-100">
        <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
          <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
            <div class="mb-5"><img class="img-fluid mb-3" src="${path}/resources/image/logo_notxt.svg" alt="..." style="max-width: 4rem;">
              <h2>회원가입</h2>
              <p class="text-muted">세계자연유산, 세계 7대 자연경관 제주도<br>제주이즘과 함께 백배 즐기기!</p>
            </div>
            <form class="form-validate" action="${path}/user/enroll" method="post">
              <div class="mb-4">
                <label class="form-label" for="loginUserName"> Name</label>
                <input class="form-control" id="loginUserName" name="name" type="text" placeholder="이름" autocomplete="off" required data-msg="이름을 입력해주세요.">
              </div>
              <div class="mb-3">
                <label class="form-label" for="loginUserId"> ID</label>
                <input class="form-control" id="loginUserId" name="id" type="text" placeholder="아이디" autocomplete="off" required data-msg="아이디를 입력해주세요.">
              </div>
              <div class="d-grid gap-2 mb-4">
                <button class="btn btn-lg btn-secondary" id="IdCheck">중복확인</button>
              </div>
              <div class="mb-4">
                <label class="form-label" for="loginPassword"> PASSWORD</label>
                <input class="form-control" name="password" id="loginPassword" placeholder="비밀번호" type="password" required data-msg="비밀번호를 입력해주세요.">
              </div>
              <div class="mb-4">
                <label class="form-label" for="loginPassword2"> CONFIRM YOUR PASSWORD</label>
                <input class="form-control" name="password" id="loginPassword2" placeholder="비밀번호 확인" type="password" required data-msg="비밀번호를 확인해주세요.">
              </div>
              <div class="d-grid gap-2">
                <button class="btn btn-lg btn-primary" type="submit">회원가입</button>
              </div>
              <hr class="my-3 hr-text letter-spacing-2" data-content="OR">
              <div class="d-grid gap-2">
                <button class="btn btn-social kakao"><img class="btn-social-icon" src="${path}/resources/image/kakao.svg">카카오 아이디로 <span class="d-none d-sm-inline">시작하기</span></button>
                <button class="btn btn-social naver"><img class="btn-social-icon" src="${path}/resources/image/naver.svg">네이버 아이디로 <span class="d-none d-sm-inline">시작하기</span></button>
              </div>
              <hr class="my-4">
              <p class="text-sm text-muted">회원가입을 선택하시면 제브리띵의 <a class="text-primary" href="#">서비스 이용약관</a> 과 <a class="text-primary" href="#">개인정보취급방침</a>에 동의하게 됩니다.</p>
            </form>
            
            <a class="close-absolute me-md-5 me-xl-6 pt-5" href="${path}"> 
              <svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg>
            </a>
          </div>
        </div>
        <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
          <!-- Image-->
          <div class="bg-cover h-100 me-n3" style="background-image: url(${path}/resources/image/img/signup_signin.jpg);"></div>
        </div>
      </div>
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


    
<!--     <script>
    function test() {
        var p1 = document.getElementById('loginPassword').value;
        var p2 = document.getElementById('loginPassword2').value;
        if( p1 != p2 ) {
          alert("비밀번호가 일치 하지 않습니다");
          return false;
        } else{
          alert("비밀번호가 일치합니다");
          return true;
        }

      }
    
    </script> -->
    

    
    
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




