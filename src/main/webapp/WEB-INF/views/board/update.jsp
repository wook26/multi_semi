<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
  
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="제주소개/관광 > 제주명소 > 올레" name="title"/>
</jsp:include>


 <section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
    style="background-image: url(${path}/resources/image/img/Jeju4.jpg)">
    <div class="container overlay-content">
      <div class="d-flex justify-content-center flex-column flex-lg-row align-items-lg-end">
        <div class="text-white mb-lg-0 text-center">
          <h1 class="text-shadow verified">커뮤니티</h1>
          <p>잊지못할 제주에서의 환상적인 기억, 기록하고 나누세요</p>
        </div>
      </div>
    </div>
  </section>
  <div class="container py-2">
    <a class="text-custom-gray400" href="index.html"><i class="fa-solid fa-house"></i></a>
    <a class="text-custom-gray400" href="${path}/board/list">커뮤니티 </a>
    <p class="d-inline-block text-custom-gray400"><i class="fa-solid fa-chevron-right"></i></p>
    <p class="d-inline-block text-custom-gray400"> 글 수정</p>
  </div>

 

  <section class="z-index-n20 mb-n4 mt-4">
    <!-- 새로운  게시판-->
    <div class="container rounded shadow"> 
      <form action="${path}/board/update" method="post" enctype="multipart/form-data">
        <table class="table">
          <tr>
            <th class=" p-1 align-middle text-center" style="width: 12%;">카테고리</th>
            <th>
              <select class="form-select" aria-label="Default select example">
                <option selected>카테고리 선택</option>
                <option value="1">여행 일정/후기</option>
                <option value="2">여행 동행 모집</option>
              </select>
            </th>
          </tr>
          <tr>
            <th class="align-middle text-center">글 제목</th>
            <td>
              <input class="w-100 write-form" type="text" name="title" value="${board.title}">
            </td>

          </tr>
          <tr>
            <th class="align-middle text-center">작성자</th>
            <td>
              <input class="w-100 write-form" type="text"name="writerId" value="${board.writerId}" readonly>
            </td>
          </tr>
          <tr>
            <th class="align-middle text-center">첨부파일</th>
            <th><input class="w-25" type="file" name="reloadFile" readonly><c:if test="${!empty board.originalFileName}"><br>
                          현재 업로드 파일 :
                          <a>
                              ${board.originalFileName}
                          </a>
                      </c:if></th>
          </tr>
          <tr>
            <th class="align-middle text-center">글 내용</th>
            <td><textarea class="w-100 write-form" name="content" cols="50" rows="15">${board.content}</textarea></td>
          </tr>
        </table>
        <div class="text-center pb-5">
          <input type="submit" class="btn btn-primary" value="수정">
          <input type="reset" class="btn btn-primary ms-3" value="목록으로">
        </div>
      </form>
    </div><!--폼 둘러싸는 용도-->
  </div><!-- 가장자리 주황색으로 표시해주는 용도-->
</section>




<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>