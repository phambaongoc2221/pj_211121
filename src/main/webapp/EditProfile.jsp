<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thiết lập tài khoản</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</head>
<body>
<style>
    .form-control:focus {
        box-shadow: none;
        border-color: #BA68C8
    }

    .profile-button {
        background: #BA68C8;
        box-shadow: none;
        border: none
    }

    .profile-button:hover {
        background: #682773
    }

    .profile-button:focus {
        background: #682773;
        box-shadow: none
    }

    .profile-button:active {
        background: #682773;
        box-shadow: none
    }

    .back:hover {
        color: #682773;
        cursor: pointer
    }
</style>
<div class="container rounded bg-white mt-5">
    <div class="row">
        <div class="col-md-4 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" src="${profile.avatar}" width="90"><span>${profile.username}</span></div>
        </div>
        <div class="col-md-8">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <div class="d-flex flex-row align-items-center back"><i class="fa fa-long-arrow-left mr-1 mb-1"></i>
                        <a href="/">Back to home</a>
                    </div>
                </div>
                <form action="editProfile" method="post">
                    <div class="row mt-2">
                        Tên đăng nhập
                        <div class="col-md-6"><input type="text" class="form-control" placeholder="username" value="${profile.username}" readonly></div>
                    </div>
                    <div class="row mt-3">
                        Mật khẩu
                        <div class="col-md-6"><input type="text" class="form-control" placeholder="password" value="${profile.password}"></div>
                    </div>
                    <div class="row mt-3">
                        Số điện thoại
                        <div class="col-md-6"><input type="text" class="form-control" placeholder="soDT" value="${profile.soDT}"></div>
                    </div>
                    <div class="row mt-3">
                        Email
                        <div class="col-md-6"><input type="text" class="form-control" placeholder="email" value="${profile.email}"></div>
                    </div>
                    <div class="row mt-3">
                        Ảnh đại diện
                        <div class="col-md-6"><input type="text" class="form-control" placeholder="avatar" value="${profile.avatar}"></div>
                    </div>
                    <div class="row mt-3">
                        Đăng ký bán hàng
                        <select name="" class="form-select" aria-label="Default select example">
                            <option value="${profile.isSell}==0">Không</option>
                            <option value="${profile.isSell}==1">Đăng ký</option>
                        </select>
                    </div>
                    <div class="row mt-3">
                        Đăng ký quản trị viên
                        <select name="" class="form-select" aria-label="Default select example">
                            <option value="${profile.isAdmin}==0">Không</option>
                            <option value="${profile.isAdmin}==1">Đăng ký</option>
                        </select>
                    </div>
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                    <input type="submit" class="btn btn-success" value="Lưu thay đổi">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .cart-item{
            color: white;
        }
        .cart-item:hover{
            color: white;
        }
        .mySlides {display:none;}
        .btn-outline-success:hover {
            color: #fff;
            background-color: #ccc;
            border-color: /*#198754*/ black;
        }
        .flex-container {
            display: flex;
            flex-flow: row wrap;

            box-sizing: border-box;
            /*justify-content: space-around;*/
        }
        footer {
            flex: 100%;
            padding: 20px;
            text-align: center;
            background: #ddd;
        }
        .icon-footer{
            font-size: 30px;
            margin:8px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color:#dc3545 !important">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="#"><i class="fas fa-store" style="margin: 5px;"></i>VNFood</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active text-white" aria-current="page" href="/">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Về chúng tôi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/suggestion">Gợi ý dành cho bạn</a>
                </li>
                <c:if test="${sessionScope.acc != null}">
                <li class="nav-item">
                    <a class="nav-link text-white" href=""> Xin chào ${sessionScope.acc.username}</a>
                </li>
                </c:if>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/loadProfile">Thiết lập tài khoản</a>
                </li>

            </ul>
            <form class="d-flex" method="get" action="/search">
                <input name="txt" class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="margin: 5px;">
                <button class="btn btn-light" type="submit" style="background-color: white; margin: 5px;"><i class="fas fa-search"></i></button>
            </form>
            <div class="text-end">
                <button type="button" class="btn btn-danger" title="Giỏ hàng"><a href="cart.jsp" class="cart-item"><i class="fas fa-shopping-cart"></i></a></button>
                <!--<button type="button" class="btn btn-primary" style="margin: 5px;">
                  <a href="">Login</a>
                </button>-->
                <c:if test="${sessionScope.acc == null}">
                    <a class="btn btn-primary" href="login.jsp" role="button">Login</a>
                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <a class="btn btn-warning" href="/logout" role="button">Logout</a>
                </c:if>
            </div>
        </div>
    </div>
</nav>
<div class="flex-container">
<form class="row g-3" style="margin:30px; width: 50%;float:right">
    <div class="col-md-4">
        <label for="validationDefault01" class="form-label">Tên đăng nhập</label>
        <input type="text" placeholder="username" class="form-control" id="validationDefault01" value="${profile.username}" readonly>
        <label for="validationDefault02" class="form-label">Mật khẩu</label>
        <input type="text" placeholder="password" class="form-control" id="validationDefault02" value="${profile.password}" >
        <label for="validationDefault03" class="form-label">Số điện thoại</label>
        <input type="text" placeholder="soDT" class="form-control" id="validationDefault03" value="${profile.soDT}" >
    </div>
    <div class="col-md-4">
        <label for="validationDefaultUsername" class="form-label">Email</label>
        <div class="input-group">
            <span class="input-group-text" id="inputGroupPrepend2">@</span>
            <input type="text" placeholder="email" class="form-control" id="validationDefaultUsername"  value="${profile.email}" aria-describedby="inputGroupPrepend2">
        </div>

    </div>
    <label for="validationDefault04" class="form-label">Link ảnh đại diện</label>
    <input type="text" placeholder="avatar" class="form-control" id="validationDefault04" value="${profile.avatar}" required>
    <div class="col-md-3">
        <label for="validationDefault05" class="form-label">Đăng ký bán hàng</label>
        <select class="form-select" id="validationDefault05" required>
            <option selected value="${profile.isSell}==0">Không đăng ký</option>
            <option selected value="${profile.isSell}==1">Đăng ký</option>
        </select>
    </div>
    <div class="col-md-3">
        <label for="validationDefault06" class="form-label">Đăng ký quản trị viên</label>
        <select class="form-select" id="validationDefault06" required>
            <option selected value="${profile.isAdmin}==0">Không đăng ký</option>
            <option selected value="${profile.isAdmin}==1">Đăng ký</option>
        </select>
    </div>
    <div class="col-12">
        <button type="submit" class="btn btn-danger">Lưu thay đổi</button>
        <a class="btn btn-success" href="/" role="button">Trở về trang chủ</a>
    </div>
</form>
</div>
<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>