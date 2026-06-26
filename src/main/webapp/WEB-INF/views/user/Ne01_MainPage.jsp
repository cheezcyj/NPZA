<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}" />
<c:choose>
    <c:when test="${not empty sessionScope.user}">
        <c:set var="yesUrl" value="${CP}/ELCARO/myPage.do" />
    </c:when>
    <c:otherwise>
        <c:set var="yesUrl" value="${CP}/resources/Ne02_QuestionMemeber.html" />
    </c:otherwise>
</c:choose>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" type="image/svg+xml" href="${CP}/resources/favicon.svg?v=20260626n">
    <style id="fullpage_styles">
        @font-face {
            font-family: 'Cafe24ClassicType-Regular';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-2@1.0/Cafe24ClassicType-Regular.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'NeoDunggeunmo';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.3/NeoDunggeunmo.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        body {
            padding-top: 86px;
        }

        .NAEPALZZAYA {
            font-family: 'Cafe24ClassicType-Regular';
            background-color: #FFD500;
            border: none;
            color: black;
            padding: 30px 160px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 32px;
            margin: 4px 2px;
            border-radius: 5px;
        }

        .MBTI {
            font-family: 'NeoDunggeunmo';
            font-size: 32px;
            padding: 20px;
        }

        .main-button {
            font-family: 'NeoDunggeunmo';
            background-color: #FFD500;
            border: none;
            color: black;
            padding: 15px 128px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            border-radius: 5px;
            cursor: pointer;
        }

        .main-button:hover {
            background-color: #E7B800;
        }

        .main-actions {
            text-align: center;
            margin-bottom: 90px;
        }
    </style>
</head>

<body>
<jsp:include page="header.jsp" />
<div style="text-align: center;">
    <button class="NAEPALZZAYA" type="button">NE PAL ZZA YA</button>
</div>
<div>&nbsp;</div>
<div style="text-align: center;">
    <img src="${CP}/resources/images/daemoon.png" alt="대문 이미지" />
</div>
<div class="MBTI" style="text-align: center;">당신은 MBTI를 아시나요?</div>
<div>&nbsp;</div>
<div class="main-actions">
    <button class="main-button" type="button"
            onclick="location.href='${yesUrl}'">
        YES
    </button>
    <button class="main-button" type="button"
            onclick="location.href='https://answer.moaform.com/answers/EnPBng'">
        NO
    </button>
</div>
</body>
</html>
