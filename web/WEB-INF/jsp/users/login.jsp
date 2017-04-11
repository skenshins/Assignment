<%-- 
    Document   : index
    Created on : Feb 26, 2017, 8:08:53 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tập đoàn ABC GROUP - Login</title>
        <link href="<c:url value="/Css/login.css" />" rel="stylesheet">
    </head>
    <body style="background-image: url('${pageContext.servletContext.contextPath}/img/login.jpg')">
        <form action="../index.htm" method="post">
            <div id="form">
                <p>Đăng nhập</p>
                <table>
                    <tr>
                        <td style="font-size: 20px; font-weight: 900;">Tên đăng nhập:</td>
                        <td><input type="text" name="txtUser" class="text-input" placeholder="Tên đăng nhập"/></td>
                    </tr>
                    <tr>
                        <td style="float: right; font-size: 20px; font-weight: 900; margin-top: 5px;">Mật khẩu:</td>
                        <td><input type="password" name="txtPass" class="text-input" placeholder="Password"/></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td></td>
                        <td><button class="button" name="btnLogin">Đăng nhập</button></td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </form>
    </body>
</html>
