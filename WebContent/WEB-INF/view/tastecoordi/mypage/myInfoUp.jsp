<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
    
<style>
	
	#myinfo-form
	{margin-left: 15px; margin-top: 20px;}
	#myinfo-form td
	{height: 30px; width: 170px; text-align: center;}
	#myinfo-form td + td
	{width: 300px; text-align: left; padding-left: 10px;}
	#myinfo-form input[type=button]
	{margin-left: 10px;}
	
			
	#myinfo-btn
	{margin-top: 20px; text-align: center;}	
</style> 


<div>

	<form method="post" enctype="multipart/form-data" action="myInfoUp">
		
		<table id="myinfo-form">
			<tr>
				<td>닉네임</td>
				<td><input name="name"/><input type="button" value="중복검사"/></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input name="pw"/></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input name="pw-check"/></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input name="email"/><input type="button" value="중복검사"/></td>
			</tr>
			<tr>
				<td>프로필사진</td>
				<td><input name="file" type="file"/></td>
			</tr>
		</table>

		<div id="myinfo-btn">
			<input type="button" value="업체신청" data-code="${m.defaultRole}"/>
			<input type="submit" value="수정"/>
			<!-- <input type="button" value="취소"/> -->
		</div>

	</form>

</div>