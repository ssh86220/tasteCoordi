<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="titles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<style>

/* ----------------------게시판 메인설정--------------------- */
#qna tr{
	height: 30px;
	line-height: 30px;
}

#qna td,
#qna th{
text-align: center;
border-bottom: 1px #e9e9e9 solid;

}
#qna td{
text-align: center;
border-bottom: 1px #e9e9e9 solid;

}

#qna td:FIRST-CHILD,
#qna th:FIRST-CHILD{
width: 60px;
}
#qna td:FIRST-CHILD+td{
width: 400px;
text-align:left;
text-indent:10px
}



#qna td:FIRST-CHILD+td+td,
#qna th:FIRST-CHILD+th+th{
width : 100px;
}
#qna td:FIRST-CHILD+td+td+td,
#qna th:FIRST-CHILD+th+th+th{
width : 100px;
} 
#qna td:FIRST-CHILD+td+td+td+td,
#qna th:FIRST-CHILD+th+th+th+th{
width:60px;
}

#qna th{
background: #f5f5f5 url("../images/bg-title-sp.png")no-repeat left center;
}

#qna{
width:720px;
border-top: 2px #171a39 solid;
}

#qna th:FIRST-CHILD {
	background: #f5f5f5;
}
/* ----------------------게시판 메인설정 끝--------------------- */

/* ---------------여기는 page설정 ------------------- */
#page li{
float: left;
width:25px;
height:25px;

text-align: center;
line-height: 25px; 
}

#page ul{

/*display: inline-block; /* 자식의 가로세로와 같게 */
overflow: auto;/* 자식의 높이만 같게 */
float: left;
}
#page > * {
float: left; 

}
#page > p{
width:25px;
height:25px;
/* border: 1px solid green; */
text-align: center;
line-height: 25px; 
font-size: 12px;

}
#service {

}

/* ---------------여기는 page설정  끝------------------- */
</style>
<!DOCTYPE html>

			<main id="main">	

			<h1 class="hidden">QnA</h1>
			<div>
				
				<section id="qna">
					<h1 class="hidden">게시판 목록</h1>
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>아이디</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						
							<c:forEach var="q" items="${list}">
								<tr>
									<td>${q.number}</td>
									<td><a href="qnaDetail?c=${q.number}">${q.title}</a></td>
									<td>${q.mid}</td>
									<td><f:formatDate value="${q.regDate}"
											pattern="yyyy-MM-dd" /></td>
									<td>${q.hits}</td>
								</tr>

							</c:forEach>

					</table>
				</section>
				
				<section>
					<h1 class="hidden">QnA 검색폼</h1>
					<form>
						<fieldset>
							<legend class="hidden">QnA 검색정보</legend>
							<label class="hidden">검색필드</label> <select>
								<option>제목</option>
								<option>작성자</option>
							</select> <label>검색어</label> <input type="text" /> <input type="submit"
								value="검색" />
						</fieldset>
					</form>
				</section>



				<nav>
					<h1 class="hidden">글쓰기 목록</h1>
					<security:authorize ifAnyGranted="ROLE_USER">
					<div>
						<a href="qnaReg"><img src="../resource/image/css/btn-write.png" alt="글쓰기" /></a>
					</div>
					</security:authorize>
				</nav>

				<nav id=page class="clearfix">
					<h1 class="hidden">페이지</h1>
					<p><a href="">이전</a></p>
					<ul>
						<li><a href="">[1]</a></li>
						<li><a href="">[2]</a></li>
						<li><a href="">[3]</a></li>
						<li><a href="">[4]</a></li>
						<li><a href="">[5]</a></li>
					
					</ul>
					<p><a href="">다음</a></p>
				</nav>



				<section id="service">
					<h1>고객센터 번호</h1>
					<p>02-123-4567</p>
				</section>

			</div>
			</main>
		