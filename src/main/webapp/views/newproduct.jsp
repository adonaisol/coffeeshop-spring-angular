<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form class="form-horizontal" action="../books/${product.id}" method="post">
	<table>
		<tr>
			<td>Desc:</td>
			<td><input type="text" class="form-control" name="title" value="${product.description}" /> </td>
		</tr>
		<tr>
			<td>Name:</td>
			<td><input type="text" class="form-control" name="ISBN" value="${product.productName}" /> </td>
		</tr>
		<tr>
			<td>Price:</td>
			<td><input type="text" class="form-control" name="author" value="${product.price}" /> </td>
		</tr>
		<tr>
			<td>Type:</td>
			<td><input type="text" class="form-control" name="price" value="${product.productType}" /> </td>
		</tr>
	</table>
	<input type="submit" class="btn btn-primary" value="update"/>
	</form>
</body>
</html>