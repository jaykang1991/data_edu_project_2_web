<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link href="<c:url value= "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>" rel="stylesheet"> 
	  <link href="<c:url value= "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"/> "rel="stylesheet"> 		
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>		  
		<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="/resources/js/my_page.js"></script>
            
        <title>My page</title>
		<style type="text/css">
	          #before{display: none;}
	          #after{display:none;}
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

/* 드롭다운 바 */
header{
  background-color: #F9FDCC;
  width: 100% !important;
}
.navbar {
  background-color: #F9FDCC;
}
/* 메뉴 */
div.menu{
  align-items: center;
  margin-right: auto;
  margin-left: 40%;
  font-size: 18px;
  font-weight: bold;
}  
/* 로고 */
.navbar-brand{
  font-size: 30px;
  font-style : italic;
  margin: 20px;
  font-weight: bold;
}
/* 로그인, 회원가입*/
#bs-example-navbar-collapse-1{
  margin-top: 20px;
}
.dropdown{
  color: #2F4858;
}

.dropdown-toggle{
  color: #2F4858;
}
.menu_item {
  margin: 10 px;
  padding: 10px;
  width: 20 px;
} 

section{
  float: left;
  width: 82%;
  height: auto;
  margin-top: 5%;
  margin-left: 8%;
}

footer {
  background-color: #F2F3CC;
  height: 120px;
  text-align: center;
  padding: 45px;
  position: relative;
  clear: both;
}

.jumbotron {
  max-width: 600px;	
  margin: auto;	
  margin-bottom: 20px;
  border-radius: 30px;
  height: 100px;
  padding: 50px 70px;
  text-align: center;
  background-color: #ffffff;
}

.jumbotron h1 {
  margin-top: -15px;
  font-weight: 800;
  align-items: center;
  text-align: center;
  font-size: 32px;
}

/* Related with Form */

/* BASIC */
body {
  font-family: "Nanum Gothic", sans-serif;
  height: 100vh;  
  background-color: #eee6c4;
}

.registration-form{
  padding-top: 0;
  padding-bottom: 50px;
  margin: 0;
  align-items: center;
  text-align: center;
}

.registration-form form{
  background-color: #fff;
  max-width: 800px;
  margin: auto;  
  padding: 50px 70px;
  border-radius: 30px; 
}

.registration-form .item{  
  margin-bottom: 25px; 
  width: 100%;
  height: 34px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 30px;
}

.registration-form .pw{    
  margin-bottom: 25px; 
  width: 75%;
  position: relative;
  display: inline-block;
  height: 34px;
  padding: 6px 12px;
  margin-right: 7%;
  font-size: 14px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 30px;
}

.btn .btn-primary {  
  align-items: center;
  background-color: #56baed;    
  border: none;
  color: white;
  padding: 8px 30px;
  text-align: center;
  text-decoration: none;
  font-size: 13px;
  border-radius: 5px 5px 5px 5px;
  margin: 10px 10px 10px 100px;
  width: 30%;
  display: inline-block;
}

.registration-form .a{
  margin-bottom: 25px;
  bottom: auto;  
}



.registration-form .create-account{
  border-radius: 30px;
  padding: 10px 20px;
  font-size: 18px;
  font-weight: bold;
  background-color: #56baed;
  border: none;
  color: white;
  margin-top: 20px;
}

@media (max-width: 576px) {   
  .registration-form .item{  
    margin-bottom: 25px; 
    width:auto;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 30px;
  }

  .registration-form .pw{    
    margin-bottom: 25px; 
    width: 75%;
    position: relative;
    display: inline-block;
    height: 34px;
    padding: 6px 12px;
    margin-right: 7%;
    font-size: 14px;
    line-height: 1.42857143;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 30px;
  }

  .btn .btn-primary {  
    align-items: center;
    background-color: #56baed;    
    border: none;
    color: white;
    padding: 8px 30px;
    text-align: center;
    text-decoration: none;
    font-size: 13px;
    border-radius: 5px 5px 5px 5px;
    margin: 10px 10px 10px 100px;
  }
  
  .registration-form form{
      padding: 50px 20px;
      float: left;
      display: block;
  }

  .registration-form .form-icon{
      width: 70px;
      height: 70px;
      font-size: 30px;
      line-height: 70px;
  }
}
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
          <a class="navbar-brand" href="/myapp/main_page">Farmporter</a>
        </div>
        
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <div class="menu">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">귀농 가이드</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/myapp/profit_crop">소득정보</a></li>
                <li><a href="/myapp/predict">가격정보</a></li>
                <li><a href="/myapp/farmer_profit">자금정보</a></li>
              </ul>
              <li class="nav"><a href="/myapp/farm_sites">귀농 관련 사이트 <span class="sr-only">(current)</span></a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">알림소식</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/myapp/notice">공지사항</a></li>
              </ul>
            </li>
          </ul>
         </div> 

		<div id="before" class = "login">
         		<ul class="nav navbar-nav navbar-right">
           		<li><a href="/myapp/login">로그인</a></li>
           		<li><a href="/myapp/agreement">회원가입</a></li>
           	</ul>
          </div>
          <div id="after" class = "login">
         		<ul class="nav navbar-nav navbar-right">
	            <li><a href="/myapp/login">로그아웃</a></li>
	            <li><a href="/myapp/my_page">My page</a></li>
	        </ul>
          </div>
        </div>
      </div>
    </div>
  </header>
<!-- 메인메뉴 -->
<section>
  <div class="jumbotron">
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


  <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>