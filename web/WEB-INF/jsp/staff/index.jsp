<%-- 
    Document   : index
    Created on : Feb 20, 2017, 10:03:48 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
        </style>
    </head>
    <body style="background-image: url('${pageContext.servletContext.contextPath}/img/login.jpg')">
        <div class="container">
            <header>
                <p>ABC Group</p>
                <div class="menu">
                    <ul id="ul-1">
                        <li class="link-1"><a href="index.htm">Trang chủ</a></li>
                        <li class="link-1"><a href="depart/index.htm">Phòng ban</a></li>
                        <li class="link-1"><a href="staff/index.htm">Nhân viên</a></li>
                        <li class="link-1"><a href="staff/report.htm">Hồ sơ</a></li>
                        <li class="link-1"><a href="user/taiKhoan.htm">Tài khoản</a></li>
                    </ul>
                </div>
                <div class="login">
                    <a href="user/login.htm">Đăng xuất</a>
                </div>
            </header>
            <div id="content">
                <h2>Quản lý nhân viên</h2>
                <div id="top">
                    <spring:form action="staff.htm" modelAttribute="dep" method="POST">
                        <div style="float: left;">
                            <label style="font-size: 20px; font-weight: 900;">Mã nhân viên:</label>   
                            <spring:input id="input1" path="id"/>  
                        </div>
                        <div style="float: left;">
                            <label style="font-size: 20px; font-weight: 900;">Họ và tên:</label>  
                            <spring:input id="input1" path="name"/>
                        </div>
                        <div style="float: left;">
                            <label style="font-size: 20px; font-weight: 900;">Giới tính:</label>   
                            <spring:input id="input1" path="gender"/>  
                        </div>
                        <div style="float: left;">
                            <label style="font-size: 20px; font-weight: 900;">Ngày sinh:</label>  
                            <spring:input id="input1" path="birthday"/>
                        </div>
                        <div style="float: left;">
                            <label style="font-size: 20px; font-weight: 900;">Email:</label>   
                            <spring:input id="input1" path="email"/>  
                        </div>
                        <div style="float: left; margin-left: 50px;">
                            <label style="font-size: 20px; font-weight: 900;">Số điện thoại:</label>  
                            <spring:input id="input1" path="phone"/>
                        </div>
                        <div style="float: left; margin-left: 50px;">
                            <label style="font-size: 20px; font-weight: 900;">Lương:</label>   
                            <spring:input id="input1" path="salary"/>  
                        </div>
                        <div style="float: left; margin-left: 50px;">
                            <label style="font-size: 20px; font-weight: 900;">Notes:</label>  
                            <spring:input id="input1" path="notes"/>
                        </div>
                        <div style="float: left; margin-left: 50px;">
                            <label style="font-size: 20px; font-weight: 900;">Tên phòng ban:</label>  
                            <spring:input id="input1" path="depart"/>
                        </div>
                        <div style="float: left; margin-left: 50px;">
                            <spring:button id="button1" name="insert" >Thêm</spring:button>
                            <spring:button id="button1" name="update">Sửa</spring:button>
                            </div>
                    </spring:form>
                </div>
                <table border="1"> 
                    <tr>
                        <th>Mã NV</th>
                        <th>Họ và tên</th>
                        <th>Giới tính</th>
                        <th>Ngày sinh</th>
                        <th>Email</th>
                        <th>Số điện thoại</th>
                        <th>Lương</th>
                        <th>Notes</th>
                        <th>Phòng</th>
                        <th>Xóa</th>
                        <th>Sửa</th>
                    </tr>
                    <c:forEach var="s" items="${staff}">
                        <tr>  
                            <td>${s.id}</td>  
                            <td>${s.name}</td>  
                            <td>${s.gender?'Nam':'Nữ'}</td>
                            <td>${s.birthday}</td>
                            <td>${s.email}</td>
                            <td>${s.phone}</td>
                            <td>${s.salary}</td>
                            <td>${s.notes}</td>
                            <td>${s.depart.name}</td> 
                            <td><a href="staff/delete/${s.id}.htm">Delete</a></td>
                            <td>
                                <form action="staff/index.htm">
                                    <input name="id" hidden="" value="${s.id}"/>
                                    <input name="name" hidden="" value="${s.name}"/>
                                    <input name="gender" hidden="" value="${s.gender}"/>
                                    
                                    <input name="email" hidden="" value="${s.email}"/>
                                    <input name="phone" hidden="" value="${s.phone}"/>
                                    <input name="salary" hidden="" value="${s.salary}"/>
                                    <input name="notes" hidden="" value="${s.notes}"/>
                                    <input name="depart.name" hidden="" value="${s.depart.name}"/>
                                    <input type="submit" value="Edit">
                                </form>
                            </td>
                        </tr> 
                    </c:forEach> 
                </table>
            </div>
        </div>
    </body>
</html>
