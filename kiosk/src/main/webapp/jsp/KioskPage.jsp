<%@ page import="kiosk.vo.Member" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="KO">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="apple-touch-icon" sizes="57x57" href="./img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="./img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="73x72" href="./img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="./img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="./img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="./img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="./img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="./img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="./img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="./img/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="./img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./img/favicon/favicon-16x16.png">
    <link rel="manifest" href="./img/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="./img/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <title>KIOSK - BASKIN ROBBINS</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka+One&amp;family=Jua&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="./css/kioskPage.css">
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.1/gsap.min.js"></script>
    <script type="text/javascript" src="./json/product.json"></script>
    <script type="text/javascript" src="./js/kioskPage.js"></script>
  </head>
  <body>
    <section id="pageHome">
      <main>
        <ul class="wrapHomeSlider"></ul>
      </main>
      <footer>
        <article>
          <ul></ul>
        </article>
        <p>화면을 터치해주세요.</p>
      </footer>
    </section>
    <section id="pageProduct">
      <header id="wrapLogoHeader">
        <section> 
          <article>
            <div id="imgLogo"></div>
          </article>
          <article> 
            <div id="imgAdmin">
              <div></div>
            </div>
            <div id="imgHomeProduct">
              <div></div>
            </div>
          </article>
        </section>
      </header>
      <main>
        <article class="mainTapTitleWrap">
          <div>
            <div class="mainTabActive" id="productTab1"> 
              <p>아이스크림</p>
            </div>
            <div id="productTab2">
              <p>커피</p>
            </div>
            <div id="productTab3">
              <p>케이크</p>
            </div>
          </div>
        </article>
        <article class="mainProductWrap">
          <div id="btnLeftProduct">
            <div></div>
          </div>
          <div id="btnRightProduct">
            <div></div>
          </div>
          <div class="widthProductBox"> 
            <div class="cardlistProduct" id="productPage1"></div>
            <div class="cardlistProduct2" id="productPage2"></div>
          </div>
          <div class="paginationWrapProduct"></div>
        </article>
        <article class="mainBtnWrap">
          <div>
            <div>장바구니
              <div id="countProduct">10</div>
            </div>
            <div id="btnProductPay">
              <div>₩300,000,000 </div>
              <div>결제하기
                <div>
                  <div></div>
                </div>
              </div>
            </div>
          </div>
        </article>
      </main>
      <footer id="wrapProductFooter">
        <section id="areaProductCart"> </section>
        <div id="btnBannerLeft"> 
          <div></div>
        </div>
        <div id="btnBannerRight">
          <div></div>
        </div>
      </footer>
    </section>
    <section id="pageOptionCup">
      <header id="wrapStepheader">
        <article id="imgStep">
          <p id="textStepOne">옵션 선택</p>
          <p id="textStepTwo">맛 선택</p>
        </article>
      </header>
      <main>
        <div class="areaTemp"></div>
        <section class="areaContents">
          <section id="containerTopInfoCup"></section>
          <!--option explain end-->
          <section>
            <div id="containerOptionCup"></div>
          </section>
          <!--option main end-->
          <section>
            <section id="containerOptionBtnCup">
              <article id="btnOptionPrev">
                <article></article>
                <p>이전 화면 </p>
              </article>
              <article id="btnOptionNext"> 
                <p></p>
                <article> 
                  <p>담기</p>
                  <article> </article>
                </article>
              </article>
            </section>
          </section>
        </section>
        <div class="areaTemp"></div>
      </main>
      <footer id="wrapOptionFooterCup"></footer>
    </section>
    <section id="pageOptionIce">
      <header id="wrapStepheader">
        <article id="imgStep">
          <p id="textStepOne">옵션 선택</p>
          <p id="textStepTwo">맛 선택</p>
        </article>
      </header>
      <main>
        <div class="areaTemp"></div>
        <section class="areaContents">
          <section id="containerTopInfoIce"></section>
          <!--option explain end-->
          <section>
            <div id="containerOptionIce"></div>
          </section>
          <!--option main end-->
          <section>
            <section id="containerOptionBtnIce">
              <article id="btnOptionPrev">
                <article></article>
                <p>이전 화면 </p>
              </article>
              <article id="btnOptionNext"> 
                <p></p>
                <article> 
                  <p>맛 선택</p>
                  <article> </article>
                </article>
              </article>
            </section>
          </section>
        </section>
        <div class="areaTemp"></div>
      </main>
      <footer id="wrapOptionFooterIce"></footer>
    </section>
    <section id="pageOptionCake">
      <header id="wrapStepheader">
        <article id="imgStep">
          <p id="textStepOne">옵션 선택</p>
          <p id="textStepTwo">담기</p>
        </article>
      </header>
      <main>
        <div class="areaTemp"></div>
        <section class="areaContents">
          <section id="containerTopInfoCake"></section>
          <!--option explain end-->
          <section>
            <div id="containerOptionCake"></div>
          </section>
          <!--option main end-->
          <section>
            <section id="containerOptionBtnCake">
              <article id="btnOptionPrev">
                <article></article>
                <p>이전 화면 </p>
              </article>
              <article id="btnOptionNext"> 
                <p></p>
                <article> 
                  <p>담기</p>
                  <article> </article>
                </article>
              </article>
            </section>
          </section>
          <!--button area end-->
        </section>
        <div class="areaTemp"></div>
      </main>
      <footer id="wrapOptionFooterCake"></footer>
    </section>
    <section id="pageOptionCoffee">
      <header id="wrapStepheader">
        <article id="imgStep">
          <p id="textStepOne">옵션 선택</p>
          <p id="textStepTwo">담기</p>
        </article>
      </header>
      <main>
        <div class="areaTemp"></div>
        <section class="areaContents">
          <section id="containerTopInfoCoffee"></section>
          <!--option explain end-->
          <section>
            <div id="containerOptionCoffee"></div>
          </section>
          <!--option main end -->
          <section>
            <section id="containerOptionBtnCoffee">
              <article id="btnOptionPrev">
                <article></article>
                <p>이전 화면 </p>
              </article>
              <article id="btnOptionNext"> 
                <p></p>
                <article> 
                  <p>담기</p>
                  <article> </article>
                </article>
              </article>
            </section>
          </section>
        </section>
        <div class="areaTemp"></div>
      </main>
      <footer id="wrapOptionFooterCoffee"></footer>
    </section>
    <section id="flavorPopupArea">
      <article>
        <div>
          <p>메뉴 화면으로 돌아가시겠습니까?</p>
        </div>
        <div>
          <p>아니요</p>
          <p>네</p>
        </div>
      </article>
    </section>
    <section id="pageFlavor"> 
      <header id="wrapStepheader">
        <article id="imgStep">
          <p id="textStepOne">옵션 선택</p>
          <p id="textStepTwo">맛 선택</p>
        </article>
      </header>
      <main> 
        <article class="mainFlavorWrap">
          <div class="btnFlavorLeft" id="btnLeftFlavor">
            <div></div>
          </div>
          <div class="btnFlavorRight" id="btnRightFlavor">
            <div></div>
          </div>
          <div class="widthFlavorBox"> 
            <div class="cardlistFlavor" id="flavorPage1"></div>
            <div class="cardlistFlavor2" id="flavorPage2"></div>
            <div class="cardlistFlavor3" id="flavorPage3"></div>
          </div>
          <div class="paginationWrapFlavor">
            <div class="paginationActive"></div>
            <div> </div>
            <div></div>
          </div>
        </article>
        <article class="mainSelectFlavor"></article>
        <article class="buttonArea">
          <div id="btnFlavorBack"> 
            <p>이전 화면</p>
            <div>
              <div></div>
            </div>
          </div>
          <div id="btnFlavorNext">
            <p>담기</p>
            <div><span></span></div>
          </div>
        </article>
      </main>
      <footer id="wrapFlavorFooter">
        <article>
          <div> </div>
          <div>
            <p> </p>
            <p> </p>
            <p></p>
          </div>
        </article>
      </footer>
    </section>
    <section id="pageCart"> 
      <header id="wrapLogoHeader">
        <section> 
          <article>
            <div id="imgLogo"></div>
          </article>
          <article> 
            <div id="imgLang">
              <div></div>
            </div>
            <div id="imgHomeCart">
              <div></div>
            </div>
          </article>
        </section>
      </header>
      <main> 
        <section>
          <article>
            <div>
              <p>1단계</p>
            </div>
          </article>
          <article>
            <div>
              <p>주문내역을 확인해 주세요.</p>
            </div>
          </article>
        </section>
        <section id="cartListArea"></section>
        <section>
          <article>
            <div>
              <p>2단계</p>
            </div>
          </article>
          <article>
            <div>
              <p>결제 금액을 확인해 주세요.</p>
            </div>
          </article>
          <article>
            <div>
              <div>
                <p>₩</p>
                <p id="cartTotalPrice">0</p>
              </div>
            </div>
          </article>
        </section>
        <section>
          <article id="btnCartPay">
            <p>결제하기</p>
          </article>
        </section>
      </main>
      <footer id="wrapCartFooter">
        <div id="btnCartDown"><i class="xi-arrow-down"></i></div>
      </footer>
      <section id="cartPopupArea">
        <article>
          <div>
            <p>상품을 삭제하시겠습니까?</p>
          </div>
          <div>
            <p>아니요</p>
            <p>네</p>
          </div>
        </article>
      </section>
    </section>
    <section id="pageOptionPoint"> 
      <header id="wrapStepheader">
        <article id="imgStep">
          <p id="textStepOne">포인트 적립</p>
          <p id="textStepTwo">결제하기</p>
        </article>
      </header>
      <main> 
        <article class="paymentPlan">
          <p>할부 선택</p>
          <p>적립금이 있으신가요?</p>
          <div id="btnMonthly"><span class="monthlySelect">할부 안함 </span><span>2개월 할부 </span><span>5개월 할부</span></div>
        </article>
        <article class="pointOption">
          <p>포인트 사용</p>
          <p>적립금이 있으신가요?</p>
          <div id="selectPoint"><span> 
              <div></div>
              <p>적립하기</p></span><span> 
              <div></div>
              <p>사용하기</p>
              <!--pointCheck 클래스 주면 색깔들어감--></span></div>
          <li>포인트 사용 시 자동 적립됩니다.</li>
        </article>
        <article class="buttonArea">
          <div id="btnPointOptionBack"> 
            <p>이전 화면</p>
            <div>
              <div></div>
            </div>
          </div>
          <div id="btnPointOptionNext">
            <p>다음 단계 (결제하기)</p>
            <div><span></span></div>
          </div>
        </article>
      </main>
      <footer></footer>
    </section>
    <section id="pageInputNum"> 
      <header> </header>
      <main id="wrapPageInputNum"> 
        <section>
          <p>회원번호를 입력해주세요</p>
          <p>포인트를 사용할 휴대폰 번호를 입력해주세요.</p>
          <article id="inputMemIN">
            <p></p>
            <p>샘플) 11122223333</p>
          </article>
          <article id="btnKeypadIN">
            <div> 
              <p>1</p>
            </div>
            <div> 
              <p>2</p>
            </div>
            <div> 
              <p>3</p>
            </div>
            <div> 
              <p>4</p>
            </div>
            <div> 
              <p>5</p>
            </div>
            <div> 
              <p>6</p>
            </div>
            <div> 
              <p>7</p>
            </div>
            <div> 
              <p>8</p>
            </div>
            <div> 
              <p>9</p>
            </div>
            <div> 
              <p>전체 지움</p>
            </div>
            <div> 
              <p>0</p>
            </div>
            <div> 
              <div></div>
            </div>
          </article>
          <article> 
            <article id="btnBackIN">
              <article>
                <div></div>
              </article>
              <p>이전 화면</p>
            </article>
            <article id="btnNextIN">
              <p>입력 완료</p>
              <article> 
                <div> </div>
              </article>
            </article>
          </article>
        </section>
      </main>
      <footer> </footer>
    </section>
    <section id="pagePointView"> 
      <header> </header>
      <main id="wrapPointView"> 
        <section>
          <p>포인트 적립</p>
          <p>하단의 닫기 버튼을 눌러 다음 화면으로 이동하세요.</p>
          <div class="lottie_container"></div>
          <article>
            <p id="savePointPV1"></p>
            <p id="savePointPV2"></p>
          </article>
          <article id="btnNextPV">
            <p>닫기</p>
          </article>
        </section>
      </main>
      <footer> </footer>
    </section>
    <section id="pageUsePoint"> 
      <header> </header>
      <main id="wrapPageUsePoint"> 
        <section>
          <article>
            <p>보유 포인트</p>
            <div> 
              <p id="currentPointUP"></p>
            </div>
            <p>P</p>
          </article>
          <article>
            <p>사용 포인트</p>
            <div> 
              <p id="usePointUP"></p>
            </div>
            <p>P</p>
          </article>
          <article>
            <p>• 포인트는 1000p부터 사용 가능합니다.</p>
          </article>
          <article id="btnKeypadUP">
            <div>
              <p>1</p>
            </div>
            <div> 
              <p>2</p>
            </div>
            <div> 
              <p>3</p>
            </div>
            <div> 
              <p>4</p>
            </div>
            <div> 
              <p>5</p>
            </div>
            <div> 
              <p>6</p>
            </div>
            <div> 
              <p>7</p>
            </div>
            <div> 
              <p>8</p>
            </div>
            <div> 
              <p>9</p>
            </div>
            <div> 
              <p>전체 지움</p>
            </div>
            <div> 
              <p>0</p>
            </div>
            <div> 
              <div></div>
            </div>
          </article>
          <article> 
            <article id="btnBackUP">
              <article>
                <div></div>
              </article>
              <p>이전 화면</p>
            </article>
            <article id="btnNextUP">
              <p>입력 완료</p>
              <article> 
                <div> </div>
              </article>
            </article>
          </article>
        </section>
      </main>
      <footer> </footer>
    </section>
    <section id="pageFinalCost">
      <header> </header>
      <main id="wrapFinalCostMain"> 
        <section> 
          <p>결제하기</p>
          <p>최종 결제금액을 확인해주세요.</p>
          <article> 
            <article> 
              <p>총 금액</p>
              <p id="totalCostFC"></p>
            </article>
            <article> 
              <p>포인트 사용량</p>
              <p id="usePointFC"></p>
            </article>
            <article> 
              <p>적립 포인트</p>
              <p id="savePointFC"></p>
            </article>
          </article>
          <div></div>
          <article> 
            <p>최종 결제 금액</p>
            <article>
              <p id="lastCostFC1"></p>
              <p id="lastCostFC2"></p>
            </article>
          </article>
          <article> 
            <article id="btnBackFC">
              <article>
                <div></div>
              </article>
              <p>이전 화면</p>
            </article>
            <article id="btnNextFC">
              <p>결제하기</p>
              <article> 
                <div></div>
              </article>
            </article>
          </article>
        </section>
      </main>
      <footer> </footer>
    </section>
    <section id="pageCard"> 
      <main id="wrapPageCard"> 
        <section>
          <p>결제하기</p>
          <p>이미지와 같이 신용카드(IC카드)를 끝까지 넣어주세요.</p>
          <article> </article>
          <div> 
            <div> </div>
            <div></div>
            <div> </div>
          </div>
          <div> 
            <div> </div>
            <div> </div>
            <div></div>
          </div>
          <article> 
            <article id="btnCanclePC">
              <p>취소</p>
            </article>
            <article id="btnNextPC"> 
              <p>결제 완료</p>
              <article> 
                <div> </div>
              </article>
            </article>
          </article>
        </section>
      </main>
    </section>
    <section id="pageFinish"> 
      <header> </header>
      <main id="wrapPageFinish"> 
        <section>
          <p>결제 완료</p>
          <p>영수증을 확인하시고 카드를 꼭 회수하세요.</p>
          <div></div>
          <article>
            <p>주문번호</p>
            <article>
              <p id="pageFinishOrder1"></p>
              <p id="pageFinishOrder2"></p>
            </article>
          </article>
          <article> 
            <p id="btnPrintYes">영수증 출력</p>
            <p id="btnPrintNo">영수증 미출력</p>
          </article>
        </section>
      </main>
      <footer> </footer>
    </section>
    <section id="cardPopupArea">
      <article>
        <div>
          <p>결제를 취소하시겠습니까?</p>
        </div>
        <div>
          <p>아니요</p>
          <p>네    </p>
        </div>
      </article>
    </section>  
<% Member memberCount = (Member)request.getAttribute("memberCount"); %>
    <section id="hiddenData">
      <form method="post">
        <input id="hiddenId" type="text" name="id">
        <input id="hiddenNumber" type="text" name="number">
        <input id="hiddenPoint" type="text" name="point">
        <input id="hiddenDate" type="text" name="date">
        <input id="hiddenDay" type="text" name="day" value="<%=memberCount.getDayMax()%>">
        <input id="hiddenCount" type="text" name="count" value="<%=memberCount.getCountMax()%>">
        <input id="hiddenKeyCount" type="text" name="keyCount" value="1">
        <input id="hiddenKey" type="text" name="key">
        <input id="adminDataList" type="text" name="adminDataList">
        <input id="hiddenBtn" type="submit">
      </form>
    </section>
    <section id="pageRecipt"> 
      <main id="wrapPageRecipt">
        <section>
          <p>영수증</p>
          <article id="printRecipt">
            <p>PRINT</p>
          </article><i class="xi-close" id="closeRecipt"></i>
        </section>
        <section class="printAreaRecipt" id="printAreaRecipt">
          <!--==== 1-->
          <div></div>
          <!--==== 2-->
          <p>www.baskinrabbins.co.kr </p>
          <!--==== 3-->
          <p>주문번호 </p>
          <!--==== 4-->
          <p id="orderRecipt">999</p>
          <!--==== 5-->
          <div class="dotRecipt"> </div>
          <!--==== 6-->
          <p>라인컴퓨터아트학원</p>
          <!--==== 7-->
          <p>조대룡 선생님</p>
          <!--==== 8-->
          <p>김푸름 박경호 박준영 백지수 최은지</p>
          <!--==== 9-->
          <div class="dotRecipt"></div>
          <!--==== 10  시간 datetime-->
          <p id="timeRecipt">[ 정상 ] 2022-10-22 24:00:00</p>
          <!--==== 11-->
          <div class="dotRecipt"></div>
          <!--==== 12-->
          <article> 
            <p>제품명</p>
            <p>수량</p>
            <p>금액</p>
          </article>
          <!--==== 13-->
          <article> 
            <p>(할인내역)</p>
            <p>(할인금액)</p>
          </article>
          <!--==== 14-->
          <div class="dotRecipt"></div>
          <!--==== 15-->
          <article id="listRecipt">
            <article>
              <article>
                <p>001</p>
                <p>파인트</p>
              </article>
              <article>
                <p>1</p>
                <p>9,000</p>
              </article>
            </article>
          </article>
          <!--==== 16-->
          <div class="dotRecipt"></div>
          <!--==== 17-->
          <article>
            <p>과세금액</p>
            <!-- p 결제금액*0.9-->
            <p id="realPriceRecipt">7,200</p>
          </article>
          <!--==== 18-->
          <article>
            <p>부가세</p>
            <!-- p 결제금액*0.1-->
            <p id="taxPriceRecipt">800</p>
          </article>
          <!--==== 19-->
          <div class="dotRecipt"></div>
          <!--==== 20-->
          <article>
            <p>총매출액</p>
            <!-- p 금액-->
            <p id="totalPriceRecipt">5,000</p>
          </article>
          <!--==== 21-->
          <article> 
            <p>합계금액</p>
            <!-- p 금액-->
            <p id="totalPaymentRecipt">5,000</p>
          </article>
          <!--==== 22-->
          <article> 
            <p>받은금액</p>
            <!-- p 금액-->
            <p id="paymentPriceRecipt">5,000</p>
          </article>
          <!--==== 23-->
          <div class="dotRecipt"></div>
          <!--==== 24-->
          <article> 
            <p>[ 해피포인트 ]</p>
            <!-- p 사용 포인트-->
            <p id="usePointRecipt">3,000</p>
          </article>
          <!--==== 25-->
          <div class="dotRecipt"></div>
          <!--==== 26-->
          <article> 
            <p>[ 신용카드 ]</p>
            <!-- p LastPay-->
            <p id="lastPaymentRecipt">5,000</p>
          </article>
          <!--==== 27-->
          <div class="dotRecipt"></div>
          <!--==== 28-->
          <article>
            <article>
              <p>■ 해피포인트</p>
              <p>[ 승인번호 ]</p>
              <p>[ 적립/잔여포인트 ]</p>
            </article>
            <article>
              <!-- p 회원번호-->
              <p id="memberRecipt">010********</p>
              <!-- p 적립포인트/잔여포인트-->
              <p id="lastPointRecipt">30/1000</p>
            </article>
          </article>
          <!--==== 29-->
          <div class="dotRecipt"></div>
          <!--==== 30-->
          <div></div>
          <!--==== 31-->
          <div></div>
        </section>
      </main>
    </section>
    <section id="logoutPopupArea">
      <article>
        <div> </div>
        <p>이용시간을 연장하시겠습니까?</p>
        <div>
          <p id="viewCountLogout"></p>
          <p>뒤 로그아웃 됩니다</p>
        </div>
        <div>
          <p>아니요</p>
          <p>네</p>
        </div>
      </article>
    </section>
    <section id="pageAdmin">    
      <header id="wrapAdminHeader">
        <section> 
          <article>
            <div id="imgLogo"></div>
          </article>
          <article>
            <div></div>
            <div id="imgHomeInAdmin">
              <div></div>
            </div>
          </article>
        </section>
        <article id="adminTapTitle">
          <div>
            <div id="adminTab1"> 
              <p>일 매출</p>
            </div>
            <div id="adminTab2">
              <p>월 매출</p>
            </div>
            <div id="adminTab3">
              <p>매출 순위</p>
            </div>
          </div>
        </article>
      </header>
      <section id="adminMainPage">
        <!-- 1 -->
        <article>
          <article>
            <article>
              <p id="nowTimeAdmin1"></p>
              <p id="nowTimeAdmin2"></p>
            </article>
            <article> 
              <p class="nowTimeType"></p>
              <p class="nowTimeType"></p>
            </article>
            <p id="subTimeAdmin"></p>
          </article>
          <article id="viewTotalAdmin">
            <div>
              <p>매출액</p>
              <p id="totalMoneyAdmin">300,000,000원</p>
            </div>
            <div>
              <p>판매 수량</p>
              <p id="totalCountAdmin">300,000,000개</p>
            </div>
          </article>
          <div id="admin3DImg"></div>
        </article>
        <!-- 2-->
        <article id="adminTypeTitle"> 
          <div class="btnListActive" id="typeTab1">
            <p>아이스크림</p>
          </div>
          <div id="typeTab2">
            <p>커피</p>
          </div>
          <div id="typeTab3">
            <p>케이크</p>
          </div>
        </article>
        <!-- 3-->
        <article id="mainAdminWrap">
          <div id="listTitleAdmin">
            <div> 
              <p>제품명</p>
            </div>
            <div> 
              <p>수량</p>
            </div>
          </div>
          <div id="listDescAdmin">
            <article> 
              <div> 
                <p>파인트 (3가지 맛)</p>
              </div>
              <div> 
                <p>2</p>
              </div>
            </article>
          </div>
        </article>
      </section>
    </section>
    <section id="adminInputNum"> 
      <header> </header>
      <main id="wrapAdminInputNum"> 
        <section>
          <p>비밀번호를 입력해 주세요</p>
          <p>관리자 패스워드를 일치하게 입력해 주세요.</p>
          <article id="inputAdmin">
            <p></p>
            <p>샘플) 2022</p>
          </article>
          <article id="btnKeypadAdmin">
            <div> 
              <p>1</p>
            </div>
            <div> 
              <p>2</p>
            </div>
            <div> 
              <p>3</p>
            </div>
            <div> 
              <p>4</p>
            </div>
            <div> 
              <p>5</p>
            </div>
            <div> 
              <p>6</p>
            </div>
            <div> 
              <p>7</p>
            </div>
            <div> 
              <p>8</p>
            </div>
            <div> 
              <p>9</p>
            </div>
            <div> 
              <p>전체 지움</p>
            </div>
            <div> 
              <p>0</p>
            </div>
            <div> 
              <div></div>
            </div>
          </article>
          <article> 
            <article id="btnBackAdmin">
              <article>
                <div></div>
              </article>
              <p>이전 화면</p>
            </article>
            <article id="btnNextAdmin">
              <p>입력 완료</p>
              <article> 
                <div> </div>
              </article>
            </article>
          </article>
        </section>
      </main>
      <footer> </footer>
    </section>
  </body>
</html>