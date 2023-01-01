<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
  
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="제주소개/관광 > 제주명소 > 올레" name="title"/>
</jsp:include>



<section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
    style="background-image:url(${path}/resources/image/img/Jeju4.jpg)">
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
    <a class="text-custom-gray400" href="${path}/board/list">커뮤니티 <i class="fa-solid fa-chevron-right"></i>
      <c:if test="${type == 'type1' }">
	      여행후기/일정공유
      </c:if>
      <c:if test="${type == 'type2' }">
	      동행모집
      </c:if>
      </a>
  </div>
  <div class="container position-relative py-3">
    <nav class="nav nav-pills-menu justify-content-center row text-center mb-3">
      <a class="nav-link py-3 mb-2 col-2 ${type == 'type1' ? 'active' : ''}" href="${path}/board/list?type=type1">여행후기/일정공유 </a>
      <a class="nav-link py-3 mb-2 col-2 ${type == 'type2' ? 'active' : ''}" href="${path}/board/list?type=type2">동행모집 </a>
    </nav>
  </div>

  </div>
  <div class="container">
    <div class="row">
      <h3 class="text-center border-bottom border-primary pb-4"></h3>
      <table class="table text-center">
        
          <tr class="row-cols-auto">
            <th class="col-1">번호</th>
            <th class="col-6">제목</th>
            <th class="col-2">작성자</th>
            <th class="col-2">작성일</th>
            <th class="col-1">조회</th>
          </tr>
            <c:if test="${empty list}">
				<tr>
					<td colspan="6">조회된 글이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${not empty list}">
			<c:forEach var="board" items="${list}">
	        
	          <tr class="text-custom-gray300">
	            <td class="col-1"><c:out value="${board.no}"/></td>
	            <td class="col-6 text-start"><a href="${path}/board/view?no=${board.no}"><c:out value="${board.title}"/></a></td>
	            <td class="col-2"><c:out value="${board.writerId}"/></td>
	            <td class="col-2"><fmt:formatDate type="date" value="${board.createDate}"/></td>
	            <td class="col-1"><c:out value="${board.readCount}"/></td>
	          </tr>
	       </c:forEach>
			</c:if>
		</table>
      <div class="text-end">
      <c:if test="${loginMember != null}">
        <a class="btn-write d-inline-block" href="${path}/board/write" >글쓰기</a>
        </c:if>
      </div>
    </div>
  </div>

  
   <nav aria-label="Page navigation pt-3">
      <ul class="pagination pagination-template d-flex justify-content-center">
        <li class="page-item"><a class="page-link" onclick="movePage('${path}/board/list?page=${pageInfo.prevPage}');"> <i class="fa fa-angle-left"></i></a></li>
        
        <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
			<c:if test="${status.current == pageInfo.currentPage}">
				<li class="page-item active"><a class="page-link">${status.current}</a></li>
			</c:if>
			<c:if test="${status.current != pageInfo.currentPage}">
				<li class="page-item"><a class="page-link" onclick="movePage('${path}/board/list?page=${status.current}');">${status.current}</a></li>
			</c:if>
		</c:forEach>
        <li class="page-item"><a class="page-link" onclick="movePage('${path}/board/list?page=${pageInfo.nextPage}');"> <i class="fa fa-angle-right"></i></a></li>
      </ul>
    </nav>

 


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

<script type="text/javascript">
	function movePage(pageUrl){
		type = ${param.type};
		pageUrl += '&type' + type; 
		location.href = encodeURI(pageUrl);	
	}
</script>
