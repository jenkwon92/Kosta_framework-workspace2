<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step2-asyn</title>
<script type="text/javascript">
	let xhr;
	function startAjax(){
		//ajax 통신을 위한 자바스트립트 객체 
		xhr=new XMLHttpRequest();
		// readystate가 변경될 때 호출될 함수를 등록 
		//xhr.onreadystatechange=callback;
		// readystate 변경시 호출될 함수를 익명함수로 등록해본다 
		xhr.onreadystatechange=function(){
			// readyState 4 ( 서버로부터 응답 완료된 상태 ) , status 200 (정상 수행)
			if(xhr.readyState==4&&xhr.status==200){
				
			}
		}
		xhr.open("get", "AsynServlet");
		xhr.send(null);//post일때 데이터를 전달 
	}
	/*
	function callback(){
		// readyState 4 ( 서버로부터 응답 완료된 상태 ) , status 200 (정상 수행)
		if(xhr.readyState==4&&xhr.status==200){
			document.getElementById("result").innerHTML=xhr.responseText;
		}
	}
	*/
</script>
</head>
<body>
<%--
		  웹프로그래밍에 있어서 비동기 Ajax 통신이란 
  		  필요한 데이터만 응답받는 방식이다. 
          사용자는 페이지 변경없이 필요한 데이터만 응답받음으로 
          응답여부와 관계없이 작업을 지속할 수 있다   
          step1-syn.jsp ( 동기적 통신 방식 ) , step2-asyn.jsp ( 비동기 ajax 통신 방식 ) 을 비교 
 --%>
 <form >
 	<input type="text" name="userInfo">
 	<input type="button" onclick="startAjax()" value="Ajax비동기방식테스트">
 	<span id="result"></span>
 </form>
 <hr>
 <form>
 <textarea rows="100" cols="100"></textarea>
 </form>
</body>
</html>