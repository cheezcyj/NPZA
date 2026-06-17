<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="header.jsp" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>NotMemberResultPage</title>
        <style>
       body {
            background-color: #EDF1D6;
            margin-top: 100px;
            font-family: 'Trebuchet MS', serif;
            line-height: 1.6;
            text-align: center;
        }
        .container {
            text-align: left;     
            width: 500px;
            margin: 0 auto;
            max-width: 70%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        /*탭 스타일*/
        ul.tabs {
            margin: 0;
            padding: 13px;
            list-style: none;
            display: flex;
            justify-content: center;
            width: 150%;
            margin-bottom: 0px;
        }

        /*탭 목록*/
        ul.tabs li {
            flex: 1;
            text-align: center;
            padding: 10px;
            border-radius: 4px;
            font-family: 'Cafe24Dongdong';
            font-size: 24px;
            font-weight: bold;
            background-color: #F5D061;
            color: #282F44;
            cursor: pointer;
        }

        @font-face {
            font-family: 'Cafe24Dongdong';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Dongdong.woff') format('woff');
            font-weight: 800;
            font-style: normal;
        }

        ul.tabs li.current {
            background: #E6AF2E;
            color: #A2D5F2;
        }

        /*탭 내용*/
        .tab-content {
            display: flex;
            justify-content: center;
            border-radius: 4px;
            padding: 15px;
            width: 700px;
            height: auto;
            margin-top: 0px;
            font-family: 'Cafe24Dongdong';
            font-size: 24px;
            background: #E6AF2E;
        }

        @font-face {
            font-family: 'Cafe24Dongdong';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Dongdong.woff') format('woff');
            font-weight: 800;
            font-style: normal;
        }

        h1, h2{
            display: inline;
            text-align: center;
        }
        /*닉네임*/
        h1 {
            font-family: 'Cafe24Dongdong';
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        @font-face {
            font-family: 'Cafe24Dongdong';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Dongdong.woff') format('woff');
            font-weight: 800;
            font-style: normal;
        }
        /*키워드, 님의 운세는*/
        h2 {
            font-family: 'Cafe24Dongdong';
            font-size: 30px;
            font-weight: normal;
            margin-bottom: 10px;
        }
        @font-face {
            font-family: 'Cafe24Dongdong';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Dongdong.woff') format('woff');
            font-weight: 300;
            font-style: normal;
        }

        /* 키워드 박스 */
        #keywords {
            background-color: #07689F;
            color: #F5D061;
            width: 500px;
            border: 1px solid #A2D5F2;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
            display: inline-block;
            align-items: center;
            justify-content: center;
        }

        /* 닉네임 박스 */
        #nickname {

            background-color: #07689F;
            color: #F5D061;
            width: 500px;
            border: 1px solid #A2D5F2;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
            display: inline-block;
            align-items: center;
            justify-content: center;
        }

        /* 다시하기 공유하기 버튼 */
        .button {
            font-family: 'NeoDunggeunmo';
            font-size: 24px;
            border-radius: 12px;
            padding: 20px 30px;
            border: 2px;
            margin: 5px;
            background-color: #F5D061;
            color: #222;
            cursor: pointer;
            background-clip: padding-box;
        }
        .w-btn-outline {
            position: relative;
            padding: 15px 30px;
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            font-family: 'NeoDunggeunmo';
            text-decoration: none;
            font-weight: 600;
            transition: 0.25s;
            border:#F5D061;
        }

        .w-btn-yellow-outline {
            background-color: #F5D061;
            border-color: #ffffff;
        }

        .w-btn-yellow-outline:hover {
            background-color: #D3D3D3;
            color: #000000;
        }
        @font-face {
            font-family: 'NeoDunggeunmo';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.3/NeoDunggeunmo.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<!-- 햄버거버튼 -->
  <div id="nickname">
    <h1 id="user-nickname"></h1>
    <h2>님의 운세는</h2>
    <script>
        // localStorage에서 닉네임을 가져와서 출력합니다.
        const nickname = localStorage.getItem('nickname');
        const nicknameElement = document.getElementById('user-nickname');
        nicknameElement.textContent = nickname;
        </script>
  </div>
  <br>
<div class="box" style="margin-bottom: 0;">
    <p>
     <img style="display: block; margin: 0 auto;"
          src="${listnm[1].nmAni}" alt="${mbti}" width="100" height="50" />
     <script>
       const mbti = localStorage.getItem('mbti');
       const mbtiElement = document.getElementById('mbti');
       mbtiElement.textContent = mbti;
     </script>        
    </p> 
</div><br>
<div class="box" style="margin-top: 0;">
    <p>
        <img style="display: block; margin: 0 auto;"
             src="${listnm[0].nmAni}" alt="${ani}" width="150" height="150" />
        <script>
          const ani = localStorage.getItem('ani');
          const aniElement = document.getElementById('ani');
          aniElement.textContent = ani;       
        </script>             
    </p>
</div>
<div class="container">
    <ul class="tabs">
        <li class="tab-link" data-tab="tab-1">고백운</li>
        <li class="tab-link" data-tab="tab-2">데이트운</li>
        <li class="tab-link" data-tab="tab-3">상사운</li>
        <li class="tab-link" data-tab="tab-4">퇴사운</li>
        <li class="tab-link" data-tab="tab-5">투자운</li>
    </ul>
    <div id="tab-1" class="tab-content">
        <p>${list[0].luck}</p>
    </div>
    <div id="tab-2" class="tab-content">
        <p>${list[1].luck}</p>
    </div>
    <div id="tab-3" class="tab-content">
        <p>${list[2].luck}</p>
    </div>
    <div id="tab-4" class="tab-content">
        <p>${list[3].luck}</p>
    </div>
    <div id="tab-5" class="tab-content">
        <p>${list[4].luck}</p>
    </div>
</div>
<div style="text-align: center; margin-top: 20px;">

        <button id="retry-button" class="button w-btn-outline w-btn-yellow-outline" onclick="location.href='/ehr/resources/Ne02_QuestionMemeber.html'">다시하기</button>

</div>
<script>
$(document).ready(function() {
    $('.tab-content').hide();
    $('ul.tabs li').click(function() {
        var tab_id = $(this).attr('data-tab');
        $('ul.tabs li').removeClass('current');
        $('.tab-content').hide();
        $(this).addClass('current');
        $("#" + tab_id).show();
    });
    // Retry button click event handler
    $('#retry-button').click(function() {
      /*  window.location.href = "/ehr/ELCARO/myPage.do"; */
    });
    // Share button click event handler
    $('#share-button').click(function() {
        // Handle share functionality
    });
});

$(document).ready(function() {
    // ...

    $('.tab-content').click(function() {
        var tab_id = $(this).attr('data-tab');
        $('.tab-content').removeClass('current');
        $('.tab-content').hide();
        $(this).addClass('current');
        $("#" + tab_id).show();

        adjustContainerWidth(); // 탭을 클릭할 때마다 너비 조정
    });

    // ...
});
</script>
</body>
</html>