<%
String message = "Hello " + request.getUserPrincipal().getName();
request.setAttribute("message", message);
%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<tags:layout>
<pre>${message}</pre>
</tags:layout>
