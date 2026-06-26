<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/resources/favicon.svg?v=20260626n">
<style id="fullpage_styles">
@font-face {
    font-family: 'Cafe24Dongdong';
    src:
        url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Dongdong.woff')
        format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
font-family: 'NeoDunggeunmo';
src:
url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.3/NeoDunggeunmo.woff')
format('woff');
font-weight: normal;
font-style: normal;
}

body{
  margin-top: 0;
  min-height: 100vh;
  box-sizing: border-box;
  overflow-x: hidden;
}

h2 {
font-family: 'Cafe24Dongdong';
font-size: 1.6rem;
margin: 14px 0 8px;
}

select {
width: 190px;
padding: 0.5em;
border: 1px solid #999;
border-radius: 5px;
text-align: center;
}

.name {
width: 190px;
padding: 0.5em;
border: 1px solid #999;
border-radius: 5px;
text-align: center;
}

button {
font-family: 'NeoDunggeunmo';
}

.config {
background-color: #FFD500;
border: none;
color: black;
padding: 15px 128px;
text-align: center;
font-size: 22px;
border-radius: 5px;
margin: 4px 2px;
}

.fortune-input-group {
  display: block;
  margin: 0 auto 16px;
  text-align: center;
}

.fortune-input-group input[type="radio"] {
  margin: 0 6px 0 18px;
  vertical-align: middle;
}

.fortune-input-group input[type="radio"]:first-of-type {
  margin-left: 0;
}

.form-actions {
  text-align: center;
  margin-top: 24px;
  margin-bottom: 0;
}

.fortune-form-wrap {
  min-height: calc(100vh - 58px);
  padding-top: 58px;
  box-sizing: border-box;
  display: flex;
  align-items: center;
  justify-content: center;
}
</style>

</head>
<body>
<jsp:include page="header.jsp" />
  <div class="fortune-form-wrap">
  <div style="text-align: center;">
    <form onsubmit="return submitForm()" action="/ehr/ELCARO/getNick.do">
      <div class="fortune-input-group">
      <h2>MBTI를 입력하세요</h2>
      <select id="mbti" name="mbti" required>
        <option style="text-align: center;" value="">=== 선택 ===</option>
          <option value="1">ISTJ</option>
          <option value="2">ISTP</option>
          <option value="3">ISFJ</option>
          <option value="4">ISFP</option>
          <option value="5">INTJ</option>
          <option value="6">INTP</option>
          <option value="7">INFJ</option>
          <option value="8">INFP</option>
          <option value="9">ESTJ</option>
          <option value="10">ESTP</option>
          <option value="11">ESFJ</option>
          <option value="12">ESFP</option>
          <option value="13">ENTJ</option>
          <option value="14">ENTP</option>
          <option value="15">ENFJ</option>
          <option value="16">ENFP</option>
      </select>
          <script>
          // Mbti을 localStorage에 저장하는 함수
          function saveMbti() {
              const mbti = document.getElementById('mbti').value;
              localStorage.setItem('mbti', mbti);
          }
          </script>
      </div>

      <div class="fortune-input-group">
      <h2>닉네임을 입력하세요</h2>
      <input id="nickname" class="name" maxlength="30" required size="10" type="text" />
          <script>
          // 닉네임을 localStorage에 저장하는 함수
          function saveNickname() {
              const nickname = document.getElementById('nickname').value;
              localStorage.setItem('nickname', nickname);
          }</script>
      </div>
      
      <div class="fortune-input-group">
      <h2>성별을 입력하세요</h2>
      <input name="gender" value="남자" type="radio" required /> 남자
      <input name="gender" value="여자" type="radio" required /> 여자
      </div>
      
      <div class="fortune-input-group">
      <h2>띠를 입력하세요</h2>
      <select id="ani" name="ani" required>
        <option style="text-align: center;" value="">=== 선택 ===</option>
          <option value="1">쥐</option>
          <option value="2">소</option>
          <option value="3">호랑이</option>
          <option value="4">토끼</option>
          <option value="5">용</option>
          <option value="6">뱀</option>
          <option value="7">말</option>
          <option value="8">양</option>
          <option value="9">원숭이</option>
          <option value="10">닭</option>
          <option value="11">개</option>
          <option value="12">돼지</option>
      </select>
      <script>
        // 동물을 localStorage에 저장하는 함수
        function saveAni() {
            const ani = document.getElementById('ani').value;
            localStorage.setItem('ani', ani);
        }
      </script>
      </div>

      <div class="form-actions">
        <button class="config" type="submit" onclick="saveNickname(); saveMbti(); saveAni();">운세 확인</button>
      </div>
    </form>
  </div>
  </div>
  <script>
    function submitForm() {
        var validMbtiValues = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"];
        var validAniValues = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"];
    
        var mbti = document.getElementById("mbti").value;
        var nickname = document.getElementById("nickname").value;
        var gender = document.querySelector('input[name="gender"]:checked');
        var ani = document.getElementById("ani").value;
    
        if (!mbti || mbti === "none" || nickname.trim() === "" || !gender || !ani || ani === "none") {
            alert("입력되지 않은 정보가 있습니다. 모든 항목을 입력해주세요.");
            return false;
        }
    
        if (!validMbtiValues.includes(mbti)) {
            alert("유효한 MBTI를 선택해주세요.");
            return false;
        }
    
        if (!validAniValues.includes(ani)) {
            alert("유효한 띠를 선택해주세요.");
            return false;
        }
    
        if (gender.value !== "남자" && gender.value !== "여자") {
            alert("성별을 선택해주세요.");
            return false;
        }
    
        var result = confirm("입력한 정보를 전송하시겠습니까?");
        if (result) {
            // 정보 전송을 위한 AJAX 요청 등의 처리
            return true;
        } else {
            return false;
        }
    }
  </script>
</body>
</html>
