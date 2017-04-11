<%-- 
    Document   : index
    Created on : Feb 26, 2017, 8:59:37 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tập đoàn ABC Group - Trang Chủ</title>
        <style>
            .container{
                width:1500px;
                float: left;
                background-color: blanchedalmond;
            }
            header{
                width: 100%;
                height: 50px;
            }
            p{
                font-size: 40px;
                font-weight: 900;
                color: white;
                text-shadow: 0 0 20px orangered;
                float: left;
                margin-left: 100px;
            }
            ul {
                width: 700px;
                height: 50px;
                float: left;
                margin-top: 30px;
                margin-left: 100px;
                padding-bottom: 20px;
                text-align: center;
                font-family: Raleway;
                box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
                list-style-type: none;
            }
            #ul-1 {
                background: #3fa46a;
            }
            .link-1 {
                float: left;
                transition: 0.3s ease;
                background: #3fa46a;
                color: #ffffff;
                font-size: 20px;
                text-decoration: none;
                border-top: 4px solid #3fa46a;
                border-bottom: 4px solid #3fa46a;
                padding: 20px 0;
                margin: 0 20px;
            }
            .link-1:hover {
                border-top: 4px solid #ffffff;
                border-bottom: 4px solid #ffffff;
                padding: 6px 0;
            }
            .menu a{
                color: white;
                text-decoration: none;
            }
            .login{
                float: right;
                margin-right: 70px;
                margin-top: 60px; 
            }
            .login a{
                text-decoration: none;
                font-size: 20px;
                color: whitesmoke;
                font-weight: 900;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <header>
                <p>ABC Group</p>
                <div class="menu">
                    <ul id="ul-1">
                        <li class="link-1"><a href="index.htm"/>Trang chủ</li>
                        <li class="link-1"><a href="departs.htm"/>Phòng ban</li>
                        <li class="link-1"><a href="staff.htm"/>Nhân viên</li>
                        <li class="link-1"><a href="records.htm"/>Hồ sơ</li>
                        <li class="link-1"><a href="total.htm"/>Tổng kết</li>
                    </ul>
                </div>
                <div class="login">
                    <a href="user/index.htm">Đăng nhập</a>
                </div>
            </header>

        </div>
    </body>
</html>
