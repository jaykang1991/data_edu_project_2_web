<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Farmporter</title>
    <link href="<c:url value="/resources/img/fruit/apple.jpg" />" type = "image/png" sizes = "32x32" rel="icon">
    <link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/main_side_1.css" />" rel="stylesheet">

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
          <a class="navbar-brand" href="/main_page.html">Farmporter</a>
        </div>
        
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <div class="menu">
          <ul class="nav navbar-nav">
            <li class="nav"><a href="/html/intro.html">Intro<span class="sr-only">(current)</span></a></li>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">귀농 가이드</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/html/profit_crop.html">소득정보</a></li>
                <li><a href="/html/predict.html">가격정보</a></li>
                <li><a href="/html/farmer profit.html">자금정보</a></li>
              </ul>
              <li class="nav"><a href="/html/farm_sites.html">귀농 관련 사이트 <span class="sr-only">(current)</span></a></li>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">알림소식</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/html/notice.html">공지사항</a></li>
                <li><a href="/html/qna.html">Q&A</a></li>
              </ul>
            </li>
          </ul>
         </div>

         <div class = "login">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="/html//login/login.html">로그인</a></li>
            <li><a href="/html/login/agreement.html">회원가입</a></li>
           </div>
          </ul>
        </div>
      </div>
    </div>
  </header>

  <img class="main_img" src="<c:url value="/resources/img/farm_background.jpg" />">

  
  <footer>
    <p>(08787) 서울 관악구 남부순환로 1820 에그옐로우 14층 귀농귀촌 종합상담 : 1111-1111 시스템 문의 : 02-222-2222</p>
    <p>Copyright 2021 Farmporter. All rights reserved.</p>
  </footer>
</body>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>