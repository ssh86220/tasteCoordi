<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#joinEnter-box {
	padding-left: 75px;
}

#joinLogo img {
	padding-left: 75px;
	width: 60%;
	height: 60%;
}

#joinEnter-box input {
	width: 230px;
	height: 15px;
}
</style>

<div id="joinEnter-wrapper">
	<nav id="joinLogo">
		<h1>
			<a> <img src="../resource/image/css/logo.png" alt="TASTES COORDI" />
			</a>
		</h1>
	</nav>


	<section id="joinEnter-box">
		<h1 class="Hidden">업체회원가입</h1>

		<form method="POST" action="../joinus/joinEnter">
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
						<input type="text" name="Nckname"></td>
					</tr>
					<tr>
						<td>Site Link<br />
						<input type="text" name="SiteLink"></td>
					</tr>
					<tr>
						<td>PhoneNumber<br />
						<input type="text" name="phoneNumber"></td>
					</tr>
					<tr>
						<td>
						<input type="submit" name="SingUP" value="업체회원가입"></td>
					</tr>


				</tbody>

			</table>
		</form>
	</section>
</div>
