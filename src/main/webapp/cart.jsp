
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="DAO.*"%>
<%@page import="Entity.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.DecimalFormat"%>

<%
  DecimalFormat dcf = new DecimalFormat("#.##");
  request.setAttribute("dcf", dcf);
  Account auth = (Account) request.getSession().getAttribute("acc");
  if (auth != null) {
    request.setAttribute("person", auth);
  }
  ArrayList<Item> cart_list = (ArrayList<Item>) session.getAttribute("cart-list");
  List<Item> cartProduct = null;
  if (cart_list != null) {
    FoodDAO pDao = new FoodDAO();
    cartProduct = pDao.getCartProducts(cart_list);
    double total = pDao.getTotalCartPrice(cart_list);
    request.setAttribute("total", total);
    request.setAttribute("cart_list", cart_list);
  }
%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <title>Cart</title>
  <style type="text/css">
    .table tbody td{
      vertical-align: middle;
    }
    .btn-incre, .btn-decre{
      box-shadow: none;
      font-size: 25px;
    }
  </style>
  <jsp:include page="menu.jsp"></jsp:include>
</head>
<body>


<div class="container my-3">
  <div class="d-flex py-3"><h3>Total Price: vnd ${(total>0)?dcf.format(total):0} </h3> </div>
  <table class="table table-light">
    <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
    </tr>
    </thead>
    <tbody>
    <%
      if (cart_list != null) {
        for (Item c : cartProduct) {
    %>
    <tr>
      <td><%=c.getName()%></td>
      <td><%= dcf.format(c.getPrice())%></td>
      <td>
        <form action="order-now" method="post" class="form-inline">
          <input type="hidden" name="id" value="<%= c.getId()%>" class="form-input">
          <div class="form-group d-flex justify-content-between">
            <a class="btn bnt-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%=c.getId()%>"><i class="fas fa-plus-square"></i></a>
            <input type="text" name="quantity" class="form-control"  value="<%=c.getQuantity()%>" readonly>
            <a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%=c.getId()%>"><i class="fas fa-minus-square"></i></a>
          </div>

        </form>
      </td>
      <td><a href="remove-from-cart?id=<%=c.getId() %>" class="btn btn-sm btn-danger">Remove</a></td>
    </tr>

    <%
        }}%>
    </tbody>
  </table>
</div>

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