<!DOCTYPE html>
<html >
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<meta charset="utf-8"/>
<title>members</title>
<style type="text/css">
body{
background:#ccccff;
margin:0;
}
.menu
{
width:100%;
background:#142b47;
overflow:fixed;
}
</style>
</head>
<body>
<div align="center">
    <h1>Product List</h1>
    <a href="new">Create New Member</a>
    <br/><br/>
    <table border="1" cellpadding="10">
        <thead>
            <tr>
                <th style="width:50px"> ID</th>
                <th style="width:200px">Firstname</th>
                <th style="width:100px">Lastname</th>
                <th style="width:80px">Mobile number</th>
                <th style="width:50px">Email</th>
                <th style="width:50px">Password</th>
                <th>Actions</th>
                
            </tr>
        </thead>
        <tbody>
        <c:forEach var="member" items= "${memberslist}">
            <tr> 
            	<td> ${member.id}</td>
                <td> ${member.firstName}</td>
                <td> ${member.lastName}</td>
                <td>${member.mob}</td>
                <td> ${member.email}</td>
               	<td> ${member.password}</td>
                <td>
                	<a href="edit?id=${member.id}"  >Edit</a>
                	&nbsp;&nbsp;&nbsp;
                	<a href="delete?id=${member.id}">Delete</a>
                </td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</div>    
</body>
</html>