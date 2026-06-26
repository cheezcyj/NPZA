<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"/>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/svg+xml" href="${CP}/resources/favicon.svg?v=20260626n">

<style>
  @font-face {
    font-family: 'EF_hyunydororong';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/EF_hyunydororong.woff2') format('woff2');
    font-weight: 900;
    font-style: normal;
  }

  .custom-text {
    font-family: 'EF_hyunydororong';
    font-weight: bold;
  }

  .navbar {
    background-color: #CDD7B8;
    min-height: 58px;
  }

  .site-logo-link {
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
    color: #282F44;
    font-family: 'EF_hyunydororong', sans-serif;
    font-size: 26px;
    font-weight: 900;
    letter-spacing: 0;
    text-decoration: none;
    white-space: nowrap;
  }

  .site-logo-link:hover {
    color: #07689F;
  }

  .nav-user-actions {
    display: flex;
    align-items: center;
    gap: 8px;
  }
</style>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="${CP}/resources/css/npzy-font.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>

<nav class="navbar navbar-expand-lg fixed-top">
  <div class="container-fluid">
    <a class="site-logo-link" href="${CP}/user/mainPage.do" aria-label="NEPALZZAYA 홈">
      NEPALZZAYA
    </a>

    <ul class="navbar-nav ms-auto">
      <c:choose>
        <c:when test="${not empty sessionScope.niName}">
          <li class="nav-item">
            <span class="nav-user-actions">
              <span class="custom-text">${sessionScope.niName}님</span>
              <a class="btn btn-outline-secondary" type="button" href="${CP}/ELCARO/accountPage.do">
                <b>마이페이지</b>
              </a>
              <a class="btn btn-outline-secondary" type="button" href="javascript:doLogout('${sessionScope.niName}');">
                <b>로그아웃</b>
              </a>
            </span>
          </li>
        </c:when>
        <c:otherwise>
          <li class="nav-item">
            <a class="btn btn-outline-secondary" type="button" href="${CP}/ELCARO/loginView.do">로그인</a>
          </li>
        </c:otherwise>
      </c:choose>
    </ul>
  </div>
</nav>

<script>
  function doLogout(name) {
    if (confirm(name + '님\n로그아웃 하시겠습니까?') == false) return;
    window.location.href = "${CP}/ELCARO/logout.do";
  }
</script>
