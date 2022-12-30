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
    <title>로그인</title>
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
              <h2>환영합니다!</h2>
            </div>
             <form class="form-validate" action="${path}/member/login" method="post">
	              <div class="mb-4">
	                <label class="form-label" for="loginUserId">ID</label>
	                <input class="form-control" name="userId"  id="userId" type="text" placeholder="아이디"  required="required" autocomplete="off" required data-msg="아이디를 입력해주세요.">
	              </div>
	              <div class="mb-4">
	                <div class="row">
	                  <div class="col">
	                    <label class="form-label" for="loginPassword">PASSWORD</label>
	                  </div>
	                </div>
	                <input class="form-control" name="userPwd" id="userPwd"  placeholder="비밀번호"  required="required" type="password" required data-msg="비밀번호를 입력해주세요.">
	              </div>
	              <div class="mb-4">
	                <div class="form-check">
	                  <input class="form-check-input" id="loginRemember" type="checkbox">
	                  <label class="form-check-label text-muted" for="loginRemember"> <span class="text-sm">아이디 저장</span></label>
	                </div>
	              </div>
	              <div class="d-grid">
	              		<button class="btn btn-lg btn-primary" type="submit" value="로그인">로그인</button>
	              </div>
	              <hr class="my-3 hr-text letter-spacing-2" data-content="OR">
	              <div class="d-grid gap-2">
	                <button class="btn btn-social kakao"><img class="btn-social-icon" src="${path}/resources/image/kakao.svg">
	                	<a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=f535aeafadc3e2dee406558334647304&redirect_uri=http://localhost/mvc/user/login">카카오 아이디로 <span class="d-none d-sm-inline">로그인</span></a>
	                </button>
	                <button class="btn btn-social naver"><img class="btn-social-icon" src="${path}/resources/image/naver.svg">네이버 아이디로 <span class="d-none d-sm-inline">로그인</span></button>
	              </div>
	              <hr class="my-4">
	              <p class="text-center">
	              	<small class="text-muted text-center">아직 회원이 아니신가요? 
	              		<a class="text-primary" href="${path}/member/enroll">회원가입 </a>
	              	</small>
	              </p>
            </form>
            <a class="close-absolute me-md-5 me-xl-6 pt-5" href="${path}"> 
              <svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg></a>
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
  </body>
</html>