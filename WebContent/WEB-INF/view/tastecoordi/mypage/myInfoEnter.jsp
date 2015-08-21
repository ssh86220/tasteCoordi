<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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

	<form method="post" enctype="multipart/form-data" action="myInfoEnter">
		
		<table id="myinfo-form">
			<tr>
				<td>신청자</td>
				<td>${m.id}</td>
			</tr>
			<tr>
				<td>사이트 주소</td>
				<td><input name="link"/><input type="button" value="중복검사"/></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><input name="phoneNumber"/></td>
			</tr>
		</table>

		<div id="myinfo-btn">
			<input type="button" value="업체신청" data-code="${m.defaultRole}" style="display: none;"/>
			<input type="submit" value="제출"/>
			<input type="button" value="취소"/>
		</div>

	</form>

</div>