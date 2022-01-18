<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>세계 주요식품 가격현황</title>
    <link href="<c:url value="/resources/img/fruit/apple.jpg" />" type = "image/png" sizes = "32x32" rel="icon">
    <link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/main_side_1.css" />" rel="stylesheet">
	<style>
      #table_indicator{
        text-align: center;
        font-weight: bold;
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
            <li class="nav"><a href="/myapp/intro">Intro<span class="sr-only">(current)</span></a></li>
          </li>
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
            <li><a href="/myapp/login">로그인</a></li>
            <li><a href="/myapp/agreement">회원가입</a></li>
           </div>
          </ul>
        </div>
      </div>
    </div>
  </header>


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
            <li class="active"><a href="#">귀농 가이드<span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-home"></span></a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">소득 정보 <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-user"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/myapp/profit_crop">식량작물</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/profit_fruit">과수</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/profit_vegi_fac">시설채소</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/profit_vegi_wild">노지채소</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">가격 정보 <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-user"></span></a>
              <ul class="dropdown-menu stay-open" role="menu">
                <li><a href="/myapp/predict">농산물 가격 예측</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/world_price">세계 주요식품 가격현황</a></li>
              </ul>
            </li>        
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">자금 정보 <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-user"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/myapp/farmer_profit">농가 수입/소득</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/gov_land_cost">정부지원금/농지가격</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/loan_settle_cost">정착 자금/대출</a></li>
                <li class="divider"></li>
                <li><a href="/myapp/cost_comparison">도시/농촌 지출 비교</a></li>
              </ul>
            </li>                
          </ul>
        </div>
      </div>
      </nav>

      <section>
        <div class="container">
            <div class="row"><h3>가격정보 - 세계 주요식품 가격현황</h3></div><br/><br/><br/>
            <div class="row">
                <div class="table-responsive">
                  <div align="left">
                    <button type="button" name="load_data" id="load_data" class="btn btn-info">Load Data</button>
                  </div><br/>
                  <div><a href="<c:url value="https://www.awe.gov.au/abares/data/weekly-commodity-price-update"/>" target="_blank">
                    	출처: Austrian Government Department of Agriculture, Water and the Environment
                  </a></div>
                  <div id="crawling_table">

                  </div>
                </div>
            </div>
        </div>
      </section>
      
      <footer>
        <p>(08787) 서울 관악구 남부순환로 1820 에그옐로우 14층 귀농귀촌 종합상담 : 1111-1111 시스템 문의 : 02-222-2222</p>
        <p>Copyright 2021 Farmporter. All rights reserved.</p>
      </footer>

<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"/>"></script>
<script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"/>"></script>
</body>
</html>
<script>
  $(document).ready(function(){
    $('#load_data').click(function(){
      $.ajax({
        url:"crawling_data.csv",
        dataType:"text",
        success:function(data)
        {
          var crawling_data = data.split(/\r?\n|\r/);
          var table_data = '<table class="table table-bordered table-striped"><tr><th></th><th>품목</th><th>기준날짜</th><th>단위</th><th>최근가격</th><th>전주</th><th>주간 변화</th><th>한달 전 가격</th><th>연간 변화</th></tr>';
            for(var count=0; count < crawling_data.length; count++)
            {
              var cell_data = crawling_data[count].split(",");
              table_data += '<tr>';
                for(var cell_count = 0; cell_count < cell_data.length; cell_count++)
                {
                  if(count === 0){
                    table_data += '<th>'+cell_data[cell_count]+'</th>';
                  }
                  else if(count === 1){
                    table_data += '<td id="table_indicator" colspan="9">'+cell_data[count]+'</td>';
                    break;
                  }
                  else if(count === 10){
                    table_data += '<td id="table_indicator" colspan="9">'+cell_data[1]+'</td>';
                    break;
                  }
                  else if(count === 16){
                    table_data += '<td id="table_indicator" colspan="9">'+cell_data[1]+'</td>';
                    break;
                  }
                  else if(count === 24){
                    table_data += '<td id="table_indicator" colspan="9">'+cell_data[1]+'</td>';
                    break;
                  }
                  else{
                    table_data += '<td>'+cell_data[cell_count]+'</td>';
                  }
                }
                table_data += '</tr>';
            }
            table_data += '</table>';
            $('#crawling_table').html(table_data);
        }
      });
    });
  });
</script>