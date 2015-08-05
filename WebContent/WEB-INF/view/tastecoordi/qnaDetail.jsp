<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="titles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
	<!--코드블럭 -->

<!DOCTYPE html>
<style>
#detail-title{
font-size: 20px;
font-weight: bold;
}
/* ----------------목록 설정--------------- */
#detail-menulist{

border: 1px red solid;
display: inline-block;
}
#list1{
margin-left:2px;
float: left;
}
#list2{
margin-left:2px;
float: left;
}
#list3{
margin-left:2px;
float: left;
}
/* ----------------목록 설정 끝--------------- */

#write-reple{
border: 1px red solid;
width: 600px;

}

#detail{
height: 350px;
width:600px;
border: 1px red solid;
}


/* ------------------댓글 목록 설정 시작---------------- */
#reple{
/* border-top: 1px #171a39 solid; */
border: 1px red solid;
width:470px;
}

#reple tr{
	height: 20px;
	line-height: 20px;
}

#reple td,
#reple th{
text-align: center;
border-bottom: 1px #e9e9e9 solid;

}
#detail td{
text-align: center;
border-bottom: 1px #e9e9e9 solid;

}

#reple td:FIRST-CHILD,
#reple th:FIRST-CHILD{
width: 40px;
}
#reple td:FIRST-CHILD+td{
width: 350px;
text-align:left;
text-indent:10px
}



#reple td:FIRST-CHILD+td+td,
#reple th:FIRST-CHILD+th+th{
width : 80px;
}
#reple td:FIRST-CHILD+td+td+td,
#reple th:FIRST-CHILD+th+th+th{
width : 100px;
} 
#reple th{
background: #f5f5f5 url("../images/bg-title-sp.png")no-repeat left center;
}

/* ------------------댓글 목록 설정 끝---------------- */
</style>

	<main id="main">
	
	<h1 class="hidden">QnA</h1>
	
		<section>
		<h1 id="detail-title">게시판</h1>
		</section>
		
		<article id="detail">
		<h1>게시판 내용</h1>
		
			<dl>
				<dt>제목</dt>
				<dd>${c.title}</dd>
				<dt>아이디</dt>
				<dd>${c.mid}</dd>
				<dt>이메일</dt>
				<dd>${c.email}</dd>
				<dt>조회수</dt>
				<dd>${c.hits}</dd>
				<dt>작성일자</dt>
				<dd><f:formatDate value="${c.regDate}" pattern="yyyy-MM-dd"/></dd>
				<dt>내용</dt>
				<dd>${c.content}</dd>
				
			</dl>
	</article>
	 <section id="reple">
	 <table>
	 <thead>
	 
		 <tr>
				<th>번호</th>
				<th>내용</th>
				<th>아이디</th>
				<th>작성일</th>
		 </tr>
	 </thead>
	
		 	<c:forEach var="q" items="${list}">
			 <tr>
					<td>${q.code}</td>
					<td>${q.content}</td>
					<td>${q.mid}</td>
					<td>${q.regDate}</td>
			</tr>
			</c:forEach>
	 </table>
	 </section>
	 	<section id="write-reple">
	 	
	 	<form method="post" action="addComment">
			<fieldset>
			<legend class="hidden">댓글 달기</legend>
			<dl>
				<dt>댓글 작성</dt>
				<dd><textarea rows="3" cols="33" name="content"></textarea>
				</dd>
				<dt class="hidden">아이디</dt>
				<dd class="hidden"><security:authentication property="name"/></dd>
			</dl>
			<div><input type="submit" value="작성완료"></div>
			</fieldset>
		</form>
		</section>
		<%-- <form method="POST" action="addComment" enctype="multipart/form-data">
			<fieldset>
			<dl>
			<dt>코드</dt>
			<dd><input name="qnaNumber" value="${c.number}"></dd>
			<dt>아이디</dt>
			<dd><security:authentication property="name"/></dd>
			<dt>내용</dt>
			<dd><input name="content"></dd>
			</dl>
			<div><input name="submit" value="등록"></div>
			
			</fieldset>		
			</form>
	 --%>
	
	
		<nav id="detail-menulist" class="clearfix">
		<h1 class="hidden">속성 목록</h1>
			<div id="list1">
			<a href="qna"><img src="" alt="목록"/></a>
			<div id="list2">
			<form method="post" action="qnaEdit?c=${c.number}">
			<input type="submit" value="수정">
			</form>
			</div>
			<div id="list3">
			<form method="post" action="qnaDelete?c=${c.number}">
			<input type="submit" value="삭제">
			</form>
			</div>
			</div>
		</nav>
			
		
		<section>	
		<h1>고객센터 번호</h1>
		<p>02-123-4567</p>
		</section>
	
	
	</main>
	