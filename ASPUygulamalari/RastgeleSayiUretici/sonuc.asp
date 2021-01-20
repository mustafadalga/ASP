<%
sayfarengi=request.form("sayfarengi")
s1=request.form("sayi1")
s2=request.form("sayi2")


if not Isnumeric(s1) then
Response.redirect "index.asp?uyari=1"
elseif not Isnumeric(s2) then
Response.redirect "index.asp?uyari=1"
end if 


Select case sayfarengi
case 0
ArkaplanRengi="grey"
YaziRengi="#ecf0f1"
DivRengi="#ecf0f1"
LinkRengi="#2c3e50"
case 1
ArkaplanRengi="red"
YaziRengi="#ecf0f1"
DivRengi="#ecf0f1"
LinkRengi="#2c3e50"
case 2
ArkaplanRengi="yellow"
YaziRengi="#c0392b"
DivRengi="#e74c3c"
LinkRengi="#ecf0f1"
case 3
ArkaplanRengi="blue"
YaziRengi="#ecf0f1"
DivRengi="#ecf0f1"
LinkRengi="#2c3e50"
case 4
ArkaplanRengi="lime"
YaziRengi="#2c3e50"
DivRengi="#2c3e50"
LinkRengi="#ecf0f1"
case 5
ArkaplanRengi="pink"
YaziRengi="#2c3e50"
DivRengi="#2c3e50"
LinkRengi="#ecf0f1"
case 6
ArkaplanRengi="orange"
YaziRengi="#2c3e50"
DivRengi="#2c3e50"
LinkRengi="#ecf0f1"
case 7
ArkaplanRengi="black"
YaziRengi="#ecf0f1"
DivRengi="#ecf0f1"
LinkRengi="#2c3e50"
End Select


Randomize:RastgeleSayi = int((Rnd * int(s2))+int(s1))
%>



<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sonuc</title>
<style type="text/css">
	h1
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
		  line-height:30px;
		   font-size:20px;
	    background:<%=DivRengi%>; 
		margin-left: auto;
		margin-right: auto;
		color:<%=LinkRengi%>; 
		text-align: center;
	}
</style>
</head>
<body style="background: <%=ArkaplanRengi%>; color: <%=YaziRengi%>;">

<%
Response.write "<h1> Rastgele Üretilen Sayı:" & RastgeleSayi & "</h1>"
%>

<br><br><br>

<a href="index.asp"><div><b>Anasayfa'ya Dön</b></div></a>

	
</body>
</html>