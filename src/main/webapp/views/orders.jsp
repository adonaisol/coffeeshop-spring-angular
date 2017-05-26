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
            <li><a href="/admin/persons">Users</a></li>
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
    	<h1>All Orders</h1>
		<table class="table">
		<c:forEach var="order" items="${orders}">
		<tr>
			<td>${order.id}</td>
			<td>${order.orderDate}</td>
			<td>${order.person.firstName} ${order.person.lastName}</td>
			<td>${order.orderLines[0].product.productName}</td>
			<td>${order.orderLines[0].product.price}</td>
			<td>${order.orderLines[0].quantity}</td>
			<td>${order.totalAmount}</td>
			<%-- <td>${person.address.country}</td>
			<td>${person.address.zipcode}</td> --%>
			<%-- <td><a href="person/${person.id}">edit</a></td>
			<td><a href="delete/${person.id}" style="color:red">delete</a></td> --%>
		</tr>
		</c:forEach>
		</table>
		
    </div>
 </div>
 
</body>
</html>