<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="user">

    <style>
       
        *{
            text-align: center;
            }
        
        body{
          height: 100%;
        }
        
        @font-face {
           font-family: 'Cafe24Dongdong';
           src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Dongdong.woff') format('woff');
           font-weight: 800;
           font-style: normal;
        }
        @font-face {
          font-family: 'EF_hyunydororong';
          src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/EF_hyunydororong.woff2') format('woff2');
          font-weight: 900;
          font-style: normal;
      }

        @font-face {
            font-family: 'Hahmlet-Regular';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/Hahmlet-Regular.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }
        @font-face {
            font-family: 'NeoDunggeunmo';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.3/NeoDunggeunmo.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
         .wrapper {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            margin-top: 80px;
        }
        .box {
            font-family: 'Cafe24Dongdong';
            margin: 20px auto;
            padding: 20px;
            border: 10px solid #EDF1D6;
            width: 400px;
            border-radius: 10px;
            box-sizing: content-box;
            box-sizing: content-box;
            font-size: 170%;
        }
        p {
            font-family: 'Hahmlet-Regular';
            font-size: 200%;
            font-weight: 900;
        }

        button {
            margin: 20px;
            margin-bottom: 150px;
            font-family: 'NeoDunggeunmo';
            
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

        footer {
            text-align: right;
            font-size: xx-small;
        } 
    </style>

</head>
<body>
<jsp:include page="header.jsp" />
<div class="wrapper">
    <div class="box">
        <span class="nickname" id="username"></span>
        <span class="hello">님 환영합니다!</span>
        </div>
</div>
<div>
    <p>Curious about your luck?</p>
    <p>Check your luck!</p>
</div>
<button class="w-btn-outline w-btn-yellow-outline" type="button"
        onclick="location.href='/ehr/ELCARO/resultSelect.do'">
    이전 운세 확인
</button>
<button class="w-btn-outline w-btn-yellow-outline" type="button"
        onclick="location.href='/ehr/ELCARO/result.do'">
    오늘 운세 확인
</button>
<!-- <div>
    <footer>NE PAL ZZA YA(NPZY)</footer>
</div> -->


<script>

    
    
    // 데이터베이스에서 이름 가져오기
    var username = "${sessionScope.niName}"; // 예시 이름, 실제로는 데이터베이스에서 가져온 값을 사용하세요.

    // HTML 요소에 동적으로 이름 삽입
    var usernameElement = document.getElementById("username");
    usernameElement.textContent = username;
    
    
</script>

</body>

</html>