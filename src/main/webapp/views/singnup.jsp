<!DOCTYPE html>
<html >
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>>
<meta charset="utf-8" />
<title>singnup</title>
<script type="text/javascript">
function validate()
{
var name=regform.firstname.value;
if(name.length==0 || name==" ")
{
alert("Enter your Name");

return false;
}
else
{
return true;
}
}
</script>
<style type="text/css">
body{
background:#ccccb3;
margin:0;
}
input[type=text]
{
padding:8px;
border:none;
font-size:19px;
font-family:sans-serif;
}http://localhost:8080/images/c.jpg
input[type=password]
{
padding:8px;
border:none;
font-size:19px;
font-family:sans-serif;

}
button
{
float:right;
background:#0099cc;
color:white;
border:0 5px 5px;
cursor:pointer:
position:relative;
padding:10px;
font-family:sans-serif;
border:none;
font-size:13px;
}
button:hover
{
color:black;
opacity:1;
font-size:13px


}

.menu th
{

text-decoration:none;
width:130px;
display:block;
text-align:center;
color:black;
font-size:22px;
font-family:sans-serif;
letter-spacing:0.5px;
}
</style>
<body>
	<div align="center" class=menu>
		<h1>Create New Product</h1>
		<br />
		<form:form action="save" modelAttribute="member"
			method="post">

			<table border="0" cellpadding="10">
				<tr>
					<th>Firstname:</th>
					<td><form:input type="text" placeholder="Enter the Firstname" path="firstName" /></td>
				</tr>
				<tr>
					<th>Lastname:</th>
					<td><form:input type="text" placeholder="Enter the Lastname" path="lastName" /></td>
				</tr>
				<tr>
					<th>Moble nummber:</th>
					<td><form:input type="text" placeholder="Enter the Mobile number" path="mob" /></td>
				</tr>
				<tr>
					<th>Email:</th>
					<td><form:input type="text" placeholder="Enter the Email"  path="email" /></td>
				</tr>
				<tr>
					<th>Password:</th>
					<td><form:input type="password" placeholder="Enter the Password"  path="password" /></td>
				</tr>								
				<tr>
					<td colspan="2"><button type="submit">Save</button> </td>
				</tr>
				
			</table>
			<a href="/">Home</a>
		</form:form>
	</div>
</body>
</html>