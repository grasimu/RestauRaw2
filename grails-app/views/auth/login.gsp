<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="layout" content="main" />
  <title>Login</title>
</head>
<body>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:form action="signIn">
    <input type="hidden" name="targetUri" value="${targetUri}" />
    <table>
      <tbody>
        <tr>
          <td>Username:</td>
          <td><input type="text" name="username" value="${username}" class="form-control" placeholder="Benutzername" required autofocus/></td>
        </tr>
        <tr>
          <td>Password:</td>
          <td><input type="password" class="form-control" placeholder="Password"  name="password" value="" required /></td>
        </tr>
        <tr>
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="${rememberMe}"> Remember me
                </label>
            </div>
          <td />
          <td><input class="btn btn-lg btn-primary btn-block" type="submit" value="Sign in" /></td>
        </tr>
      </tbody>
    </table>
  </g:form>
</body>
</html>
