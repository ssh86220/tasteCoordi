<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   


		<main id="item-list">	
			<section>
				<h1>팔로워</h1>
				
				<section id="coordies-list">
								
					<h1 class="hidden">팔로워</h1>
					
						<table>
							<thead>
								<tr>
									<th>팔로워 id</th>
									<th>프로필사진</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="follower" items="${list}">	
								<tr>				
									<td>${follower.mid}</td>
									<td><img src="../resource/image/profile/${follower.followerImg}">${follower.followerImg}</td>														
								</tr>
			
							</c:forEach>
							</tbody>
						</table>
	
				</section>
					
			</section>	
		</main>