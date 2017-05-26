<!DOCTYPE html>
<html>
<head>
<style>
#navcontainer ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333333;
}

#navcontainer li {
    float: left;
}

#navcontainer li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}
#navcontainer li a:hover {
    background-color: #111111;
}
</style>
</head>
<body>
<div id="navcontainer">
	<ul>
		<li><a href="${pageContext.request.contextPath}/">Home</a></li>
		<% if (request.getUserPrincipal() == null ) { %>
		<li><a href="${pageContext.request.contextPath}/public/login.jsp">Login</a></li>
		<% } else { %>
		<li><a href="${pageContext.request.contextPath}/public/logout.jsp">Logout</a></li>
		<% } %>
	</ul>
</div>

<div class="main-container">
<jsp:doBody/>
</div>

</body>
</html>