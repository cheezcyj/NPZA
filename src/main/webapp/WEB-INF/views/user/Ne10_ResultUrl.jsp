<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="JH">
    <link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/resources/favicon.svg?v=20260626n">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/npzy-font.css">
    <style>
        @font-face {
            font-family: 'Cafe24Dongdong';
            src:
                    url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Dongdong.woff')
                    format('woff');
            font-weight: normal;
            font-style: normal;
        }

        @import
        url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Pen+Script&display=swap')
        ;

        body {
            margin: 0;
            padding-top: 96px;
            padding-bottom: 110px;
        }

        fieldset {
            border: 100px;
            text-align: center;
            display: flex;
            justify-content: center;
        }

        .record-box {
            width: 520px;
            max-width: calc(100vw - 48px);
            box-sizing: border-box;
        }

        .record-table-field {
            margin-top: 36px;
        }

        h1 {
            font-size: 50px;
            color: black;
            text-align: center;
            background-color: #FFD500;
            border: none;
            height: auto;
            width: 520px;
            max-width: calc(100vw - 48px);
            box-sizing: border-box;
            background-position: center;
            border-radius: 5px;
            display: inline-block;
            font-family: Cafe24Dongdong;
            padding: 15px 25px;
        }

        table {
            border: 1px solid #D3D3D3;
            border-collapse: collapse;
            width: 520px;
            max-width: calc(100vw - 48px);
        }

        td, th {
            font-family: Cafe24Dongdong;
            padding: 14px 24px;
            text-align: center;
            border: 1px solid #D3D3D3;
        }

        .record-title {
            background-color: #F5D061;
            color: #282F44;
            font-size: 24px;
        }

        .record-link {
            color: #282F44;
            font-size: 18px;
            text-decoration: none;
        }

        .record-link:hover {
            color: #07689F;
            text-decoration: underline;
        }

        .pagination .page_link {
            text-align: center;
        }

        #pagination {
            margin-top: 18px;
            margin-bottom: 8px;
        }

        .config {
            background-color: #FFD500;
            border: none;
            color: black;
            padding: 15px 24px;
            width: 320px;
            max-width: calc(100vw - 48px);
            box-sizing: border-box;
            white-space: nowrap;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            margin: 4px 2px;
        }

        .page_nation{
            display:block;
            margin:0 3px;
            float:left;
            border:1px solid #e6e6e6;
            width:28px;
            height:28px;
            line-height:28px;
            text-align:center;
            background-color:#fff;
            font-size:13px;
            color:#999999;
            text-decoration:none;
        }

    </style>
    <title>NE PAL ZZA YA</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div>
    <fieldset>
        <h1 class="record-box">
            <span id="username" style="font-weight: bold;"></span>님
            <span style="font-weight: lighter;"> 어서오세요 </span>
            
        </h1>
    </fieldset>
</div>

<div>
    <fieldset class="record-table-field">
        <table id="data-table" class="record-box" border="1">
            <tr>
                <th class="record-title">
                    나의 운세 검사 기록
                </th>
            </tr>
            <c:forEach var="vo" items="${list}">
                <tr>
                    <td>
                        <a class="record-link" href="${vo.url}" target="_blank">
                            본 날짜: ${vo.result_date}
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </fieldset>
</div>

<div id="pagination" style="display: flex; justify-content: center;">
    <!-- 페이지 번호를 동적으로 생성할 영역 -->
</div>
<div
        style="text-align: center; margin-top: 36px;">
    <button class="config" type="button"
            onclick="location.href='/ehr//ELCARO/result.do'">
        <!-- 운세 결과 경로 -->
        오늘의 운세 보러가기
    </button>
</div>

<script>
    var nickname = "${sessionScope.niName}";

    // HTML 요소에 동적으로 이름 삽입
    var usernameElement = document.getElementById("username");
    usernameElement.textContent = nickname;

    // 데이터의 존재 여부에 따라 표의 가시성을 조절합니다.
    const dataTable = document.getElementById("data-table");
    const numberOfColumnsToShow = 11; // 표에 보여줄 열 개수
    const hasData = true; // 데이터의 존재 여부 (실제 데이터 확인 로직에 따라 대체해야 함)

    if (hasData) {
        dataTable.style.display = "table";
    } else {
        dataTable.style.display = "none";
    }

    // 페이징 관련 변수 설정
    const dataPerPage = 11; // 페이지당 보여줄 데이터 수
    const totalDataCount = ${list.size()}; // 전체 데이터 수
    const totalPages = Math.ceil(totalDataCount / dataPerPage); // 전체 페이지 수

    // 페이지 번호를 클릭했을 때 해당 페이지의 데이터를 표시하는 함수
    function showDataForPage(page) {
        const startIndex = (page - 1) * dataPerPage;
        const endIndex = startIndex + dataPerPage;

        const rows = dataTable.querySelectorAll("tr");
        for (let i = 0; i < rows.length; i++) {
            const row = rows[i];
            if (i === 0) {
                row.style.display = "table-row"; // 첫 번째 행은 항상 표시
            } else if ((i - 1) >= startIndex && (i - 1) < endIndex) {
                row.style.display = "table-row";
            } else {
                row.style.display = "none";
            }
        }
    }

    // 페이지 번호를 동적으로 생성하는 함수
    function createPagination() {
        const pagination = document.getElementById("pagination");
        pagination.innerHTML = "";

        for (let i = 1; i <= totalPages; i++) {
            const button = document.createElement("button");
            button.textContent = i;
            button.type = "button";
            button.classList.add("page_nation"); // 클래스 추가

            button.addEventListener("click", function() {
                showDataForPage(i);
            });

            pagination.appendChild(button);
        }
    }
    
    

    // 초기 페이지 설정
    showDataForPage(1);
    createPagination();
</script>
</body>
</html>
