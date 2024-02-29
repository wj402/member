<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
<link rel="stylesheet" href="../css/layout.css" >
</head>

<style>
	td {
		text-align: left;
		line-height: 1.6;
	}

	.box1 {
		width: 98%;
	}
	
	.box2 {
		width: 150px;
	}
	
	button {
		height: 28px;
	}
	
</style>

<script>
	function fn_submit() {
		
		var f = document.frm
		
		if(f.title.value == "") {
			alert("제목을 입력해주세요.");
			f.title.focus();
			return false;
		}
		
		if(f.pass.value == "") {
			alert("암호을 입력해주세요.");
			f.pass.focus();
			return false;
		}
		
		document.frm.submit();
	}
	
	function fn_onload() {
		docuemnt.frm.title.focus();	
	}
	
</script>

<body onload="fn_onload()">
	
	<div class="wrap">
		<header>
			<div class="top_logo">
				
			</div>
			<div class="top_header">
			
			</div>
		</header>
		<nav>
			<%@ include file="../include/topmenu.jsp" %>
		</nav>
		<aside>
			<%@ include file="../include/leftmenu.jsp" %>
		</aside>
		<section>
			<article>
				<form name="frm" method="post" action="memberWriteSave.jsp">
					<table>
						<caption> 회원등록 </caption>
						<colgroup>
							<col width="25%" />
							<col width="*" />
						</colgroup>
						<tbody>
							<tr>
								<th>아이디</th>
								<td>
									<input type="text" name="userid" class="box2" required>
									<button type="button">중복아이디체크</button>
								</td>
							</tr>
							<tr>
								<th>암호</th>
								<td><input type="password" name="pass" class="box2" required></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><input type="text" name="name" class="box2" required></td>
							</tr>
							<tr>
								<th>성별</th>
								<td>
									<input type="radio" name="gender" value="M">남성
									<input type="radio" name="gender" value="F">여성
								</td>
							</tr>
							<tr>
								<th>생일</th>
								<td>
									<input type="text" name="birthday" id="birthday" class="box2" required>
								</td>
							</tr>
							<tr>
								<th>핸드폰</th>
								<td>
									<input type="text" name="mobile" class="box2">
								</td>
							</tr>
							<tr>
								<th>주소</th>
								<td>
									<input type="text" name="zipcode" class="box2">
									<button type="button">우편번호찾기</button> <br><br>
									<input type="text" name="addr" class="box1">
								</td>
							</tr>
						</tbody>
					</table>
					
					<div style="width:600px; text-align: center; margin-top:10px;">
						<button type="submit" onclick="fn_submit(); return false; ">저장</button>
						<button type="reset">취소</button>
					</div>
				</form>
			</article>
		</section>
		<footer>
			<%@ include file = "../include/footer.jsp" %>
		</footer>
	</div>
	
</body>
</html>