<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- 합쳐지고 최소화된 최신 CSS -->
  <link href="<c:url value= "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>" rel="stylesheet"> 
  <!-- 부가적인 테마 -->
  <link href="<c:url value= "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"/> "rel="stylesheet"> 
  <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

  <!-- register.css -->
  <link href="<c:url value =  "/resources/css/register.css"/>" rel="stylesheet" >
	<link href="<c:url value = "https://use.fontawesome.com/releases/v5.15.4/css/all.css" />" rel="stylesheet" >
	
  <title>Register Page</title>
</head>
<body>  	
		<div class="jumbotron ">
			<h1 class="display-4">회원 가입</h1>		
		</div>	
	<div class="registration-form">
		<form>
			<div class="form-icon">
					<span><a href="/main_page"><i class="fas fa-home"></i></span></a>
			</div>
			<div class="form-group id-check">
				<input type="text" class="form-control id" style="float: left;" id="id" placeholder="아이디">
				<a href="#" data-toggle="modal" data-target="#squarespaceModal-had"><button type="submit" class="btn-check">중복 확인</button></a>
			</div>
			<div class="form-group">
					<input type="text" class="form-control item" id="username" placeholder="이름">
			</div>			
			<div class="form-group">
					<input type="password" class="form-control item" id="password" placeholder="비밀번호">
			</div>
			<div class="form-group">
					<input type="text" class="form-control item" id="email" placeholder="이메일">
			</div>
			<div class="form-group">
					<input type="text" class="form-control item" id="birth-date" placeholder="생년월일">
			</div>
			<div class="form-group">
					<button type="button" class="btn btn-block create-account"> 계정 생성</button>
			</div>
		</form>		
	</div>

	<!-- line modal 아이디 중복 확인 : 중복 시 -->
	<div class="modal fade" id="squarespaceModal-had" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
					<h3 class="modal-title" id="lineModalLabel">중복 확인</h3>
				</div>
				<div class="modal-body">					
					<!-- content goes here -->
					<p>
						이미 존재하는 아이디 입니다.
					</p>
				</div>
				<div class="modal-footer">
					<div class="btn-group btn-group-justified" role="group" aria-label="group button">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">닫기</button>
						</div>
						<div class="btn-group btn-delete hidden" role="group">
							<button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button">Delete</button>
						</div>						
					</div>
				</div>
			</div>
		</div>      
	</div>

	<!-- line modal 아이디 중복 확인 : 사용 가능 시 -->
	<div class="modal fade" id="squarespaceModal-none" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
					<h3 class="modal-title" id="lineModalLabel">중복 확인</h3>
				</div>
				<div class="modal-body">					
					<!-- content goes here -->
					<p>
						사용 가능한 아이디 입니다.
					</p>
				</div>
				<div class="modal-footer">
					<div class="btn-group btn-group-justified" role="group" aria-label="group button">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">닫기</button>
						</div>
						<div class="btn-group btn-delete hidden" role="group">
							<button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button">Delete</button>
						</div>						
					</div>
				</div>
			</div>
		</div>      
	</div>

  <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>