<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/myweb/session_login" method="post">
		<table width="450" height="300" bgcolor="#e0ffd0" border="1" rules="none">
			<tr>
				<td colspan="2" align="center">
					<font size="7" color="#f0a0b0" face="나눔명조" style="font-weight:bold;letter-spacing:5pt">L</font>
					<font size="7" color="#a0b0c0" face="나눔명조" style="font-weight:bold;letter-spacing:5pt">o</font>
					<font size="7" color="#a0f0b0" face="나눔명조" style="font-weight:bold;letter-spacing:8pt">g</font>
					<font size="7" color="#707070" face="나눔명조" style="font-weight:bold;letter-spacing:8pt">-</font>
					<font size="7" color="#f0d0a0" face="나눔명조" style="font-weight:bold;letter-spacing:5pt">i</font>
					<font size="7" color="#abcdef" face="나눔명조" style="font-weight:bold;">n</font>
				</td>
			</tr>
			<tr>
				<td align="right"><font color="#555555">ID</font></td>
				<td align="center"><input type="text" name="id" size="15" autofocus="autofocus"></td>
			</tr>
			<tr>
				<td align="right"><font color="#555555">Password</font></td>
				<td align="center"><input type="password" name="password" size="16"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="로그인" style="width:70%;height:60%"></td>
			</tr>
		</table>
	</form>
</body>
</html>