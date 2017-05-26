<html><body>
<a href="${pageContext.request.contextPath}">Home</a>
<pre>
<%
session.invalidate();
out.println("You have been logged out!");
%>
</pre>
</body></html>
