<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
</head>
<body>
<h3>SpringMVC + MyBatis</h3>
<a href="getTotalCustomerCount.do">고객수 보기</a>
<!-- 
	CustomerController			CustomerMapper		DB
	getTotalCustomerCount() --						--
 	|
 	WEB-INF/views/customer-count.jsp
 	고객수는 1명입니다
 	
 -->
<form action="findCustomerById.do">
	<input type="text" name="id" placeholder="아이디" required="required">
	<button>검색</button>
</form>
<!-- 
	CustomerController			CustomerMapper		DB
	findCustomerById() ----
 	|
 	findbyid-success or findbyid-fail.jsp
 -->

<form action="registerCustomer.do" method="post"><!-- post 방식만 가능하게 한다 -->
	<input type="text" name="id" placeholder="아이디" required="required">
	<input type="text" name="name" placeholder="이름" required="required">
	<input type="text" name="address" placeholder="주소" required="required">
	<button>등록</button>
	
	<!-- 
	CustomerController
	registerCustomer() ---- 중복확인은 mapper.findCustomerById()를 이용
 	|
 	register-success or duplicate-id.jsp (아이디가 중복될 경우)
 -->
</form>
</body>
</html>