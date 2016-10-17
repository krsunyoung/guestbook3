<%@page import="com.bit2016.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@page import="com.bit2016.guestbook.dao.GuestbookDao"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	List<GuestbookVo> list = (List<GuestbookVo>)request.getAttribute("list");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="/guestbook2/gs" method="post">
	<table border=1 width=500>
		<tr>	
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right>
			<input type ="hidden" name ="a" value="insert">
			<input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	<br>
		<%
		int count=-1;
		for(GuestbookVo vo : list){
			count++;
		%>
	<table width=510 border=1>
		<tr>
			<td>[<%=list.size() - count %>]</td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getReq_date() %></td>
			<td><a href="/guestbook2/gs?a=deleteform&no=<%=vo.getNo()%>" >삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=vo.getContent().replace("\n", "<br/>")%></td>
		</tr>
	</table>
	<br>
						
		<% } %>
	
</body>
</html>