<%
uyari=request.QueryString("uyari")
%>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Not Ortalama Sistemi</title>
<style type="text/css">
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
<center>
<h1>Üniversite Not Ortalaması Hesaplama</h1>

<table style="text-align: center;" border="3">
	<tr>
		<td><b>Vize notu:</b></td>
		<td><input   type="text" name="vize"></td>
	</tr>
	<tr>
		<td><b>Final notu:</b></td>
		<td><input type="text" name="final"></td>
	</tr>
	<tr>
		<td><b>Derse katıldığın gün sayısı:</b></td>
		<td><input  type="text" name="derskatilimi"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="Hesapla" style="width: 200px; background:#e74c3c; color:#ecf0f1; font-size: 18px;"></td>
	</tr>
	<tr>
		<td colspan="2">
				<a href="../../ASP.html" ><div><b>Uygulamadan Çık</b></div></a>
		</td>
	</tr>
</table>
<!-- required:zorunlu doldurulması alan gereken alan için kullanılır .HTML5 özelliği -->
<%
if uyari=1 then
	response.write "<h3>Lütfen ilgili yerleri doldurunuz!!!</h3>"
elseif uyari=2 then
	response.write "<h3>Lütfen ilgili yerleri sayı olarak doldurunuz!!!</h3>"
end if
%>

</center>
</form>
</body>
</html>