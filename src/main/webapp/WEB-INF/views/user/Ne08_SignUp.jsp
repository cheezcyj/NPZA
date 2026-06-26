<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String gender = request.getParameter("gender"); // gender 변수에 서블릿에서 전달된 값을 할당
if (gender == null) {
	gender = "";
}
%>
<c:set var="CP" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>

<meta charset="UTF-8">
<meta name="author" content="mmgom">
<link rel="icon" type="image/svg+xml" href="${CP}/resources/favicon.svg?v=20260626n">
<link rel="stylesheet" href="${CP}/resources/css/npzy-font.css">

<style>
.container {
	max-width: 400px;
	margin: auto;
	padding: 160px 200px 60px;
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
	margin: 10px;
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
	text-align: center;
	width: 350px;
	font-family: 'Cafe24Dongdong';
}

.inputFieldId {
	font-size: 20px;
	text-align: center;
	width: 450px;
	font-family: 'Cafe24Dongdong';
	margin: 0px 30px 0px 0px;
}

.inputFieldPass {
	font-size: 20px;
	text-align: center;
	width: 350px;
}

.submitButtonJoongbok {
	font-family: 'NeoDunggeunmo';
	font-size: 20px;
	margin: 10px;
	display: block;
}

.submitButtonMember {
	font-family: 'NeoDunggeunmo';
	font-size: 25px;
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

.id_ok {
	color: #008000;
	display: none;
}

.id_already {
	color: #6A82FB;
	display: none;
}

.invalid {
	
}
border-color


.
</style>


<title>NEPALZZAYA 운세사이트</title>




</head>

<body class="container">
	<form method="post" action="/ehr/ELCARO/save.do">

		<div class="formGroup">
			<label for="userId" class="formLabel">ID</label>
			<input type="text" name="userId" id="userId" placeholder="ID를 입력해주세요" class="inputField" maxlength="15" required oninput="checkId()">
		</div>
		<div class="formGroup">
			<span class="id_ok">사용 가능한 아이디입니다.</span> <span class="id_already">아이디가 이미 존재합니다.</span>
		</div>

		<br>
		<div class="formGroup">
			<label for="userNick" class="formLabel">닉네임</label>
			<input type="text" id="userNick" placeholder="닉네임을 입력해주세요" class="inputField" maxlength="15">
		</div>

		<br>

			<div class="formGroup">
				<label for="userPassword" class="formLabel">PW 설정</label>
				<input type="password" id="userPassword" class="inputFieldPass" maxlength="20">
			</div>
			<br>
			<div class="formGroup">
				<label for="checkPassword" class="formLabel">PW 확인</label>
				<input type="password" id="checkPassword" class="inputFieldPass" maxlength="20">
			</div>




		<div class="formGroup">
			<label for="gender" class="formLabelGender">성별</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" name="gender" value="M" id="genderM" style="margin-left: 30px;" <%=("M".equals(gender)) ? "checked" : ""%>>
			M
			<input type="radio" name="gender" value="F" id="genderF" style="margin-left: 60px;" <%=("F".equals(gender)) ? "checked" : ""%>>
			F
		</div>


		<br>
		<div class="formGroup">

			<label for="MBTI" class="formLabel">MBTI</label> <select id="MBTI" class="inputField">
				<option value="" selected>MBTI를 선택해주세요</option>
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

		</div>


		<br>
		<div class="formGroup">

			<label for="zodiacSign" class="formLabel">띠</label> <select id="zodiacSign" class="inputField">
				<option value="" selected>띠를 선택해주세요</option>
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

		</div>
	</form>

	<br>
	<div>
			<input type="button" id="signUpInfo" value="회원 가입" class="submitButtonMember">

	<!-- 로그인페이지로 넘어가게 만들어야함 -->
	<!--  <input type="submit" value="취소" class="submitButtonMember">  -->
	<!-- <a href="user/Ne07_Login"></a>  -->
	</div>







	<!-- html END  ---------------------------------------------------------------->




	<script type="text/javascript">
		$(document).ready(function() {
			console.log("#################### test중입니다 ");

			// 회원 정보 추가
			$("#signUpInfo").on("click", function() {
				console.log('signUpinfo click');

				if (eUtil.ISEmpty($("#userId").val()) == true) {
					alert("아이디를 입력하세요.");
					$("#userId").focus();
					return;
				}

				if (eUtil.ISEmpty($("#userPassword").val()) == true) {
					alert("비밀번호를 입력하세요.");
					$("#userPassword").focus();
					return;
				}

				if (eUtil.ISEmpty($("#userNick").val()) == true) {
					alert("닉네임을 입력하세요.");
					$("#userNick").focus();
					return;
				}

				if (eUtil.ISEmpty($("#zodiacSign").val()) == true) {
					alert("띠를 입력하세요.");
					$("#zodiacSign").focus();
					return;
				}

				if (eUtil.ISEmpty($("#MBTI").val()) == true) {
					alert("MBTI를 골라주세요.");
					$("#MBTI").focus();
					return;
				}

				if (eUtil.ISEmpty($("#gender").val()) == true) {
					alert("성별을 골라주세요.");
					$("#gender").focus();
					return;
				}

				$.ajax({
					type : "POST",
					url : "/ehr/ELCARO/save.do",
					async : "true",
					dataType : "html",
					data : {
						"id" : $("#userId").val(),
						"password" : $("#userPassword").val(),
						"nickname" : $("#userNick").val(),
						"ani" : $("#zodiacSign").val(),
						"mbti" : $("#MBTI").val(),
						"gender" : $('input[name="gender"]:checked').val()
					// 선택된 라디오 버튼의 값을 가져옴
					},

					success : function(data) {
						console.log("data" + data);
						if (data == 1) {
							alert("회원가입 성공");
							window.location.href = "/ehr/ELCARO/loginView.do";

						} else {
							alert("오류");
							console.log(data);
						}
					},

					error : function(data) { // 실패시 처리
						console.log("연결이 되어 있지 않습니다!!!!!!!!!!!:" + data);
					}
				});
			});
		});//document end

		//ID 한글 입력값 못 넣게 하는 함수
		function handleInputChange() {
			var input = document.getElementById("userId");
			var value = input.value;
			// 한글, 영어 대문자, 특수 문자  확인
			var regex = /[ㄱ-ㅎㅏ-ㅣ가-힣A-Z!@#$%^&*()]/;
			if (regex.test(value)) {
				alert("한글, 대문자, 특수문자는 사용할 수 없습니다.");
				input.value = ""; // 입력 값을 비워줍니다.
			}
		}
		// ID 입력 필드의 변경 이벤트에 함수를 연결합니다.
		document.getElementById("userId").addEventListener("input",
				handleInputChange);

		//비밀번호 검사
		$(document)
				.ready(
						function() {
							// 비밀번호 설정 입력 필드에서 포커스를 잃었을 때 유효성 검사 수행
							$('#userPassword').blur(function() {
								validatePassword();
							});

							// 비밀번호 확인 입력 필드에서 포커스를 잃었을 때 유효성 검사 수행
							$('#checkPassword').blur(function() {
								validatePasswordConfirmation();
							});

							// 비밀번호 유효성 검사 함수
							function validatePassword() {
								var password = $('#userPassword').val();
								var pattern = /^.{4,}$/;

								if (!pattern.test(password)) {
									alert('비밀번호는 4자 이상으로 입력해주세요.');
									// 바뀐부분 바꾼이유 : pw에서 무한으로 오류출력
									// 비밀번호 입력 필드를 가져옵니다.
									var passwordField = document
											.getElementById('userPassword');

									// 비밀번호 필드의 값을 지웁니다.
									passwordField.value = '';
									//바뀐 부분 끝
									return false;
								}

								return true;
							}

							// 비밀번호 확인 함수
							function validatePasswordConfirmation() {
								var password = $('#userPassword').val();
								var confirmPassword = $('#checkPassword').val();

								if (password !== confirmPassword) {
									alert('비밀번호가 틀립니다. 다시 입력해주세요.');
									$('#checkPassword').val(''); // 비밀번호 확인 입력 필드 초기화
									return false;
								}

								return true;
							}

							// 폼 제출 시 전체 유효성 검사 수행
							$('form')
									.submit(
											function() {
												if (!validatePassword()
														|| !validatePasswordConfirmation()) {
													return false;
												}
											});
						});

		// 아이디 중복검사      
		function checkId() {
			var id = $('#userId').val();
			console.log("checkId 실행됨" + id); // 추가한 코드
			$.ajax({
				url : "/ehr/ELCARO/idCheck.do",
				type : "POST",
				data : {
					"id" : id,
				},
				success : function(cnt) { //컨트롤러 에서 받은 cnt
					//alert("success c allback");
					if (cnt != 1) { // 사용가능 id
						$(".id_ok").css("display", "inline-block");
						$(".id_already").css("display", "none");
					} else { // 중복된 아이디 
						$(".id_already").css("display", "inline-block");
						$(".id_ok").css("display", "none");
					}

				},
				error : function(request, error) {
					console.log(request);
					console.log(error);
					alert("에러가 났습니다");
				}
			});
		};
	</script>

</body>

</html>









