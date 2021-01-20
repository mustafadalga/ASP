<%
hata=request.QueryString("hata")


%>


<!DOCTYPE html>
<meta charset="utf-8">
<html>
<head>
	<title>Asal Sayi</title>
	<style type="text/css">
		body
		{
			font-size: 20px;
			text-align: center;
		}
		table
		{
			margin-left: auto;
			margin-right: auto;
		}
		a
		{
			text-decoration: none;
		}
	div
	{
		 width:200px;
		  line-height:25px;
		   font-size:18px;
		    background:#e74c3c; 
		margin-left: auto;
		margin-right: auto;
		color:#ecf0f1; 
	}
	</style>
</head>
<body bgcolor="#bdc3c7">
<form action="sonuc.asp" method="post">
<table border="3">
	<tr style="line-height: 25px;">
		<td>Bir sayı giriniz:</td>
		<td><input type="text" name="sayi"  size="10"  style="line-height: 18px;"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" name="Gonder" value="Kontrol Et"  style="width: 200px; background:#e74c3c; color:#ecf0f1; font-size: 18px; line-height: 25px;"></td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="../../ASP.html" ><div><b>Uygulamadan Çık</b></div></a>
		</td>
	</tr>
</table>

<%
if hata=1 then
response.write "<h3>Lütfen bir sayı giriniz!!!</h3>"
elseif hata=2 then
response.write "<h3>Lütfen 1'den büyük bir  sayı giriniz!!!</h3>"
end if
%>
</form>
</body>
</html>