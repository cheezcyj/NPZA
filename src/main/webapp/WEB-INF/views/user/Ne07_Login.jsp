<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>로그인 페이지</title>
    <script src="${CP}/resources/js/jquery-3.7.0.js"></script>
  <script>
  $(document).ready(function(){ //모든 화면이다 로딩이 되면
    console.log("$(document).ready")
    
    //jquery이벤트 감지
    $("#doLogin").on("click",function(){
       console.log("$(doLogin)")
       
       console.log("userId:"+$('#userId').val());
       console.log("passwd:"+$('#passwd').val());
      
      if (confirm('로그인 하시겠습니까?')==false)return;
        

       
       $.ajax({
              type: "POST",
              url:"${CP}/ELCARO/doLogin.do",
              dataType:"html",
              data:{
                userId:$('#userId').val(),
                passwd:$('#passwd').val()  
              },
              success:function(data){//통신 성공
                
                
                  let paredJSON = JSON.parse(data)
                  console.log("paredJSON.msgId:"+paredJSON.msgId);
                 // console.log("success data:"+data);
                 
                 if("1" == paredJSON.msgId || "10" == paredJSON.msgId){
                   alert(paredJSON.msgContents);
                   //jquery focus
                   $('#userId').focus();
                   return;
                 }
                 
                 if("2" == paredJSON.msgId || "20" == paredJSON.msgId){
                     alert(paredJSON.msgContents);
                     //jquery focus
                     $('#userId').focus();
                     return;
                   }
                 
                 console.log("paredJSON.msgContents:"+paredJSON.msgContents);
                 //로그인 성공
                 if("30" == paredJSON.msgId ){
                     alert(paredJSON.msgContents);
                     
                     //javascript 내장 객체: url
                     window.location.href ="${CP}/ELCARO/myPage.do";
                  }  
                 
                 
                 
                 
                },
                error:function(data){//실패시 처리
                  console.log("error:"+data);
                }
            });
      
      
    })//--doLogin end
    
    
  });//--end document
  </script>
    <style>
        body {
            font-family: NeoDunggeunmo, Cafe24Dongdong;
            background-color: #F4F4F4;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 30px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        .form-group .signup-link {
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>NE PAL ZZY YA</h2>
    <form>
        <div class="form-group">
            <label for="username">ID:</label>
            <input type="text" id="userId" name="userId" maxlength="20">
        </div>
        <div class="form-group">
            <label for="password">PW:</label>
            <input type="password" id="passwd" name="passwd" maxlength="100">
        </div>
        <div class="form-group">
            <input type="button" value="로그인" id="doLogin">
        </div>
        <div class="form-group signup-link">
            <a href="/ehr/ELCARO/SignUp.do">회원가입</a>
        </div>
    </form>
</div>
</body>
</html>