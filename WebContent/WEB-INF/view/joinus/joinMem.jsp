<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
#joinMem-box{
border : 1px solid red;
padding-left : 50px;
}

/* #joinMem-box form{
	width: 100px;
	height: 180px;
	background: #ffffff;
	text-align: center;
} */


#joinLogo img {
	padding-left: 65px;
	width: 70%;
	height: 70%;
}

</style>

	<nav id="joinLogo">
		<h1>
			<a > <img
				src="../resource/image/css/logo.png" alt="TASTES COORDI" />
			</a>
		</h1>
	</nav>



	<section id="joinMem-box">
	<h1 class="Hidden">개인회원가입</h1>
	<form method="post">
		ID:<br> <input type="text" name="ID"><br> PW:<br>
		<input type="text" name="PW"><br> Email:<br> <input
			type="text" name="Email"><br> NckName:<br> <input
			type="text" name="Nname"><br><input type="submit"
			name="SignUp"><br>
	</form>
	</section>
