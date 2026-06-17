<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <jsp:include page="header.jsp" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="user">
    <style>
        * {
            text-align: center;
        }
        @font-face {
            font-family: 'EF_hyunydororong';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/EF_hyunydororong.woff2') format('woff2');
            font-weight: 900;
            font-style: normal;
        }
         @font-face {
           font-family: 'Cafe24Dongdong';
           src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Dongdong.woff') format('woff');
           font-weight: 800;
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
        }
        .box {
            margin: 20px auto;
            padding: 20px;
            border: 10px solid #EDF1D6;
            width: 400px;
            border-radius: 10px;
            box-sizing: content-box;
            font-family: 'Cafe24Dongdong';
            font-size: 200%;
        }
        .sns-icons {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .sns-icon {
            display: inline-block;
            width: 70px;
            height: 70px;
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
            margin: 10px;
            cursor: pointer;
        }
        .sns-icon.facebook {
            background-image: url('../resources/images/share/facebook.png');
        }
        .sns-icon.twitter {
            background-image: url('../resources/images/share/twitter.png');
        }
        .sns-icon.link {
            background-image: url('../resources/images/share/link.png');
        }
        .sns-icon.naver {
            background-image: url('../resources/images/share/naver.png');
            cursor: pointer;
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

    </style>
    <title>10번 페이지</title>
</head>
<body>
<br><br><br>
<div class="wrapper">
    <div class="box">
        결과를 공유해보세요~!
    </div>
</div>


<!-- 페이스북 SDK 스크립트 -->
<div id="fb-root"></div>
<script>
    window.fbAsyncInit = function() {
        FB.init({
            appId: '1285820169038891',
            xfbml: true,
            version: 'v17.0'
        });
    };

    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v17.0&appId=1285820169038891&autoLogAppEvents=1";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>

<script>

    var desiredURL = "${list[0].url}"; // 원하는 URL로 변경

    function shareOnNaver() {
        var url = encodeURI(encodeURIComponent(desiredURL));
        var title = encodeURI('오늘의 운세');
        var shareLink = "https://share.naver.com/web/shareView?url=" + url
            + "&title=" + title;
        document.location = shareLink;
    }

    function shareOnTwitter() {
        var url = encodeURIComponent(desiredURL);
        var text = encodeURIComponent('오늘의 운세는');
        window.open('https://twitter.com/intent/tweet?url=' + url + '&text=' + text, '_blank');
    }

    function copyToClipboard() {
        var url = '오늘의 운세는 ' + desiredURL;
        navigator.clipboard.writeText(url)
            .then(function() {
                alert('오늘의 운세 결과가 클립보드에 복사되었습니다.');
            })
            .catch(function() {
                alert('오늘의 운세 결과를 복사하는데 실패했습니다.');
            });
    }

    // 페이스북 공유 버튼에 적용(운세 결과 페이지의 URL을 동적으로 설정하는 함수)
    function shareOnFacebook(url) {
        var facebookButton = document.getElementById('facebookButton');
        var shareLink = 'https://www.facebook.com/sharer/sharer.php?u=' + encodeURIComponent(url) + '&amp;src=sdkpreparse';
        facebookButton.setAttribute('data-href', url);
        facebookButton.querySelector('a').setAttribute('href', shareLink);
    }

</script>

<!-- 페이스북 공유 버튼 -->
<span data-href="" id="facebookButton">
    <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">
      <div class="sns-icon facebook" onclick="shareOnFacebook(desiredURL)"></div>
    </a>
  </span>

<!-- 네이버 공유 버튼 -->
<span>
        <script type="text/javascript">
            new ShareNaver.makeButton({
                "type" : "f",
                "title" : "오늘의 운세",
                "url" : desiredURL,
                "color" : "1",
                "count" : "1",
                "customButton" : ".sns-icon.naver"
            });
        </script>
    </span>
<a href="#" onclick="shareOnNaver()" >
    <div class="sns-icon naver" ></div>
</a>
<!-- 트위터 공유 버튼 -->
<a href="#" onclick="shareOnTwitter()">
    <div class="sns-icon twitter"></div>
</a>
<!-- 클립보드 공유 버튼 -->
<a href="#" onclick="copyToClipboard()">
    <div class="sns-icon link"></div>
</a>

    <div style="text-align: center; margin-top: 20px;">
    <a href = "/ehr/ELCARO/myPage.do">
        <button id="retry-button" class="w-btn-outline w-btn-yellow-outline">다시하기</button>
    </a>
    </div>


</body>
</html>