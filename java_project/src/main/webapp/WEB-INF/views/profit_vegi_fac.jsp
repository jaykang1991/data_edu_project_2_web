<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>소득정보-시설채소</title>
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
              <ul class="dropdown-menu stay-open" role="menu">
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
              <ul class="dropdown-menu" role="menu">
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
            <div class="row"><h3>소득정보 - 시설채소</h3></div><br/><br/><br/><br/>
            <div class="row">
                <div class="col-sm-2 item_button">
                    <h4 class="item_name">방울토마토</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-cherryt">
                        <img class="item" class="rounded-circle" alt="방울토마토" src="<c:url value="/resources/img/vegi_fac/cherrytomato.jpg"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">부추</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-chive">
                      <img class="item" class="rounded-circle" alt="부추" src="<c:url value="/resources/img/vegi_fac/chive.PNG"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">오이(촉성)</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-cucum">
                      <img class="item" class="rounded-circle" alt="오이(촉성)" src="<c:url value="/resources/img/vegi_fac/cucum.jpeg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">오이(반촉성)</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-cucumhalf">
                      <img class="item" class="rounded-circle" alt="오이(반촉성)" src="<c:url value="/resources/img/vegi_fac/cucum.jpeg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">오이(억제)</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-cucumsupp">
                      <img class="item" class="rounded-circle" alt="오이(억제)" src="<c:url value="/resources/img/vegi_fac/cucum.jpeg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
              </div>
                <div class="row">
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">가지</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-eggp">
                      <img class="item" class="rounded-circle" alt="가지" src="<c:url value="/resources/img/vegi_fac/eggplant.jpg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">참외</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-kmelon">
                      <img class="item" class="rounded-circle" alt="참외" src="<c:url value="/resources/img/vegi_fac/kmelon.jpg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">상추</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-lettuce">
                      <img class="item" class="rounded-circle" alt="상추" src="<c:url value="/resources/img/vegi_fac/lettuce.jpg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">파프리카</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-paprika">
                      <img class="item" class="rounded-circle" alt="파프리카" src="<c:url value="/resources/img/vegi_fac/paprika.jpg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                </div>
                <div class="col-sm-2 item_button">
                  <h4 class="item_name">고추</h4>
                  <button type="button" class="btn btn-default btn-circle btn-lg">
                    <a href="#" data-toggle="modal" data-target="#squarespaceModal-pepper">
                      <img class="item" class="rounded-circle" alt="고추" src="<c:url value="/resources/img/vegi_fac/pepper.jpg"/>" data-holder-rendered="true" width="150px"></a>
                  </button>
                  </div>
                  <div class="col-sm-2 item_button">
                    <h4 class="item_name">호박</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-pumpkin">
                        <img class="item" class="rounded-circle" alt="호박" src="<c:url value="/resources/img/vegi_fac/pumpkin.jpg"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                  </div>
                  <div class="col-sm-2 item_button">
                    <h4 class="item_name">시금치</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-spinach">
                        <img class="item" class="rounded-circle" alt="시금치" src="<c:url value="/resources/img/vegi_fac/spinach.jpg"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                  </div>
                  <div class="col-sm-2 item_button">
                    <h4 class="item_name">딸기(촉성)</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-straw">
                        <img class="item" class="rounded-circle" alt="딸기(촉성)" src="<c:url value="/resources/img/vegi_fac/straw.jpg"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                  </div>
                  <div class="col-sm-2 item_button">
                    <h4 class="item_name">딸기(반촉성)</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-strawhalf">
                        <img class="item" class="rounded-circle" alt="딸기(반촉성)" src="<c:url value="/resources/img/vegi_fac/straw.jpg"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                  </div>
                  <div class="col-sm-2 item_button">
                    <h4 class="item_name">토마토(촉성)</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-tomato">
                        <img class="item" class="rounded-circle" alt="토마토(촉성)" src="<c:url value="/resources/img/vegi_fac/tomato.jpg"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                  </div>
                  <div class="col-sm-2 item_button">
                    <h4 class="item_name">토마토(반촉성)</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-tomatohalf">
                        <img class="item" class="rounded-circle" alt="토마토(반촉성)" src="<c:url value="/resources/img/vegi_fac/tomato.jpg"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                  </div>
                  <div class="col-sm-2 item_button">
                    <h4 class="item_name">수박</h4>
                    <button type="button" class="btn btn-default btn-circle btn-lg">
                      <a href="#" data-toggle="modal" data-target="#squarespaceModal-waterm">
                        <img class="item" class="rounded-circle" alt="수박" src="<c:url value="/resources/img/vegi_fac/waterm.jpg"/>" data-holder-rendered="true" width="150px"></a>
                    </button>
                  </div>
            </div>
        </div>


          <!-- modal -->
          <div class="modal fade" id="squarespaceModal-cherryt" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 방울토마토 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_fac/profit_cherrytomato.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-chive" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 부추 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_fac/profit_chive.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-cucum" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 오이(촉성) (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_fac/profit_cucum.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-cucumhalf" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 오이(반촉성) (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_fac/profit_cucum_half.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-cucumsupp" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 오이(억제) (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_fac/profit_cucum_supp.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-eggp" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 가지 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_fac/profit_eggplant.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-kmelon" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 참외 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_fac/profit_kmelon.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-lettuce" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 상추 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_fac/profit_lettuce.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-paprika" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 파프리카 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_fac/profit_paprika.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-pepper" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 고추 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_fac/profit_pepper.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-pumpkin" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 호박 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_fac/profit_pumpkin.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>      
          </div>
          <div class="modal fade" id="squarespaceModal-spinach" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="container">
                  <div class="row title_profit">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h2>소득정보 - 시금치 (0.1ha 기준)</h2></div><br/>
                  <div class="row">
                      <img src="<c:url value="/resources/img/vegi_fac/profit_spinach.png"/>" width="500px" height="500px">
                  </div> </div>
              </div> </div>
            </div>
              <div class="modal fade" id="squarespaceModal-straw" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="container">
                      <div class="row title_profit">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                        <h2>소득정보 - 딸기(촉성) (0.1ha 기준)</h2></div><br/>
                      <div class="row">
                          <img src="<c:url value="/resources/img/vegi_fac/profit_straw.png"/>" width="500px" height="500px">
                      </div> </div>
              </div> </div>
            </div>
              <div class="modal fade" id="squarespaceModal-strawhalf" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="container">
                      <div class="row title_profit">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                        <h2>소득정보 - 딸기(반촉성) (0.1ha 기준)</h2></div><br/>
                      <div class="row">
                          <img src="<c:url value="/resources/img/vegi_fac/profit_straw_half.png"/>" width="500px" height="500px">
                      </div> </div>
                </div> </div>  
              </div> 
                <div class="modal fade" id="squarespaceModal-tomato" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="container">
                        <div class="row title_profit">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                          <h2>소득정보 - 토마토(촉성) (0.1ha 기준)</h2></div><br/>
                        <div class="row">
                            <img src="<c:url value="/resources/img/vegi_fac/profit_tomato.png"/>" width="500px" height="500px">
                        </div> </div>
                </div> </div>
              </div>
                <div class="modal fade" id="squarespaceModal-tomatohalf" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="container">
                        <div class="row title_profit">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                          <h2>소득정보 - 토마토(반촉성) (0.1ha 기준)</h2></div><br/>
                        <div class="row">
                            <img src="<c:url value="/resources/img/vegi_fac/profit_tomato_half.png"/>" width="500px" height="500px">
                        </div> </div>
                </div> </div>
              </div>
                <div class="modal fade" id="squarespaceModal-waterm" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="container">
                        <div class="row title_profit">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                          <h2>소득정보 - 수박 (0.1ha 기준)</h2></div><br/>
                        <div class="row">
                            <img src="<c:url value="/resources/img/vegi_fac/profit_waterm.png"/>" width="500px" height="500px">
                        </div> </div>
                </div> </div>  
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