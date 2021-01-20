<%
if request.form("vize")="" then
	Response.redirect "index.asp?uyari=1"
elseif request.form("final")="" then
	Response.redirect "index.asp?uyari=1"
elseif request.form("derskatilimi")="" then
	Response.redirect "index.asp?uyari=1"	
elseif not Isnumeric(request.form("vize")) then
	Response.redirect "index.asp?uyari=2"
elseif not Isnumeric(request.form("final")) then
	Response.redirect "index.asp?uyari=2"
elseif not Isnumeric(request.form("derskatilimi")) then
	Response.redirect "index.asp?uyari=2"
end if

vizenotu=int(request.form("vize"))
finalnotu=int(request.form("final"))
derskatilimi=int(request.form("derskatilimi"))
ortalama=(vizenotu*0.4)+(finalnotu*0.6)




if derskatilimi>=4 and ortalama>=50 then
Durum="İyi"
elseif derskatilimi>=4 and ortalama<50 then
Durum="Ders ortalamanız kötü durumda!"
elseif derskatilimi<4 and ortalama>=50 then
Durum="Ders'e çok az katılım göstermişsiniz!"
elseif derskatilimi<4 and ortalama<50 then
Durum="Not durumu kötü ve derse  çok az katılım göstermişsiniz!"
end if
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
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
		   font-size:18px;
	    background:#e74c3c; 
		margin-left: auto;
		margin-right: auto;
		color:#ecf0f1; 
	}
</style>
</head>
<body bgcolor="#bdc3c7">
<center>
<h1 >
Not ortalamanız: <font color="red"><%=ortalama%></font></h1>
<h3>
Öğrenci Başarı ve Yoklama Durumu:<font color="red"><%=Durum%></font></h3>


<br><br><br>

<a href="index.asp"><div>Anasayfa'ya Dön</div></a>

</center>
</body>
</html>