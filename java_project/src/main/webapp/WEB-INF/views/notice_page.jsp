<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>공지사항</title>
    <link href="<c:url value="/resources/img/fruit/apple.jpg" />" type = "image/png" sizes = "32x32" rel="icon">
    <link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/main_side_1.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/table.css" />" rel="stylesheet">


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
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">알림소식</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/myapp/notice">공지사항</a></li>
                <li><a href="/myapp/qna">Q&A</a></li>
              </ul>
            </li>
          </ul>
         </div>

         <div class = "login">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="/myapp/login/login">로그인</a></li>
            <li><a href="/myapp/login/agreement">회원가입</a></li>
           </div>
          </ul>
        </div>
      </div>
    </div>
  </header>

<!-- 좌측 네비바 -->
<nav class="navbar navbar-default sidebar" role="navigation">
  <div class="container-fluid">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>      
  </div>
  <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">알림소식<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
      <li class="menu">
        <a href="/myapp/notice" class="menu" data-toggle="menu">공지 사항 <span></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
      </li>
      <li class="menu">
        <a href="/myapp/qna" class="menu" data-toggle="menu">Q&A <span></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
      </li>  
    </ul>
  </div>
</div>
</nav>
<!-- 좌측 네비바 -->


<!-- 메인메뉴 -->
<section >
  <h3>공지사항</h3>

    
    <table class="table table table-bordered results">
      <thead style="height: 50px;">
        <tr>
            <th class="col-md-1 col-xs-1" style="vertical-align: middle; text-align:center;">제목</th>
          
            <th class="col-md-5 col-xs-5" colspan="5" style="vertical-align: middle;">	2020년도 주민참여 예산제도 운영 결과 공고</th>
            
        </tr>
    </thead>
          
          
          
          
      <tbody>
        <tr>
        <td class="success" style="height: 10%; vertical-align: middle; text-align:center;">작성자</td>
          <td class="title" style="vertical-align: middle; padding-left:20px" >기획실</td>
          <td class="success" style="vertical-align: middle; text-align:center;">등록일</td>
          <td style="vertical-align: middle; padding-left:20px">2021-02-26</td>
        </tr>
          <td class="number" style="vertical-align: middle; text-align:center;">내용</td>
          <td colspan="3" style="padding: 2%;">
            우리군 예산운영과 관련하여 투명하고 효율적인 예산편성을 위하여 군민 여러분의 다양한 의견과 제안을 수렴하고자 실시한 주민참여 예산제도 운영 결과를 공개합니다.
            2020년 12월 31일
            평창군수
          </td>
        </tr>
      </tbody>
    </table>
    <button type="submit"class="btn btn-default" style="float:right">
        <a href="/myapp/notice">목록</button></a>
        
    
</section>    

<footer>
  <p>(08787) 서울 관악구 남부순환로 1820 에그옐로우 14층 귀농귀촌 종합상담 : 1111-1111 시스템 문의 : 02-222-2222</p>
  <p>Copyright 2021 Farmporter. All rights reserved.</p>
</footer>
       
       
<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"/>"></script>
<script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"/>"></script>
</body>
</html>

  



