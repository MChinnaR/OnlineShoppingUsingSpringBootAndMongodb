<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
.buttons {
	height: 30px;
	width: 100px;
}
.buttonss {
	height: 30px;
	width: 300px;
}
</style>
</head>
<body>

	<center>
		<h4 style="color: red">${message}</h4>
	</center>
	<form action="/OnlineShopping/addtocart" method="post"></form>
	<div align="center">
		<table border="1" cellpadding="5" width="80px">
			<caption>
				<h2>ITEMS IN YOUR CART</h2>
			</caption>
			<tr>
				<th>product</th>
				<th>cost</th>
				<th>quantity</th>
				<th>submit</th>
			</tr>
			<c:forEach var="user" items="${message}">
				<tr>
					<td><c:out value="${user.key}" /></td>
					<td><c:out value="${user.value}" /></td>
					<form action="/OnlineShopping/payment">
					<td><input type="number" name="qty"></td>
					<td><button class="buttons" "type="submit" name="item"
							id="${entry.key}">submit</button></td>
					</form>
				</tr>
			</c:forEach>
		</table>
	</div><br><br>
	<center><button class="buttonss" "type="submit"><a href="/OnlineShopping/homepage">Continue Shopping</a></button></center>
</body>
</html>