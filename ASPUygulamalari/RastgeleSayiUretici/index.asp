<%
uyari=request.QueryString("uyari")
%>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Rastgele Sayi Uretici</title>
<style type="text/css">
	
	body
	{
		font-size: 20px;
		text-align: center;
	}
	table tr
	{
		text-align: center;
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
<body bgcolor="grey">
<form action="sonuc.asp" method="post">


<table align="center" width="350" border="5" bordercolor="lime">
	<tr>
		<td>Sayfa arkaplan rengini seçin:</td>
		<td>
			<select name="sayfarengi" style="width: 85px;">
			<option value="0">varsayılan</option>
			<option value="1">kırmızı</option>
			<option value="2">sarı</option>
			<option value="3">mavi</option>
			<option value="4">yeşil</option>
			<option value="5">pembe</option>
			<option value="6">Turuncu</option>
			<option value="7">Siyah</option>
			</select>
		</td>
	</tr>
	<tr >
			<td colspan="2"><b>Rastgele Sayı Üretici</b></td>
	</tr>

	<tr>
		<td>Aralık Başlangıcı:</td>
		<td><input type="text" name="sayi1" size="5"></td>
	</tr>
	<tr>
		<td>Aralık Bitişi:</td>
		<td><input type="text" name="sayi2"  size="5"></td>

	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="İşlem Yap"  style="width: 200px; background:#e74c3c; color:#ecf0f1; font-size: 18px; line-height: 25px;"></td>
	</tr>
	<tr>
		<td colspan="2">
				<a href="../../ASP.html" ><div><b>Uygulamadan Çık</b></div></a>
		</td>
	</tr>




</table>

			<%
			if uyari=1 then
				response.write "<h3>Lütfen ilgili alanları sayı olarak doldurunuz!!!</h3>"
			end if
			%>

</form>
</body>
</html>