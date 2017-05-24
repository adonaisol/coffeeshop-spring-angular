<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css"/>

<title>Login</title>
</head>
<body>
	<%-- <div class="container">
		<div class="row">
		<c:url var="loginUrl" value="/login" />
		<form class="form-inline" action="${loginUrl}" method="post">
			
			<label>User: </label><input class="form-control" type="text" id="username" name="username" />
			<label>Password: </label><input class="form-control" type="password" id="password" name="password" /> 
			<input class="btn btn-success" type="submit" value="Submit" /> 
			<c:if test="${param.error != null}">
				<p class="alert alert-danger">
					Invalid username and password!
				</p>
			</c:if>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
		</div>
	</div> --%>
	<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Sign in to continue</h1>
            <div class="account-wall">
                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                    alt="">
                <c:url var="loginUrl" value="/login" />
                <form class="form-signin" action="${loginUrl}" method="post">
	                <input type="text" class="form-control" placeholder="Username" id="username" name="username" required autofocus>
	                <input type="password" class="form-control" placeholder="Password" id="password" name="password" required>
	                <button class="btn btn-lg btn-primary btn-block" type="submit">
	                    Sign in</button>
	                <label class="checkbox pull-left">
	                    <input type="checkbox" value="remember-me">
	                    Remember me
	                </label>
	                <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
	                <c:if test="${param.error != null}">
						<p class="alert alert-danger">
							Invalid user-name and password!
						</p>
					</c:if>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                </form>
            </div>
            <a href="#" class="text-center new-account">Create an account </a>
        </div>
    </div>
</div>
</body>
</html>