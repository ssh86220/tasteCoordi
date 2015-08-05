<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> --%>
<!DOCTYPE html>

<%
	/* MemberDao memberDao = new MyBatisMemberDao();

	String code = request.getParameter("c");
	Member n = memberDao.getMember(code);
	request.setAttribute("n", n); */
%>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<main>
	<h1>TASTECODI</h1>

	<h3>회원정보수정</h3>
	<form>
		<fieldset>
			<label>ID</label> <input type="text" placeholder="${n.id}" />
		</fieldset>

		<fieldset>
			<label>PW</label> <input type="text" placeholder="${n.pw}" />
		</fieldset>

		<fieldset>
			<label>이메일</label> <input type="text" placeholder="${n.email}" />
		</fieldset>


		<fieldset>
			<label>닉네임</label> <input type="text" placeholder="${n.name}" />
		</fieldset>

		<fieldset>
			<label>가입일자</label> <input type="text" placeholder="${n.regDate}" />
		</fieldset>

		<fieldset>
			<input type="submit" value="수정" href="tsAdminMem" /><a href="tsAdminMem">취소</a>
		</fieldset>

	</form>

	</main>

</body>
</html>