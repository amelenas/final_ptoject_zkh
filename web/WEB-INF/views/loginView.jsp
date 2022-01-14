<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>

<jsp:include page="menu.jsp"></jsp:include>

<h3>Login Page</h3>

<p style="color: red;">${errorString}</p>

<form method="POST" action="${pageContext.request.contextPath}/controller?command=log_in">
    <input type="hidden" name="redirectId" value="${param.redirectId}" />
    <table border="0">
        <tr>
            <td>email</td>
            <td><input type="text" name="email" value= "${user.email}" /> </td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password" value= "${user.password}" /> </td>
              </tr>

        <tr>
            <td colspan ="2">
                <input type="submit" value= "Submit" />
                <a href="${pageContext.request.contextPath}/index.jsp">Cancel</a>
            </td>
        </tr>
    </table>
</form>

<p style="color:blue;">Login with:</p>
 <br>
</body>
</html>