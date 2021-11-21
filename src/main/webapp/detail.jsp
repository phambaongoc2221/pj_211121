<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js">
    <link rel='stylesheet' href='https://sachinchoolur.github.io/lightslider/dist/css/lightslider.css'>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    <title>Chi tiết món ăn</title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap");

        body {
            background-color: #eee;
            font-family: "Poppins", sans-serif
        }

        .card {
            background-color: #fff;
            padding: 14px;
            border: none
        }

        .demo {
            width: 100%
        }

        ul {
            list-style: none outside none;
            padding-left: 0;
            margin-bottom: 0
        }

        li {
            display: block;
            float: left;
            margin-right: 6px;
            cursor: pointer
        }

        img {
            display: block;
            height: auto;
            width: 100%
        }

        .stars i {
            color: #f6d151
        }

        .stars span {
            font-size: 13px
        }

        hr {
            color: #d4d4d4
        }

        .badge {
            padding: 5px !important;
            padding-bottom: 6px !important
        }

        .badge i {
            font-size: 10px
        }

        .profile-image {
            width: 20px
        }

        .comment-ratings i {
            font-size: 13px
        }

        .username {
            font-size: 12px
        }

        .comment-profile {
            line-height: 17px
        }

        .date span {
            font-size: 12px
        }

        .p-ratings i {
            color: #f6d151;
            font-size: 12px
        }

        .btn-long {
            padding-left: 35px;
            padding-right: 35px
        }

        .buttons {
            margin-top: 15px
        }

        .buttons .btn {
            height: 46px
        }

        .buttons .cart {
            border-color: #ff7676;
            color: #ff7676
        }

        .buttons .cart:hover {
            background-color: #e86464 !important;
            color: #fff
        }

        .buttons .buy {
            color: #fff;
            background-color: #ff7676;
            border-color: #ff7676
        }

        .buttons .buy:focus,
        .buy:active {
            color: #fff;
            background-color: #ff7676;
            border-color: #ff7676;
            box-shadow: none
        }

        .buttons .buy:hover {
            color: #fff;
            background-color: #e86464;
            border-color: #e86464
        }

        .buttons .wishlist {
            background-color: #fff;
            border-color: #ff7676
        }

        .buttons .wishlist:hover {
            background-color: #e86464;
            border-color: #e86464;
            color: #fff
        }

        .buttons .wishlist:hover i {
            color: #fff
        }

        .buttons .wishlist i {
            color: #ff7676
        }

        .comment-ratings i {
            color: #f6d151
        }

        .followers {
            font-size: 9px;
            color: #d6d4d4
        }

        .store-image {
            width: 42px
        }

        .dot {
            height: 10px;
            width: 10px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            margin-right: 5px
        }

        .bullet-text {
            font-size: 12px
        }

        .my-color {
            margin-top: 10px;
            margin-bottom: 10px
        }

        label.radio {
            cursor: pointer
        }

        label.radio input {
            position: absolute;
            top: 0;
            left: 0;
            visibility: hidden;
            pointer-events: none
        }

        label.radio span {
            border: 2px solid #8f37aa;
            display: inline-block;
            color: #8f37aa;
            border-radius: 50%;
            width: 25px;
            height: 25px;
            text-transform: uppercase;
            transition: 0.5s all
        }

        label.radio .red {
            background-color: red;
            border-color: red
        }

        label.radio .blue {
            background-color: blue;
            border-color: blue
        }

        label.radio .green {
            background-color: green;
            border-color: green
        }

        label.radio .orange {
            background-color: orange;
            border-color: orange
        }

        label.radio input:checked+span {
            color: #fff;
            position: relative
        }

        label.radio input:checked+span::before {
            opacity: 1;
            content: '\2713';
            position: absolute;
            font-size: 13px;
            font-weight: bold;
            left: 4px
        }

        .card-body {
            padding: 0.3rem 0.3rem 0.2rem
        }
    </style>

</head>
<body>
<header>
    <jsp:include page="menu.jsp"></jsp:include>
</header>

<main>

    <div class="container-fluid mt-2 mb-3">
        <div class="row no-gutters">
            <div class="col-md-5 pr-2">
                <div class="card">
                    <div class="demo">
                        <ul id="lightSlider">
                            <li> <img src="${detail.image}" /> </li>
                        </ul>
                    </div>
                </div>
                <div class="card mt-2">
                    <h4 style="font-size: 30px">Đánh giá món ăn</h4>
                    <hr>
                    <c:if test="${sessionScope.acc != null}">
                        <form action="/addComment" method="post">
                            <div class="bg-light p-2">
                                <div class="d-flex flex-row user-info"><img  src="${sessionScope.acc.avatar}" style="width: 30px; height: 30px; border-radius: 50%">

                                    <!--<textarea class="form-control ml-1 shadow-none textarea" name="comment">
                                  </textarea>-->
                                    <div class="mb-3">
                                        <label for="exampleFormControlTextarea1" class="form-label" style="margin-left: 10px; font-size: 18px; font-weight:400">${sessionScope.acc.username}</label><br>
                                        <div style="display: flex; flex-direction: column">
                                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" cols="80" name="comment"></textarea><br>
                                            <span>Đánh giá <input name="rating" style="margin-left: 20px;" aria-label="quantity" class="input-qty" max="5" min="1" type="number" value="1"><br></span>

                                        </div>
                                    </div>


                                </div>
                                <div class="modal-footer">
                                    <!--Ratings-->

                                    <!--End rating-->
                                    <input type="submit" class="btn btn-success" value="Đánh giá">
                                </div>
                            </div>
                        </form>
                    </c:if>
                    <c:if test="${sessionScope.acc == null}">
                        <div class="alert-danger" role="alert">
                            <p>Đăng nhập để review món ăn!</p>
                        </div>
                    </c:if>

                    <c:forEach items="${cmt}" var="a">
                   <div style="display: inline-flex;justify-content: space-between">
                       <div  style='margin-left: 30px;display: flex;margin-top: 10px;margin-bottom:10px;'>
                           <div style="margin-top:0px;margin-right: 10px;font-size: 30px;">
                               <img  src="${a.avatar}" style="width: 30px; height: 30px; border-radius: 50%">
                           </div>
                           <div style="border-radius: 10px;max-width: 300px;">
                               <span style="margin-left:10px;margin-right:10px;font-size:18px; font-weight:400">${a.username}</span><br>
                               <p style="margin-left:10px;margin-right:10px;font-size:14px; ">${a.comment}</p>
                           </div>
                       </div>
                       <span style="margin-top: 50px;"> Xếp hạng đánh giá <input value="${a.rating}" name="rating" style="margin-left: 20px;" aria-label="quantity" class="input-qty" max="5" min="1" type="number" disabled><br></span>
                   </div>
                   </c:forEach>
                </div>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="about"> <span  style="font-size:40px; font-weight:500">${detail.name}</span>
                        <p  style="font-size:35px;font-weight:500"> ${detail.price} VNĐ</p>
                    </div>
                    <div class="buttons"><button class="btn btn-warning btn-long buy"><a href="add-to-cart?id=${detail.id }" style="color: white;text-decoration: none;">Thêm vào giỏ hàng</a></button></div>
                    <hr>
                    <div class="product-description">
                        <div class="mt-2">
                            <p style="font-size: 16px;">${detail.script}</p>
                        </div>
                    </div>
                </div>
                <div class="card mt-2"> <span style="font-size:30px; font-weight:400">Gợi ý cho bạn</span>
                    <div class="similar-products mt-2 d-flex flex-row">
                        <c:forEach items="${listF}" var="i">
                            <div class="card border p-1" style="width: 15rem;margin-right: 3px; min-height: 50px"> <a href="detail?id=${i.id}"><img style="width: 100%; height: 200px" src="${i.image}" class="card-img-top" alt="..."></a>
                                <div class="card-body">
                                    <h6 class="card-title"><a href="detail?id=${i.id}" style="color: #dc3545; font-size:20px; font-weight:500">${i.name}</a></h6>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>

</main>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>


<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script>
<script src='https://sachinchoolur.github.io/lightslider/dist/js/lightslider.js'></script>

</body>
</html>