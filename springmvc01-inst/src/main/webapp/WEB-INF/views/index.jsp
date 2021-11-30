<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>springmvc01</title>
</head>
<body>
	<h3>${message}</h3>
	spring controller 테스트
	<br>
	<br>
	<%-- 
	index.jsp --hello.do--MyTestController의 hello()
 										|
 									/WEB-INF/views/result.jsp 로 응답
 		
 --%>
	<a href="hello.do">Hello Test</a>
	<br>
	<br>
	<a href="hi.do">Hi Test</a>
	<br>
	<br>
	<form action="paramTest1.do">
		고객아이디 <input type="text" name="customerId" required="required">
		<button type="submit">검색</button>
	</form>
	<br>
	<br>
	<form action="paramTest2.do">
		고객아이디 <input type="text" name="userName" placeholder="고객이름"
			required="required"> 고객주소 <input type="text"
			name="userAddress" placeholder="주소" required="required">
		<button type="submit">전송</button>
	</form>
	<form action="paramTest3.do">
		<input type="checkbox" name="hobby" value="영화">영화 <br> <input
			type="checkbox" name="hobby" value="독서">독서 <br> <input
			type="checkbox" name="hobby" value="게임">게임 <br>
		<button type="submit">전송</button>
	</form>
	<br>
	<br>
	<%--
			405 http error
			컨트롤러는 post 방식만 지원하도록 설정
	 --%>
	<form action="methodTest1.do" method="post">
		<button>get 방식 요청</button>
	</form>
	<form action="methodTest1.do" method="post">
		<button>post 방식 요청</button>
	</form>
	<br>
	<br>
	<form action="methodTest2.do" method="post">
		<button>get 방식 요청</button>
	</form>
	<form action="methodTest2.do" method="post">
		<button>post 방식 요청</button>
	</form>
	<br>
	<br>

	<form action="paramTest4.do" method="post">
		<input type="text" name="id" placeholder="아이디" required="required"><br>
		<input type="text" name="name" placeholder="이름" required="required"><br>
		<input type="text" name="address" placeholder="주소" required="required"><br>
		<button type="submit">등록</button>
	</form>
	<br>
	<br>
	<form action="redirectTest.do" method="post">
		<input type="text" name="id" placeholder="아이디" required="required"><br>
		<input type="text" name="name" placeholder="이름" required="required"><br>
		<button type="submit">redirect test</button>
	</form>
	<form action="testResult.do" method="post">
		<input type="text" name="id" placeholder="아이디" required="required"><br>
		<input type="text" name="name" placeholder="이름" required="required"><br>
		<button type="submit">redirect test</button>
	</form>
	<br><br>
	<form action="hasA-test.do" method="post">
		<input type="text" name="id" placeholder="아이디" required="required"><br>
		<input type="text" name="name" placeholder="이름" required="required"><br>
		<!-- has a 관계 : 인스턴스변수명, 인스턴스변수명 -->
		<input type="text" name="carDTO.model" placeholder="차모델" required="required"><br>
		<input type="text" name="carDTO.pri ce" placeholder="차가격" required="required"><br>
		<button>HasA- test</button>
	</form>
	<img src="springmvc.jpg">
</body>
</html>