<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>checkbox</title>
<script type="text/javascript">
	$(function(){
		$("#menuForm").submit(function() {
			let menu = $("#menuForm :checkbox[name=menu]:checked");
			if(menu.length==0){
				alert("메뉴를 선택하세요");
			}else{
				for(let i=0; i<menu.length; i++){
					let menuArray = menu[i];
				}
				return confirm(menuArray+"주문하시겠습니까");
			}
			return false;
		});
	});
</script>
</head>
<body>
	<div class="container">
		<form action="test.jsp" id="menuForm">
			<input type="checkbox" name="menu" value="새우">새우<br> <input
				type="checkbox" name="menu" value="삼겹살">삼겹살 <br> <input
				type="checkbox" name="menu" value="김치찌개">김치찌개<br> <input
				type="submit" value="주문">
		</form>
		<!--  submit 버튼 누르면 
  menu 체크박스에 선택된 정보가 없으면 
  메뉴를 선택하세요 alert 후 전송시키지 않는다 
  선택 정보가 있으면 
  confirm 으로 
  삼겹살 김치찌개 주문하시겠습니까  확인 누르면 전송 
  취소누르면 전송하지 않는다 
 -->

	</div>
</body>
</html>