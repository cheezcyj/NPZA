<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="author"  content="mmgom">
    <style>
        * {
            text-align: center;
        }


        .location1 {
            text-align: center;
            font-size: 45px;
            font-family: 'Hahmlet-Regular';
        }

        .location2 {
            text-align: center;
            font-size: 30px;
            margin: 25px 120px 25px 120px;
        }

        .location3 {
            text-align: right;
            font-size: 15px;
            margin : 100px 35%;
        }

        @font-face {
            font-family: 'NeoDunggeunmo';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.3/NeoDunggeunmo.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'Hahmlet-Regular';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/Hahmlet-Regular.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        .backcolor {
            background-color : #81CACF;
            background-position : center;
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
            border: 3px solid #fce205;
        }

        .w-btn-yellow-outline {
            background-color: #fce205;
            border-color: #fce205;
        }

    </style>
    <title>NEPALZZAYA 운세사이트</title>
</head>
<body>
<h1 class="location1">저희 회원이신가요?</h1>
<br>
<br>
<div>
<center>
    <img src="/Oracle/image/select.PNG" alt="선택의 시간" width="30%">
    <div>
        <input class="location2 w-btn-outline w-btn-yellow-outline" type="button" value="회원 로그인" onclick="window.open('Ne07_Login.html');">
        <input class="location2 w-btn-outline w-btn-yellow-outline" type="button" value="비회원으로 하기" onclick="window.open('Ne03_NotMember.html');">
</center>
</div>
<footer>
    <p class = "location3">NE PAL ZZA YA</p>
</footer>
</body>
</html>