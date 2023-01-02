<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="커뮤니티" name="title"/>
</jsp:include>

<section class="pt-7 pb-7 d-flex align-items-end dark-overlay bg-cover"
    style="background-image: url(${path}/resources/image/img/Jeju4.jpg);">
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
    <a class="text-custom-gray400" href="${path}/board/list">커뮤니티</a>
    <p class="d-inline-block text-custom-gray400"> <i class="fa-solid fa-chevron-right"></i> 게시글 상세보기</p>
  </div>

  <section class="z-index-n20 mb-n4 mt-4">
    <!-- 새로운  게시판-->
    <div class="container rounded shadow">
      <div class="container ">
        <div class="row">
          <div class="w-100 p-3">
            <div style="margin-bottom: 5px;">
             <c:choose>
	             <c:when test="${board.type == 'type1'}">
	              <span class="text-primary">여행후기/일정공유</span>
	             </c:when>
	             <c:when test="${board.type == 'type2'}">
	              <span class="text-primary">동행모집</span>
	             </c:when>
             </c:choose>
            </div>
            <table class="table table-borderless text-gray-700">
              <tr>
                <th class="col-sm-3 p-1 align-middle font-size150"><c:out value="${board.title}"/></th>
                <th class="col-4" rowspan="3">
                </th>
              </tr>
              <tr>
                <td class="p-1 text-custom-gray300"><c:out value="${board.writerId}"/></td>
                <td class="text-end p-1 text-custom-gray300"><fmt:formatDate type="both" value="${board.createDate}"/></td>
                <td class="text-end p-1 text-custom-gray300">조회수</td>
                <td class="text-start p-1 text-custom-gray300"><c:out value="${board.readCount}"/></td>
              </tr>
            </table>
            <hr>
          </div>


          <div>
            <div class="m-auto">
             <div class="mt-4 text-center">
                <p><img class="img-fluid " style="width: 50%;height:50% border="0;"
                    src="${path}/resources/upload/board/${board.renamedFileName}" alt=""></p>
                    <br>
              </div>
              <div class="text-content">
                <textarea class="form-control" name="board" id="" cols="150" rows="20" readonly
                  style="border-color: white;"> <c:out value="${board.content}"/></textarea>
              </div>
            </div>
            <div style="margin-left: 85%;">
              <c:if test="${not empty loginMember && (loginMember.id == board.writerId 
									|| loginMember.role == 'ROLE_ADMIN')}">
              <button class="btn btn-primary" type="button" id="btnUpdate">수정</button>
              <button class="btn btn-primary" type="button" id="btnDelete">삭제</button>
              </c:if>
            </div>
            <hr>
          </div>
        </div>
      </div>

      <!-- 새로운  게시판 끝-->

      <!-- comments-->
      <div class="m-lg-3">
        <h5 class="mb-4">댓글 </h5>
        <!-- comment-->
        <div class="mb-4">
          <c:if test="${!empty replyList}">
          <div>
			<c:forEach var="reply" items="${replyList}">
            <h6>${reply.writerId}</h6>
            <p class="text-uppercase text-sm text-custom-gray300"><i class="far fa-clock"></i><fmt:formatDate type="both" value="${reply.createDate}"/></p>
            <p class="text-custom-gray300"><c:out value="${reply.content}"/></p>
			<c:if test="${ !empty loginMember && (loginMember.id == reply.writerId 	|| loginMember.role == 'ROLE_ADMIN') }">
						<button class="btn btn-primary btn-delete" onclick="deleteReply('${reply.no}','${board.no}');" >삭제</button>
						</c:if>
						<hr>
          	</c:forEach>
          </div>
		</c:if>
		<c:if test="${empty replyList}">
			<tr>
				<td colspan="3" style="text-align: center;">등록된 댓글이 없습니다.</td>
			</tr>
		</c:if>
        </div>
        <!-- /comment-->
       
        <!-- /comments-->

        <div class="py-5">
        <c:if test="${not empty loginMember}">
          <button class="btn btn-outline-primary" type="button" data-bs-toggle="collapse" data-bs-target="#leaveReview"
            aria-expanded="false" aria-controls="leaveReview">댓글 작성하기</button>
          <div class="collapse mt-4" id="leaveReview">
            <h5 class="mb-4">댓글 작성</h5>
            <form class="form" id="contact-form" action="${path}/board/reply" method="post">
              <div class="row">
                <div class="col-sm-6">
                  <div class="mb-4">
                    <input type="hidden" name="boardNo" value="${board.no}" />
    				<input type="hidden" name="writerId" value="${loginMember.id}" />
                  </div>
                </div>
              </div>
              <div class="mb-4">
                <label class="form-label" for="review">내용 *</label>
                <textarea class="form-control"name="content" id="replyContent" rows="4" name="review" id="review" placeholder="내용을 입력해주세요."
                  required="required"></textarea>
              </div>
              <button class="btn btn-primary" type="submit">댓글등록</button>
            </form>
          </div>
          </c:if>
        </div>
      </div>
    </div>
  </section>
   <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
   <script>
	$(document).ready(() => {
		$("#btnUpdate").on("click", (e) => {
			location.href = "${path}/board/update?no=${board.no}";
		});
		
		$("#btnDelete").on("click", (e) => {
			if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
				location.replace("${path}/board/delete?boardNo=${board.no}");
			}
		});
	});
	
	function deleteReply(replyNo, boardNo){
		var url = "${path}/board/replyDel?replyNo=";
		var requestURL = url + replyNo +"&boardNo=" + boardNo;
		location.replace(requestURL);
	}
</script>
