<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
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
h2 {
font-family: 'Cafe24Dongdong';
}

select {
width: 150px;
padding: 0.5em;
border: 1px solid #999;
border-radius: 5px;
}

.name {
width: 150px;
padding: 0.5em;
border: 1px solid #999;
border-radius: 5px;
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
font-size: 16px;
border-radius: 5px;
margin: 4px 2px;
}
</style>

</head>
<body>
  <h2 style="text-align: center;">MBTI를 입력하세요</h2>
  <div style="text-align: center;">
    <form onsubmit="return submitForm()" action="Ne06_NotMemberResultPage.html">
      <select id="mbti" name="mbti" required>
        <option style="text-align: center;" value="">=== 선택 ===</option>
        <option value="ISTJ">ISTJ</option>
        <option value="ISTP">ISTP</option>
        <option value="ISFJ">ISFJ</option>
        <option value="ISFP">ISFP</option>
        <option value="INTJ">INTJ</option>
        <option value="INTP">INTP</option>
        <option value="INFJ">INFJ</option>
        <option value="INFP">INFP</option>
        <option value="ESTJ">ESTJ</option>
        <option value="ESTP">ESTP</option>
        <option value="ESFJ">ESFJ</option>
        <option value="ESFP">ESFP</option>
        <option value="ENTJ">ENTJ</option>
        <option value="ENTP">ENTP</option>
        <option value="ENFJ">ENFJ</option>
        <option value="ENFP">ENFP</option>
      </select>
      <h2 style="text-align: center;">닉네임을 입력하세요</h2>
      <input id="nickname" class="name" maxlength="30" required size="10" type="text" />
      <h2 style="text-align: center;">성별을 입력하세요</h2>
      <input name="gender" value="남자" type="radio" required /> 남자
      <input name="gender" value="여자" type="radio" required /> 여자
      <h2 style="text-align: center;">띠를 입력하세요</h2>
      <select id="ani" name="ani" required>
        <option style="text-align: center;" value="">=== 선택 ===</option>
        <option value="mouse">쥐띠</option>
        <option value="cow">소띠</option>
        <option value="tiger">호랑이띠</option>
        <option value="rabbit">토끼띠</option>
        <option value="dragon">용띠</option>
        <option value="snake">뱀띠</option>
        <option value="horse">말띠</option>
        <option value="sheep">양띠</option>
        <option value="monkey">원숭이띠</option>
        <option value="chicken">닭띠</option>
        <option value="dog">개띠</option>
        <option value="pig">돼지띠</option>
      </select>
      <h2 style="text-align: center;">현재(서버시간)의 네 팔자야</h2>
      <div style="text-align: center;">
        <button class="config" type="submit">운세 확인</button>
      </div>
    </form>
  </div>
  <script>
    function submitForm() {
        var validMbtiValues = ["ISTJ", "ISTP", "ISFJ", "ISFP", "INTJ", "INTP", "INFJ", "INFP", "ESTJ", "ESTP", "ESFJ", "ESFP", "ENTJ", "ENTP", "ENFJ", "ENFP"];
        var validAniValues = ["mouse", "cow", "tiger", "rabbit", "dragon", "snake", "horse", "sheep", "monkey", "chicken", "dog", "pig"];
    
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