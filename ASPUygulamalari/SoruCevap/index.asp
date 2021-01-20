<%
uyari=request.QueryString("uyari")

%>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Soru Olustur</title>
<style type="text/css">
	body
	{
	font-size: 20px;
	}
	a
	{
		text-decoration: none;
	}
	div
	{
		 width:200px;
		  line-height:30px;
		   font-size:18px;
	    background:#e74c3c; 
		margin-left: auto;
		margin-right: auto;
		color:#ecf0f1; 
	}

</style>
</head>
<body bgcolor="#bdc3c7">
<form action="soruolustur.asp" method="post">
<center>
<strong>Bir soru giriniz:</strong><br>
<textarea cols="80" rows="5" name="soru"></textarea><br>


<strong>Şıkları giriniz:</strong><br>
A-)<input type="text" name="Asikki" size="15"><br>
B-)<input type="text" name="Bsikki" size="15"><br>
C-)<input type="text" name="Csikki" size="15"><br>
D-)<input type="text" name="Dsikki" size="15"><br>
E-)<input type="text" name="Esikki" size="15"><br><br>


Doğru cevabı belirle:
<select name="DogruCevap">
<option value="A">A</option>
<option value="B">B</option>
<option value="C">C</option>
<option value="D">D</option>
<option value="E">E</option>
</select><br>

<input type="submit" value="Soru Oluştur"  style="width: 200px; background:#e74c3c; color:#ecf0f1; font-size: 18px; line-height: 25px;"><br>
<a href="../../ASP.html" ><div><b>Uygulamadan Çık</b></div></a>

<%
if uyari=1 then
	response.write "<h3>Lütfen bir soru giriniz!!!</h3>"
elseif uyari=2 then
	response.write "<h3>Lütfen şıkları doldurunuz!!!</h3>"
end if

%>



</center>
</form>
</body>
</html>