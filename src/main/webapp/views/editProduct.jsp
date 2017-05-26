<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Administrator Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>
<a href="<c:url value="/logout"/>" class="pull-right">Logout </a>
<div class="clearfix"></div>
<div class="container-fluid">
<!-- Second navbar for profile settings -->
    <nav class="navbar navbar-inverse">
      <div class="container">    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-4">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="/admin/products" class="active">Products</a></li>
            <li><a href="/admin/orders">Orders</a></li>
            <li><a href="/admin/users">Users</a></li>
            <!-- <li><a href="#">Works</a></li>
            <li><a href="#">News</a></li>
            <li><a href="#">Contact</a></li>
            <li>
              <a class="btn btn-default btn-outline btn-circle"  data-toggle="collapse" href="#nav-collapse4" aria-expanded="false" aria-controls="nav-collapse4">Profile <i class=""></i> </a>
            </li> -->
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->
    <div class="col-md-8 col-md-offset-2">
    	<form class="form-horizontal" action="/product/update/${product.id}" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" class="form-control" name="productName" value="${product.productName}"/></td>
			</tr>
			<tr>
				<td>Description:</td>
				<td><input type="text" class="form-control" name="description" value="${product.description}"/></td>
			</tr>
			<tr>
				<td>Type:</td>
				<td><select name="productType" class="form-control">
					<option value="BREAKFAST" selected>Breakfast</option>
					<option value="LUNCH">Lunch</option>
					<option value="DINNER">Dinner</option>
				</select></td>
			</tr>
			<tr>
				<td>Price:</td>
				<td><input type="text" class="form-control" name="price" value="${product.price}" /></td>
			</tr>
		</table>
		<input type="submit" class="btn btn-primary" />

	</form>
    </div>
 </div>
 </body>
 </html>
	