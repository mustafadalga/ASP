<!DOCTYPE html>
<meta charset="utf-8">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Cevap</title>
	<style type="text/css">
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
	div:hover
	{
		opacity: 0.9;
	}
	</style>
</head>
<body bgcolor="#bdc3c7">
<h1 align="center">
<%
soru1=request.form("soru1")
DogruCevap=request.form("DogruCevap")

if soru1 <> "" and DogruCevap <> "" then
	if soru1=DogruCevap then
 		response.write "Tebrikler Doğru Cevap"
	else
 		response.write "Malesef cevabını bilemediniz!!! <br> Doğru cevap " & DogruCevap & "  seçeneği olacaktı"
 	end if
 else 
 	response.write "Soru Girmediniz!!!"
end if 



%>	

<br><br><br>

<a href="index.asp"><div>Anasayfa'ya Dön</div></a>


</h1>
</body>
</html>