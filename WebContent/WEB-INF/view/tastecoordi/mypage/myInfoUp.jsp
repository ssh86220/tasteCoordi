<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
	
	#myinfo-form
	{margin-left: auto; margin-right: auto; margin-top: 20px;}
	#myinfo-form td
	{height: 30px; width: 100px; text-align: center;}
	#myinfo-form td + td
	{width: 300px; text-align: left; padding-left: 10px;}
	#myinfo-form input[type=button]
	{margin-left: 10px;}
	
			
	#myinfo-btn
	{margin-top: 20px; text-align: center;}	
</style>    

<div>

	<form method="post" enctype="multipart/form-data" action="myInfo">
		
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
			<input type="submit" value="수정"/>
			<input type="button" value="취소"/>
			<!-- <a href="javascript:closeWin();">취소</a> -->
		</div>

	</form>

</div>