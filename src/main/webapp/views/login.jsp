<!DOCTYPE html>
<html >
<head>
<meta charset="utf-8" />
<title>login</title>
<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
	font-family: impact;
	background: #34495e;
}

.box {
	width: 250px;
	padding: 40px;
	position: absolute;
	top: 100px;
	left: 550px;
	background:#cc0066;
	text-align: center;
	border-radius: 25px
}

.box input[type="text"], .box input[type="password"] {
	border: 0;
	background: none;
	display: block;
	margin: 29px auto;
	text-align: center;
	border: 3px solid green;
	padding: 14px 14px;
	width: 170px;
	outline: none;
	color: white;
	border-radius: 25px
}

.box h1 {
	color: white;
	text-transform: uppercase;
}

.box input[type="text"]:hover, .box input[type="password"]:hover {
	width: 240px;
}

.box input[type="submit"] {
	border: 0;
	background: none;
	display: block;
	margin: 20px auto;
	text-align: center;
	border: 3px solid green;
	padding: 14px 14px;
	width: 100px;
	outline: none;
	color: white;
	border-radius: 24px
}

.box input[type="submit"]:hover {
	background: orange;
}
</style>
</head>
<body>
	<form action="login" method="post">
	Email:<input type="text"  >
	Password:<input type="text" >
	<input type="submit" value="submit">
	</form>




				
</body>
</html>