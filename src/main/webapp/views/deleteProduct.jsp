<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<title>Delete Product</title>
</head>
<body>
	<div class="col-md-4 col-md-offset-4">
	<h4>ARE YOU SURE</h4>
	<form action="/product/delete/${product.id}" method="post">
		<button class="btn btn-primary" type="submit">Yes</button>
		<button class="btn btn-danger" type="button" href="/admin/products">No</button>
	</form>
	</div>
</body>
</html>