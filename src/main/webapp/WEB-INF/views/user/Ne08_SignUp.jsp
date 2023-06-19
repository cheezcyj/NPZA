<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="mmgom">

    <style>
        .container {
            max-width: 400px;
            margin: auto;
            padding: 200px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .formGroup {
            font-size: 25px;
            display: flex;
            align-items: center;
            font-family: 'Cafe24Dongdong';
            margin : 10px;
        }

        .formLabelId {
            font-size: 25px;
            width: 100px;
            text-align: center;
            margin: 0px 50px;
        }

        .formLabel {
            font-size: 25px;
            width: 150px;
            text-align: center;
            margin: 10px;
        }

        .formLabelGender {
            font-size: 25px;
            width: 110px;
            text-align: center;
            margin: 10px;
        }

        .inputField {
            font-size: 20px;
            text-align : center;
            width: 350px;
            font-family: 'Cafe24Dongdong';
        }

        .inputFieldId {
            font-size: 20px;
            text-align : center;
            width: 450px;
            font-family: 'Cafe24Dongdong';
            margin : 0px 30px 0px 0px;
        }

        .inputFieldPass {
            font-size: 20px;
            text-align : center;
            width: 350px;
        }

        .submitButtonJoongbok {
            font-family: 'NeoDunggeunmo';
            font-size : 20px;
            margin: 10px;
            display: block;
        }

        .submitButtonMember {
            font-family: 'NeoDunggeunmo';
            font-size : 25px;
            margin: auto;
            display: block;

            background-color: #fce205;
            border-color: #fce205;
            border-radius: 25px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            border: 10px solid #fce205;
        }

        .textCenter {
            text-align: center;
        }

        @font-face {
            font-family: 'Cafe24Dongdong';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Dongdong.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'NeoDunggeunmo';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.3/NeoDunggeunmo.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }



    </style>
    <title>NEPALZZAYA 운세사이트</title>
</head>

<body class="container">
<div class="formGroup">
    <label for="user-id" class="formLabelId" >ID</label>
    <input type="text" id="user-id" placeholder="ID를 입력해주세요" class="inputFieldId" maxlength="15">
    <input type="submit" value="중복 검사" class="submitButtonJoongbok" onclick="alert('메시지 박스 입니다');">
</div>
<div class="formGroup">
    <label for="user-nick" class="formLabel">닉네임</label>
    <input type="text" id="user-nick" placeholder="닉네임을 입력해주세요" class="inputField" maxlength="15">
</div>
<div class="formGroup">
    <label for="user-password" class="formLabel">PW 설정</label>
    <input type="password" id="user-password" class="inputFieldPass" maxlength="20">
</div>
<div class="formGroup">
    <label for="check-password" class="formLabel">PW 확인</label>
    <input type="password" id="check-password" class="inputFieldPass" maxlength="20">
</div>
<div class="formGroup">
    <label for="gender" class="formLabelGender">성별</label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="radio" name="gender" value="M" id="Man">
    <label for="Man">M</label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="radio" name="gender" value="F" id="Female">
    <label for="Female">F</label>
</div>
<div class="formGroup">
    <label for="MBTI" class="formLabel">MBTI</label>
    <select id="MBTI" class="inputField">
        <option value="MBTI를 입력해주세요">MBTI를 입력해주세요</option>
        <option value="ISTJ">ISTJ</option>
        <option value="ISFJ">ISFJ</option>
        <option value="INFJ">INFJ</option>
        <option value="INTJ">INTJ</option>
        <option value="ISTP">ISTP</option>
        <option value="ISFP">ISFP</option>
        <option value="INFP">INFP</option>
        <option value="INTP">INTP</option>
        <option value="ESTP">ESTP</option>
        <option value="ESFP">ESFP</option>
        <option value="ENFP">ENFP</option>
        <option value="ENTP">ENTP</option>
        <option value="ESTJ">ESTJ</option>
        <option value="ESFJ">ESFJ</option>
        <option value="ENFJ">ENFJ</option>
        <option value="ENTJ">ENTJ</option>
    </select>
</div>
<div class="formGroup">
    <label for="zodiac-sign" class="formLabel">띠</label>
    <select id="zodiac-sign" class="inputField">
        <option value="zodiac">띠를 선택해주세요</option>
        <option value="zodiac_1">쥐</option>
        <option value="zodiac_2">소</option>
        <option value="zodiac_3">호랑이</option>
        <option value="zodiac_4">토끼</option>
        <option value="zodiac_5">용</option>
        <option value="zodiac_6">뱀</option>
        <option value="zodiac_7">말</option>
        <option value="zodiac_8">양</option>
        <option value="zodiac_9">원숭이</option>
        <option value="zodiac_10">닭</option>
        <option value="zodiac_11">개</option>
        <option value="zodiac_12">돼지</option>
    </select>
</div>
<br>
<input type="button" value="회원 가입" class="submitButtonMember" onclick="window.open('Ne07_Login.html');">
</body>
</html>