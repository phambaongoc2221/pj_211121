<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/20/2021
  Time: 2:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Check out</title>
</head>
<body>
<div class="container mt-5 px-5">
    <div class="mb-4">
        <h2>Thông tin đặt hàng</h2>
    </div>
    <div class="row">
        <div class="col-md-8">
            <div class="card p-3">
                <form action="/cart-check-out" method="post">
                    <h6 class="text-uppercase">Thông tin đặt hàng</h6>
                    <span>Người nhận hàng</span>
                    <div class="inputbox mt-3"> <input type="text" name="nguoiNhan" class="form-control" required="required"></div>
                    <div class="row">
                        <div class="col-md-6">
                            <span>Địa chỉ nhận hàng</span>
                            <div class="inputbox mt-3 mr-2"> <input type="text" name="diaChiNhan" class="form-control" required="required"></div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <span>Số điện thoại</span>
                            <div class="inputbox mt-3 mr-2"> <input type="text" name="soDT" class="form-control" required="required"></div>
                        </div>
                        <div class="col-md-6">
                            <div class="inputbox mt-3 mr-2">
                                <select>
                                    <option>Thanh toán khi nhận hàng</option>
                                    <option>Thanh toán ngân hàng</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-success" value="Đặt hàng">
                    </div>
                </form>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card card-cascade card-ecommerce wider shadow p-3 mb-5 ">
                <!--Card Body-->
                <div class="card-body card-body-cascade">
                    <!--Card Description-->
                    <div class="card2decs">
                        <p class="heading1"><strong>HÓA ĐƠN</strong></p>
                        <p class="subtotal">Tổng tiền hàng<span class="float-right text1">${(total>0)?dcf.format(total):0}VNĐ</span></p>
                        <p class="shipping">Phí vận chuyển<span class="float-right text1">Miễn phí</span></p>
                        <p class="total"><strong>Tổng thanh toán</strong><span class="float-right totalText1"><span class="totalText2">${(total>0)?dcf.format(total):0}VNĐ</span></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
