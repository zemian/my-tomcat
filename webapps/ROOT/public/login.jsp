<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<tags:layout>
<form action="j_security_check" method="post">
  <p/>Username: <input type="text" name="j_username">
  <p/>Password: <input type="password" name="j_password">
  <p/><input type="submit" name="action" value="login">
</form>
</tags:layout>
