<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>
    <link rel="icon" type="image/svg+xml" href="${CP}/resources/favicon.svg?v=20260626n">
    <style>
        body {
            min-height: 100%;
            padding-top: 120px;
            text-align: center;
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

        .account-area {
            width: 440px;
            max-width: calc(100% - 48px);
            margin: 0 auto;
            padding: 36px 24px;
            border: 10px solid #EDF1D6;
            border-radius: 10px;
            box-sizing: border-box;
        }

        .account-title {
            margin-bottom: 8px;
            font-family: 'Hahmlet-Regular';
            font-size: 30px;
            font-weight: 900;
        }

        .account-desc {
            margin-bottom: 24px;
            font-family: 'Hahmlet-Regular';
            font-size: 15px;
            line-height: 1.7;
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
            cursor: pointer;
        }

        .w-btn-danger-outline {
            background-color: #ffffff;
            border: 1px solid #d9534f;
            color: #b02a26;
        }

        .w-btn-danger-outline:hover {
            background-color: #d9534f;
            color: #ffffff;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp" />

<div class="account-area">
    <div class="account-title">계정 관리</div>
    <div class="account-desc">
        회원 정보와 이전 운세 기록을 삭제하려면<br>
        회원 탈퇴를 진행하세요.
    </div>
    <button class="w-btn-outline w-btn-danger-outline" type="button"
            onclick="deleteAccount()">
        회원 탈퇴
    </button>
</div>

<script>
    function deleteAccount() {
        if (confirm("정말 탈퇴하시겠습니까? 탈퇴하면 회원 정보와 이전 운세 기록이 삭제됩니다.") == false) {
            return;
        }

        $.ajax({
            type: "POST",
            url: "${CP}/ELCARO/deleteAccount.do",
            dataType: "json",
            success: function(data) {
                alert(data.msgContents);
                if (data.msgId == "30") {
                    window.location.href = "${CP}/ELCARO/loginView.do";
                }
            },
            error: function() {
                alert("회원 탈퇴 처리 중 오류가 발생했습니다.");
            }
        });
    }
</script>
</body>
</html>
