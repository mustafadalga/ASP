<!DOCTYPE html>
<meta charset="utf-8">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sonuc</title>
<style type="text/css">
	body
	{
		text-align: center;
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
<h1>
<%

sayi=request.form("sayi")

if sayi="" then
	response.redirect "index.asp?hata=1"
elseif not Isnumeric(sayi) then
	response.redirect "index.asp?hata=1"
elseif int(sayi)<2 then
	response.redirect "index.asp?hata=2"
elseif sayi=2 then
	response.write  "<b style='color:red;'>" & sayi & "</b>  asal bir sayıdır"
	response.end
end if



kontrol=0
for i=2 to sayi-1

	if (sayi mod i)=0 then
		kontrol=0
		response.write "<strong style='color:red;''>" & sayi & "</strong>  asal bir sayı değildir"
		response.write "<br><br><a href='index.asp'><div>Anasayfa'ya Dön</div></a>"
		response.End
	else
		kontrol=1
	end if 
next

if kontrol=1 then
	response.write  "<strong style='color:red;'>" & sayi & "</strong>  asal bir sayıdır"
	response.write "<br><br><a href='index.asp'><div>Anasayfa'ya Dön</div></a>"
end if
%>
</h1>

</body>
</html>