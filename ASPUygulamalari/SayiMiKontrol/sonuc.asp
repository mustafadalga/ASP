<%
kontrol=request.form("deger")

if kontrol="" then
response.redirect "index.asp?hata=1"
end if


if Isnumeric(kontrol) then
sonuc="<font color='red'>" & kontrol &"</font> değeri bir sayıdır"
else
sonuc="<font color='red'>" & kontrol &"</font> değeri bir sayı değildir"
end if
%>

<!DOCTYPE html>
<meta charset="utf-8">
<html>
<head>
	<title>Sonuc</title>
<style type="text/css">
	a
	{
		text-decoration: none;
	}
	div
	{
		 width:200px;
		  line-height:30px;
		   font-size:20px;
	    background:#e74c3c; 
		margin-left: auto;
		margin-right: auto;
		color:#ecf0f1; 
		text-align: center;
	}
</style>
</head>
<body bgcolor="#bdc3c7">
<h1 align="center"><%=sonuc%></h1>


<br><br>
<a href="index.asp"><div><b>Anasayfa'ya Dön</b></div></a>
</body>
</html>