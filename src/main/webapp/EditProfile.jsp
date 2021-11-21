<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/20/2021
  Time: 9:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <title>Chỉnh sửa Trang cá nhân</title>
</head>
<body>
<header>
    <jsp:include page="menu.jsp"></jsp:include>
</header>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:weight@100;200;300;400;500;600;700;800&display=swap");

    body {
        background-color: white;
        font-family: "Poppins", sans-serif;
        font-weight: 300
    }

    .card {
        padding: 10px;
        border: none
    }

    .height {
        height: 20vh
    }

    .inputs span {
        font-size: 20px;
        font-family: 'Nunito Sans', 'Helvetica Neue', 'sans-serif';
        font-weight: 400;
        color: black;
    }

    .inputs input {
        height: 48px;
        border: 2px solid lightgray;
    }

    .inputs input:focus {
        border: 2px solid lightsalmon;
        box-shadow: none
    }

    label.radio {
        cursor: pointer;
        width: 100%
    }

    label.radio input {
        position: absolute;
        top: 0;
        left: 0;
        visibility: hidden;
        pointer-events: none
    }



    .name {
        font-size: 13px;
        font-weight: 600;
        color: #9e9e9e;
        margin-left: 3px
    }

    .options {
        text-decoration: none
    }

    .btn-outline-primary {
        color: #0000ff;
        border-color: #0000ff
    }

    .btn-outline-primary:hover {
        background-color: #0000ff;
        border-color: #0000ff
    }
</style>
<div class="container">
    <div class="row height d-flex justify-content-center align-items-center">
        <div class="col-md-8">
            <div class="card py-5">
                <span style="font-size: 30px; text-align: center; font-family: 'Nunito Sans', 'Helvetica Neue', 'sans-serif';" >Chỉnh sửa thông tin cá nhân<br><br></span>
                <form action="editProfile" method="post">
                    <div class="inputs px-4"> <span >Tên đăng nhập</span> <input name="username" type="text" class="form-control" value="${profile.username}"> </div>
                    <div class="row mt-3 g-2">
                        <div class="col-md-6">
                            <div class="inputs px-4"> <span >Mật khẩu</span> <input name="password" type="text" class="form-control" value="${profile.password}"> </div>
                        </div>
                        <div class="col-md-6">
                            <div class="inputs px-4"> <span >Số điện thoại</span> <input name="soDT" type="text" class="form-control" value="${profile.soDT}"> </div>
                        </div>
                    </div>
                    <div class="inputs px-4"> <span >Email</span> <input name="email" type="text" class="form-control" value="${profile.email}"> </div>
                    <div class="inputs px-4"> <span >Ảnh đại diện</span> <input name="avatar" type="text" class="form-control" value="${profile.avatar}"> </div>
                    <div class="mt-3 px-4 d-flex justify-content-between align-items-center"> <a href="/loadProfile" class="options">Quay lại</a> <input type="submit" class="btn btn-success" value="Lưu thay đổi"></div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>