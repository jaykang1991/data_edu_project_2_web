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
		  
		  <link href="<c:url value="/resources/css/my_page.css"/>" rel="stylesheet" >
		  <link href="<c:url value= "https://use.fontawesome.com/releases/v5.15.4/css/all.css" />"  rel="stylesheet"> 
		    
		    <script src="/resources/js/my_page.js"></script>
		      
		  <title>My page</title>
		<style>
		    
		</style>
</head>
<body>
  <header>
    <div class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/main_page">Farmporter</a>
        </div>
        
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <div class="menu">
          <ul class="nav navbar-nav">
  
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">귀농 가이드</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/profit_crop">소득정보</a></li>
                <li><a href="#">가격정보</a></li>
                <li><a href="#">자금정보</a></li>
              </ul>
              <li class="nav"><a href="/farm_sites">귀농 관련 사이트 <span class="sr-only">(current)</span></a></li>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">알림소식</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/notice">공지사항</a></li>
                <li><a href="/qna">Q&A</a></li>
              </ul>
            </li>
          </ul>
         </div>      
         <div class = "login">
          <ul class="nav navbar-nav navbar-right">
           
            <li><a href="/login">로그인</a></li>
            <li><a href="/agreement">회원가입</a></li>
           </div>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </div>
  </header>
<!-- 메인메뉴 -->
<section>
  <div class="jumbotron ">
    <h1 class="display-4"> My page</h1>
  </div>	

  <div class="registration-form">
    <form>     
      <div class="form-group">
        <input type="text" class="form-control item"  id="id" placeholder="아이디">        
      </div>
      <div class="form-group">
        <input type="text" class="form-control item" id="username" placeholder="이름">
      </div>			
      <div class="form-group password">
        
          <input type="password" class="form-control pw" id="password" placeholder="비밀번호">        
          <a href="#" data-toggle="modal" data-target="#squarespaceModal-pw"><button type="submit" class="btn btn-primary">비밀번호 수정</button></a>
        
      </div>
      <div class="form-group">
        <input type="text" class="form-control item" id="email" placeholder="이메일">
      </div>
      <div class="form-group">
        <input type="text" class="form-control item" id="birth-date" placeholder="생년월일">
      </div>
      <div class="form-group">
        <button type="button" class="btn btn-block create-account"> 수정 완료</button>
      </div>
    </form>		 
  </div>    
    
</section>    

<!-- line modal 비밀번호 수정 -->
<div class="modal fade" id="squarespaceModal-pw" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
        <h3 class="modal-title" id="lineModalLabel">비밀번호 수정</h3>
      </div>
      <div class="modal-body">
        
        <!-- content goes here -->
        <form>
          <div class="form-group">
            <label for="exampleInputPassword">기존 비밀번호 입력</label>
            <input type="password" class="form-control" id="exampleInputPassword" placeholder="비밀번호를 입력하세요">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword">새 비밀번호 입력</label>
            <input type="password" class="form-control" id="exampleInputPassword" placeholder="새 비밀번호를 입력하세요">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword">새 비밀번호 재입력</label>
            <input type="password" class="form-control" id="exampleInputPassword" placeholder="새 비밀번호를 입력하세요">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <div class="btn-group btn-group-justified" role="group" aria-label="group button">
          <div class="btn-group" role="group">
            <button type="button" class="btn btn-default" data-dismiss="modal"  role="button">닫기</button>
          </div>
          <div class="btn-group btn-delete hidden" role="group">
            <button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button">Delete</button>
          </div>
          <div class="btn-group" role="group">
            <button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button">수정</button> 
          </div>
        </div>
      </div>
    </div>
  </div>      
</div>

<!-- line modal 비밀번호 체크 -->
<div class="modal fade" id="squarespaceModal-pw" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
        <h3 class="modal-title" id="lineModalLabel">비밀번호 수정</h3>
      </div>
      <div class="modal-body">
        
        <!-- content goes here -->
        <form>
          <div class="form-group">
            <label for="exampleInputEmail1">이메일</label>
            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="이메일을 입력하세요">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <div class="btn-group btn-group-justified" role="group" aria-label="group button">
          <div class="btn-group" role="group">
            <button type="button" class="btn btn-default" data-dismiss="modal"  role="button">닫기</button>
          </div>
          <div class="btn-group btn-delete hidden" role="group">
            <button type="button" id="delImage" class="btn btn-default btn-hover-red" data-dismiss="modal"  role="button">Delete</button>
          </div>
          <div class="btn-group" role="group">
            <a class="underlineHover" href="#" data-toggle="modal" data-target="#squarespaceModal-check"><button type="button" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button">수정</button></a> 
          </div>
        </div>
      </div>
    </div>
  </div>      
</div>




<footer>
  여기는 foot 구간입니다.
</footer>
</body>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>