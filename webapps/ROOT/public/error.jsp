<%@ page import = "java.util.*" %>
<%
StringBuilder message = new StringBuilder();

if (Boolean.valueOf(request.getParameter("showParameters"))) {
	message.append("= Request Parameters =\n");
	Map<String, String[]> parameters = request.getParameterMap();
	for(String name : parameters.keySet()) {
		String[] values = parameters.get(name);		
		if (values.length == 1) {
			message.append(name + " = " + values[0] + "\n");
		} else {
			message.append(name + " = " + Arrays.asList(values) + "\n");
		}
	}
	message.append("\n");
}

message.append("= Request Attributes =\n");
Enumeration<String> attrEn = request.getAttributeNames();
while (attrEn.hasMoreElements()) {
    String name = attrEn.nextElement();
	message.append(name + " = " + request.getAttribute(name) + "\n");
}
message.append("\n");

message.append("= Context Attributes =\n");
attrEn = getServletContext().getAttributeNames();
while (attrEn.hasMoreElements()) {
    String name = attrEn.nextElement();
	message.append(name + " = " + getServletContext().getAttribute(name) + "\n");
}
message.append("\n");
request.setAttribute("message", message);

%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<tags:layout>
<h1>Error Page</h1>
<pre>${message}</pre>
</tags:layout>
