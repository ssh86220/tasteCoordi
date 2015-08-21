<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#joinEnter-box{
border : 1px solid red;
padding-left : 50px;
}

#joinLogo img {
	padding-left: 65px;
	width: 60%;
	height: 60%;
}


</style>


	<nav id="joinLogo">
		<h1>
			<a > <img
				src="../resource/image/css/logo.png" alt="TASTES COORDI" />
			</a>
		</h1>
	</nav>
	
	
	<section id="joinEnter-box">
	<h1>업체회원가입</h1>
	<form method="GET" >
		ID:<br> <input type="text" name="ID"><br> PW:<br>
		<input type="text" name="PW"><br> Email:<br> <input
			type="text" name="Email"><br> NckName:<br> <input
			type="text" name="Nname"><br> Site Link:<br> <input
			type="text" name="SiteLink"><br> Phone Number:<br>
		<input type="text" name="PhoneNumber"><br> <input
			type="submit" name="SignUp"><br>
	</form>
	</section>
