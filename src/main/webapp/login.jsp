<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bookshop Website</title>
<style>
body {
    background-image: url("https://cdn.pixabay.com/photo/2021/01/29/17/17/sky-5961642_960_720.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center;
}
.login-header {
    color: blue;
    text-align: center;
    font-family:"Times New Roman";
    font-size:20px;
}
</style>
</head>
<body>
    <div style="text-align: center">
        <h1 class="login-header">Admin Login</h1>
        <form action="login" method="post">
            <label for="email">Email:</label>
            <input name="email" size="30" />
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password" size="30" />
            <br>${message}
            <br><br>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>