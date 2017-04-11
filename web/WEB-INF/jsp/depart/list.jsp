<%-- 
    Document   : index
    Created on : Feb 27, 2017, 12:06:29 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <base href="${pageContext.servletContext.contextPath}/">
        <style>
            .container{
                width:1500px;
                float: left;
            }
            header{
                width: 100%;
                height: 50px;
            }
            p{
                font-size: 50px;
                font-weight: 900;
                color: white;
                text-shadow: 0 0 20px orangered;
                float: left;
                margin-left: 100px;
            }
            .menu ul {
                width: 630px;
                height: 50px;
                float: left;
                margin-top: 30px;
                margin-left: 120px;
                padding-bottom: 20px;
                text-align: center;
                font-family: Raleway;
                box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
                list-style-type: none;
            }
            .menu #ul-1 {
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
                margin-right: 80px;
                margin-top: 50px; 
            }
            .login a{
                text-decoration: none;
                font-size: 20px;
                color: whitesmoke;
                font-weight: 900;
                text-align: center;
            }
            #content{
                width: 100%;
                float: left;
            }
            #content h2{
                text-align: center;
                -webkit-box-sizing: content-box;
                -moz-box-sizing: content-box;
                box-sizing: content-box;
                color: #1eacff;
                font-size: 50px;
                font-weight: 900;
                -o-text-overflow: ellipsis;
                text-overflow: ellipsis;
                text-shadow: 2px 2px 2px rgba(0,0,0,0.5) ;
            }
            #content table{
                width: 100%;
                text-align: center;
            }
            .insert{
                float: right;
                text-decoration: none;
                font-size: 30px;
                margin-right: 30px;

            }
            .table-fill {
                background: white;
                border-radius:3px;
                border-collapse: collapse;
                margin-left: 250px;
                max-width: 500px;
                padding:5px;
                width: 100%;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
                animation: float 5s infinite;
            }

            th {
                color:#D5DDE5;;
                background:#1b1e24;
                border-bottom:4px solid #9ea7af;
                border-right: 1px solid #343a45;
                font-size:23px;
                font-weight: 100;
                padding:24px;
                text-align:left;
                text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
                vertical-align:middle;
            }

            th:first-child {
                border-top-left-radius:3px;
            }

            th:last-child {
                border-top-right-radius:3px;
                border-right:none;
            }

            tr {
                border-top: 1px solid #C1C3D1;
                border-bottom-: 1px solid #C1C3D1;
                color:#666B85;
                font-size:16px;
                font-weight:normal;
                text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);

            }

            tr td a{
                text-decoration: none;
                color:#666B85;
            }
            tr td a:hover{
                color:#FFFFFF;
            }
            tr:hover td {
                background:#4E5066;
                color:#FFFFFF;
                border-top: 1px solid #22262e;
                border-bottom: 1px solid #22262e;
            }

            tr:first-child {
                border-top:none;
            }

            tr:last-child {
                border-bottom:none;
            }

            tr:nth-child(odd) td {
                background:#EBEBEB;
            }

            tr:nth-child(odd):hover td {
                background:#4E5066;
            }

            tr:last-child td:first-child {
                border-bottom-left-radius:3px;
            }

            tr:last-child td:last-child {
                border-bottom-right-radius:3px;
            }

            td {
                background:#FFFFFF;
                padding:20px;
                text-align:left;
                vertical-align:middle;
                font-weight:300;
                font-size:18px;
                text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
                border-right: 1px solid #C1C3D1;
            }

            td:last-child {
                border-right: 0px;
            }

            th.text-left {
                text-align: center;
            }
            #input1 {
                -webkit-box-sizing: content-box;
                -moz-box-sizing: content-box;
                box-sizing: content-box;
                padding: 10px 20px 10px 9px;
                border: 1px solid rgba(10,10,10,0.66);
                -webkit-border-radius: 96px;
                border-radius: 96px;
                font: normal 16px/normal "Times New Roman", Times, serif;
                color: rgba(0,142,198,1);
                -o-text-overflow: clip;
                text-overflow: clip;
                background: rgba(255,255,255,1);
                -webkit-box-shadow: 5px 5px 8px 2px rgba(0,0,0,0.4) ;
                box-shadow: 5px 5px 8px 2px rgba(0,0,0,0.4) ;
                -webkit-transform: rotateY(0.5729577951308232deg)   ;
                transform: rotateY(0.5729577951308232deg)   ;
                -webkit-transform-origin: 0 50% 0;
                transform-origin: 0 50% 0;
            }
            #button1 {
                -webkit-box-sizing: content-box;
                -moz-box-sizing: content-box;
                box-sizing: content-box;
                cursor: pointer;
                padding: 10px 13px;
                border: 1px solid #018dc4;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                font: normal normal bold 16px/normal "Times New Roman", Times, serif;
                color: rgba(255,255,255,0.9);
                -o-text-overflow: clip;
                text-overflow: clip;
                word-spacing: 1px;
                background: rgba(1,153,217,0.9);
                -webkit-box-shadow: 2px 2px 2px 0 rgba(90,90,90,1) ;
                box-shadow: 2px 2px 2px 0 rgba(90,90,90,1) ;
                text-shadow: -1px -1px 0 rgba(15,73,168,0.66) ;
                -webkit-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
                -moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
                -o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
                transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
                -webkit-transform: rotateY(0.5729577951308232deg)   ;
                transform: rotateY(0.5729577951308232deg)   ;
                -webkit-transform-origin: 0 50% 0;
                transform-origin: 0 50% 0;
            }
        </style>
    </head>
    <body style="background-image: url('${pageContext.servletContext.contextPath}/img/login.jpg')">
        <div class="container">
            <header>
                <p>ABC Group</p>
                <div class="menu">
                    <ul id="ul-1">
                        <li class="link-1"><a href="index1.htm">Trang chủ</a></li>
                        <li class="link-1"><a href="depart/list.htm">Phòng ban</a></li>
                        <li class="link-1"><a href="staff/list.htm">Nhân viên</a></li>
                        <li class="link-1"><a href="staff/list1.htm">Hồ sơ</a></li>
                    </ul>
                </div>
                <div class="login">
                    <a href="user/login.htm">Đăng nhập</a>
                </div>
            </header>
            <div id="content">
                <h2>Quản lý phòng ban</h2>
                <table>
                    <tr>
                        <th>Mã phòng ban</th>
                        <th>Tên phòng ban</th>
                    </tr>
                    <c:forEach var="d" items="${depart}">
                        <tr>
                            <td style="">${d.id}</td>
                            <td>${d.name}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
