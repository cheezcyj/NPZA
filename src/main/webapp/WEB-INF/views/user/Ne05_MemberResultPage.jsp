<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>tab</title>
    <style>
        /*햄버거 버튼*/
        body {
            background-color: #333;
            width: 500px;
            margin: 30px auto;
        }
        .menu-trigger {
            margin-right: 70px;
            margin-bottom: 50px;
        }
        .menu-trigger,
        .menu-trigger span {
            display: inline-block;
            transition: all .4s;
            box-sizing: border-box;
        }

        .menu-trigger {
            position: absolute;
            top: 20px;
            right: 5px;
            width: 35px;
            height: 30px;
        }

        .menu-trigger span {
            position: absolute;
            left: 0;
            width: 100%;
            height: 4px;
            background-color: #fff;
            border-radius: 4px;
        }

        .menu-trigger span:nth-of-type(1) {
            top: 0;
        }

        .menu-trigger span:nth-of-type(2) {
            top: 13px;
        }

        .menu-trigger span:nth-of-type(3) {
            bottom: 0;
        }
        /*햄버거 버튼 end*/

        body {
            background-color: #EDF1D6;
            margin-top: 100px;
            font-family: 'Trebuchet MS', serif;
            line-height: 1.6;
            text-align: center;
        }
        .container {
            text-align: center;
            width: 500px;
            margin: 0 auto;
        }

        /*탭 스타일*/
        ul.tabs {
            margin: 0;
            padding: 13px;
            list-style: none;
            display: flex;
            justify-content: center;
            width: 100%;
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
            border-radius: 4px;
            padding: 15px;
            width: 100%;
            height: 200px;
            margin-top: 0px;
            font-family: 'Cafe24Dongdong';
            font-size: 24px;
            background: #E6AF2E;
            display: flex;
            justify-content: center;
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
<a class="menu-trigger" href="#">
    <span></span>
    <span></span>
    <span></span>
</a>
<div id= "keywords">
    <h2>낙천적이고 감성적인 설명충 원숭이</h2>
</div><br>
<div id= "nickname">
    <h1>"닉네임"</h1><h2>님의 운세는</h2>
</div><br>
<div class="box" style="margin-bottom: 0;">
    <p>
        <img style="display: block; margin: 0 auto;"
             src="/WEB_ME/Proj/images/esfp.png" alt="esfp" width="300" height="150" />
    </p>
</div><br>
<div class="box" style="margin-top: 0;">
    <p>
        <img style="display: block; margin: 0 auto;"
             src="/WEB_ME/Proj/images/원숭이_ESFP_ESFJ_누끼.png" alt="monkey" width="300" height="300" />
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
        <p>고백운</p>
    </div>
    <div id="tab-2" class="tab-content">
        <p>데이트운</p>
    </div>
    <div id="tab-3" class="tab-content">
        <p>상사운</p>
    </div>
    <div id="tab-4" class="tab-content">
        <p>퇴사운</p>
    </div>
    <div id="tab-5" class="tab-content">
        <p>퇴사운</p>
    </div>
</div>
<div style="text-align: center; margin-top: 20px;">
    <a href = "Ne03_NotMember.html">
        <button id="retry-button" class="button">다시하기</button>
    </a>
    <a href = "Ne11_SharePage.html">
        <button id="share-button" class="button">공유하기</button>
    </a>
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
            // Handle retry functionality
        });
        // Share button click event handler
        $('#share-button').click(function() {
            // Handle share functionality
        });
    });
</script>
</body>
</html>