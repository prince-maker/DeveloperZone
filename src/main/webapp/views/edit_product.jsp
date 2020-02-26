<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />
<title>Edit member</title>
<style type="text/css">
body{
background:orange;
margin:0;
}
</style>
</head>
<body>
	<div align="center">
		<h1>Edit Product</h1>
		<br />
		<form action="#" th:action="@{/save}" th:object="${member}"
			method="post">

			<table border="0" cellpadding="10">
				<tr>				
					<td>Product ID:</td>
					<td>
						<input type="text"  th:field="*{id}" readonly="readonly" />
					</td>
				</tr>			
				<tr>				
					<td>Product Name:</td>
					<td>
						<input type="text" placeholder="Enter the product name" th:field="*{name}" />
					</td>
				</tr>
				<tr>
					<td>Brand:</td>
					<td><input type="text" placeholder="Enter the brand" th:field="*{brand}" /></td>
				</tr>
				<tr>
					<td>Made In:</td>
					<td><input type="text" placeholder="Enter the country" th:field="*{madein}" /></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><input type="text" th:field="*{price}" /></td>
				</tr>								
				<tr>
					<td colspan="2"><button type="submit">Save</button> </td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>