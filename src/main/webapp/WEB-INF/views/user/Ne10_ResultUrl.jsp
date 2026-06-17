<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="JH">
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

        fieldset {
            border: 100px;
            text-align: center;
            display: flex;
            justify-content: center;
        }

        h1 {
            font-size: 50px;
            color: black;
            text-align: center;
            background-color: #FFD500;
            border: none;
            height: auto;
            width: auto;
            background-position: center;
            border-radius: 5px;
            display: inline-block;
            font-family: Cafe24Dongdong;
            padding: 15px 25px;
        }

        table {
            border: 1px;
            border-collapse: collapse;
        }

        td, th {
            font-family: Cafe24Dongdong;
        }

        .pagination .page_link {
            text-align: center;
        }

        .config {
            background-color: #FFD500;
            border: none;
            color: black;
            padding: 15px 128px;
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
    <title>NAE PAL ZZA YA</title>
</head>
<body>
<div>
    <fieldset>
        <h1>
            <span id="username" style="font-weight: bold;"></span>님
            <span style="font-weight: lighter;"> 어서오세요 </span>
            
        </h1>
    </fieldset>
</div>

<div>
    <fieldset>
        <table id="data-table" border="1">
            <tr>
                <td><strong>MBTI</strong></td>
                <td><strong>검사날짜</strong></td>
                <td><strong>URL</strong></td>
            </tr>
            <c:forEach var="vo" items="${list}">
                <tr>
                    <td>${vo.mbti_type}</td>
                    <td>${vo.result_date}</td>
                    <td><a href="${vo.url}" target="_blank">${vo.url}</a></td>
                </tr>
            </c:forEach>
        </table>
    </fieldset>
</div>

<div id="pagination" style="display: flex; justify-content: center;">
    <!-- 페이지 번호를 동적으로 생성할 영역 -->
</div>
<div
        style="text-align: center; position: fixed; bottom: 20px; left: 0; right: 0;">
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
            } else if (i >= startIndex && i < endIndex) {
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
    
    

 // URL을 축약하여 표시하는 함수
    function shortenUrl(url) {
        const maxUrlLength = 20;
        if (url.length > maxUrlLength) {
            return url.slice(0, maxUrlLength) + "...";
        }
        return url;
    }

    // URL 행 데이터를 축약하여 표시하는 함수
    function shortenUrlRowData() {
        const urlCells = dataTable.querySelectorAll("td:nth-child(3) a"); // URL이 표시될 셀의 선택자

        urlCells.forEach(function(cell) {
            const url = cell.textContent;
            cell.textContent = shortenUrl(url);
            cell.title = url; // 축약된 URL에 마우스를 올렸을 때 전체 URL을 툴팁으로 보여줍니다.
        });
    }

    // 초기 페이지 설정
    showDataForPage(1);
    createPagination();
    shortenUrlRowData();
</script>
</body>
</html>