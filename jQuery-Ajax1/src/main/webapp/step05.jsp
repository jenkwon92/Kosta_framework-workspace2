<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>jquery selector 연습</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("#btn2").click(function() {
			alert($(this).val() + " 클릭"); //val()- 입력양식의 value를 반환
		});
		
		$("#btn3").click(function(){
			//alert($(this).val() + "클릭");
			//jquery html() : innerHTML 역할 HTML  Tag를 반영
			//$("#resultView").html("<font color=blue>"+$(this).val()+"</font>");
			//jquery text() : 오직 text로만 반영
			$("#resultView").text("<font color=red>"+$(this).val()+"</font>");
		});
	});
</script>
</head>
<body>
	<!-- 
		1. btn2 id  버튼을 클릭했을 때만 alert으로 클릭 띄우게 한다 
		2. btn3 id 버튼을 클릭했을 때 alert 으로 자신의 value를 띄운다
			->  이벤트 처리를 변경해서 alert 대신 resultView 아이디의 span 영역에 자신의 value를 출력해본다
	-->
	<input type="button" value="테스트1">
	<br>
	<input type="button" value="테스트2" id="btn2">
	<br>
	<input type="button" value="테스트3" id="btn3">
	<br>
	<span id="resultView"></span>
</body>
</html>



















