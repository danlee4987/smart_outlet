<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="lit.js"></script>
<style>
.button {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf));
	background:-moz-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-webkit-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-o-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-ms-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:linear-gradient(to bottom, #ededed 5%, #dfdfdf 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf',GradientType=0);
	background-color:#ededed;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	cursor:pointer;
	color:#777777;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #4b88b6;
    text-align: center;
    height: 50px;
        vertical-align: center;
        font-size: 20;
        border:5px;
}

li {
    text-align: center;
    vertical-align: center;
    display: inline-block;
}

li a {
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    vertical-align: center;

}

li a:hover {
    background-color: #111;
}
</style>
<link rel="stylesheet" type="text/css" href="lit.css">
<title>Smart Outlet</title>
</head>
<body align="center">
  <div style="content-align:center; border:2px;border-style:solid;"><ul>
  <li><img src="http://i.imgur.com/JTJJcI5.png" height="50px"/></li>
</ul></div>
        <br><br>

<form action="http://647199ee.ngrok.io/smartDevices/FirstServlet" method="post">
    <div style="text-align: center">
        <input type="submit" class=button value="Turn On" name="button1"/>
        <input type="submit" class=button value="Turn Off" name="button2"/>
        <br/>
    </div>
</form>
<br><br><br>
<form action="http://647199ee.ngrok.io/smartDevices/FirstServlet" method="post">
	<div style="text-align: center">
		<input type="submit" class=button value="Button 3" name="button3"/>
		<input type = "text" name = "dateValue"/>
	</div>
</form>


</body>
</html>
