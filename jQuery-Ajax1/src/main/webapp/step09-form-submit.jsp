<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>step9-form-submit</title>
<script type="text/javascript">
	$(document).ready(function(){
		$("#mybtn1").click(function(){
			alert($("#nickName").val()); //val()  입력양식의 입력값을 반환한다
			//html(), text(), val() : set, get 이 가능
			$("#nickName").val("").focus(); //method chaining
		});
		
		$("#testForm").submit(function(){
			return confirm($("#memberName").text()+"님 전송하시겠습니까?");
		});
	});

</script>
</head>
<body>
<input type="text" id="nickName">
<button type="button" id="mybtn1">버튼1</button>
<%-- mybtn1 id 버튼 클릭하면 nickName 아이디에 입력한 값이 alert으로 출력되도록 한다  --%>
<br>
<span id="memberName">아이유님</span>
<br>
<form action="test.jsp" id="testForm">
등록정보 <input type="text" name="info"><br>
<button type="submit">전송</button>
</form>
<%-- 전송 submit 을 누르면 전송전 confirm으로 memberName을 이용해 아이유님 전송하시겠습니까 confirm으로
		묻고 취소 누르면 전송 x , 확인 누르면 전송시킨다 
 
 		셀렉터(form) .submit(handler)
 --%>
</body>
</html>











