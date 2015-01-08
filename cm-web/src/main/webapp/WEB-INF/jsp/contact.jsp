<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Spring 3 MVC Series - Contact Manager</title>
	<style type="text/css">
		body {
			font-family: sans-serif;
		}
		.data, .data td {
			border-collapse: collapse;
			width: 100%;
			border: 1px solid #aaa;
			margin: 2px;
			padding: 2px;
		}
		.data th {
			font-weight: bold;
			background-color: #5C82FF;
			color: white;
		}
	</style>
</head>
<body>



<form method="post" action="add.html" commandName="contact">

	<table align="center">
	<tr><h2>Contact Manager</h2></tr>
	<tr>
		<td>First Name : </td>
		<td><input type="text" name="firstname"></td> 
	</tr>
	<tr>
		<td>Last Name : </td>
		<td><input type="text" name="lastname"></td>
	</tr>
	<tr>
		<td>Email : </td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td>Telephone :  </td>
		<td><input type="text" name="telephone"></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<input type="submit" value="Add Contact"/>
		</td>
	</tr>
	</table>
</form>

	

<c:if  test="${!empty contactList}">
<table class="data">
<h3>Contacts</h3>
<tr>
	<th>Name</th>
	<th>Email</th>
	<th>Telephone</th>
	<th>&nbsp;</th>
</tr>
<c:forEach items="${contactList}" var="contact">
	<tr>
		<td>${contact.lastname}, ${contact.firstname} </td>
		<td>${contact.email}</td>
		<td>${contact.telephone}</td>
		<td><a href="delete/${contact.id}">delete</a></td>
	</tr>
</c:forEach>
</table>
</c:if>


</body>
</html>
