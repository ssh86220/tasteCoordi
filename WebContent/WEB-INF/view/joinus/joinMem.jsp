<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
#joinMem-box{

padding-left : 75px;
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

#joinMem-box input{
 width: 230px;
 height: 25px;

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
	<form method="post" action ="../joinus/joinMem">

			
				<table>

				<tbody>
					<tr>
						<td>ID<br />
						<input type="text" name="ID"></td>
					</tr>
					<tr>
						<td>password<br />
						<input type="text" name="PW"></td>
					</tr>
					<tr>
						<td>Email<br />
						<input type="text" name="Email"></td>
					</tr>
					<tr>
						<td>Nick Name<br />
						<input type="text" name="Nname"></td>
					</tr>
					<tr>
						<td>sing up<br />
						<input type="submit" name="SingUP" value="회원가입"></td>
					</tr>


				</tbody>

			</table>
	</form>
	</section>
