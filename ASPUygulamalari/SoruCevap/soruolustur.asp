<%
soru=request.form("soru")
a=request.form("Asikki")
b=request.form("Bsikki")
c=request.form("Csikki")
d=request.form("Dsikki")
e=request.form("Esikki")
DogruCevap=request.form("DogruCevap")

if soru="" then
response.redirect "index.asp?uyari=1"
elseif a="" or b="" or c="" or d="" or e="" then
response.redirect "index.asp?uyari=2"
end if
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Soruyu Cevapla</title>
<style type="text/css">
	body
	{
	font-size: 20px;
	}

</style>
</head>
<body bgcolor="#bdc3c7">
<form action="sonuc.asp" method="post">
<center>
<%
Response.write "<h2>" &soru & "</h2>"
%>

<table>
	<tr>
		<td><input type="radio" name="soru1" value="A">A-)&nbsp;<%=a%><br></td>
	</tr>
	<tr>
		<td><input type="radio" name="soru1" value="B">B-)&nbsp;<%=b%><br></td>
	</tr>
	<tr>
		<td><input type="radio" name="soru1" value="C">C-)&nbsp;<%=c%><br></td>
	</tr>
	<tr>
		<td><input type="radio" name="soru1" value="D">D-)&nbsp;<%=d%><br></td>
	</tr>
	<tr>
		<td><input type="radio" name="soru1" value="E">E-)&nbsp;<%=e%><br><br></td>
	</tr>
	<tr>
		<td><input style="display: none;" type="text" name="DogruCevap" value="<%=DogruCevap%>"></td>
	</tr>
		<tr>
		<td align="center"><input   type="submit" value="Kontrol Et"  style="width: 200px; background:#e74c3c; color:#ecf0f1; font-size: 18px; line-height: 25px;"></td>
	</tr>
</table>











</center>	
</form>
</body>
</html>

