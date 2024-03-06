<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ include file="../include/dbCon.jsp" %>

<%
	String dong = request.getParameter("dong");

	String sqlTot = " select count(*) total from post ";
		   sqlTot+= "	where a4 like '%"+dong+"%' or a5 like '%"+dong+"%' ";
	ResultSet rsTot = stmt.executeQuery(sqlTot);
	rsTot.next();
	int total = rsTot.getInt("total");
	
	String sql = " select a1,a2,a3,a4,a5,a6,a7,a8 from post ";
		   sql+= " 		where a4 like '%"+dong+"%' or a5 like '%"+dong+"%' ";
	ResultSet rs = stmt.executeQuery(sql);
		   
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우편번호(주소) 검색 결과</title>
</head>

<style>
	div {
		font-size: 12px;
		width: 98%;
		height: 190px;
		text-align: center;
		background: skyblue;
	}
</style>

<body>

<div>
	<br><br><br><br>
	<form name="frm" method="post" action="">
		검색결과 : 총 <%=total %> 개 <br>
		<select name="address">
			<%
				while( rs.next() ) {
					String a1 = rs.getString("a1");
					String a2 = rs.getString("a2");
					String a3 = rs.getString("a3");
					String a4 = rs.getString("a4");
					String a5 = rs.getString("a5");
					String a6 = rs.getString("a6");
					String a7 = rs.getString("a7");
					String a8 = rs.getString("a8");
					
					String addr = "["+a1+"]"+" "+a2+" "+a3+" "+a4+" "+a5+" "+a6+" "+a7+" "+a8;
			%>
				<option value="<%=addr %>"><%=addr %></option>
			<%
				}
			%>
		</select>
		
		<button type="button">적용</button>
	</form>
</div>

</body>
</html>