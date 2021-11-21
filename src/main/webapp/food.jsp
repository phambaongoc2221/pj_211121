<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"crossorigin="anonymous">
  <link rel="stylesheet" href="../style.css">
  <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
  <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
  <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

  <title>VNFood</title>
  <style>
    .card-img-top{
      height: 350px;
      weight: 800px
    }
    @media only screen and (min-width: 400px) and (max-width:990px){

    }
    @media only screen and (min-width: 400px) and (max-width:990px){
      .all-button{
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
        margin: auto;
      }
      .button-1{
        margin-left: 13px;
        margin-bottom: 10px;
      }

    }
    .container-sm{
      display: flex;
      align-items: center;
      justify-content: space-around;
      box-shadow: 3px 3px 3px #aaaaaa;
    }
    .card-img-top{
      margin-top: 20px;
      height: 180px;

    }
    .slick-prev{
      border: none;
      font-size: 40px;
      color: chocolate;
      margin-right: 3px;

    }
    .slick-arrow{
      border: none;
      font-size: 40px;
      color: chocolate;
    }
  </style>
</head>
<body>


<main>
  <header>
    <jsp:include page="menu.jsp"></jsp:include>
    <section class="jumbotron text-center">
      <div class="container">
        <h1 class="jumbotron-heading">Món ăn truyền thống Việt Nam qua các vùng miền</h1>
        <p class="lead text-muted mb-0">Nét đặc trưng riêng của ẩm thực Việt Nam</p>
        <c:if test="${sessionScope.acc == null}">
          <div class="alert-danger" role="alert">
            <p>Đăng nhập để đặt món ăn!</p>
          </div>
        </c:if>
      </div>
    </section>
    <!--end of menu-->
  </header>
  <div class="container">
    <div class="container-sm" style="background-color: rgb(245, 244, 244); align-items: center;  ">
      <div class="card" style="width: 18rem;margin-right: 9px;min-height:150px;">
        <div class="card-body">
          <img src="https://halotravel.vn/wp-content/uploads/2020/08/com-lang-vong-7.jpg" class="card-img-top" alt="...">
          <h5 class="card-title">Cốm làng Vòng</h5>
          <p class="card-text">Đặc sản hương sắc mùa thu Hà Nội, thơm ngon</p>
          <a href="https://g.page/Com_Lang_Vong?share" class="btn btn-primary">Khám phá địa điểm</a>
        </div>
      </div>
      <div class="card" style="width: 18rem;margin-right: 9px;min-height:400px;">
        <img src="https://baodansinh.mediacdn.vn/2021/1/20/10-1611115056322146355222.png" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Bún ốc nguội</h5>
          <p class="card-text">Món ăn dân dã và chỉ riêng Hà Nội. Bún ốc ngọt mát</p>
          <a href="https://goo.gl/maps/TsnqKc8YELgtJkJS9" class="btn btn-primary">Khám phá địa điểm</a>
        </div>
      </div>
      <div class="card" style="width: 18rem;margin-right: 9px;min-height:400px;">
        <img src="https://dulichtoday.vn/wp-content/uploads/2019/03/dac-san-hue-banh-chung-nhat-le.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Bánh chưng Nhật Lệ</h5>
          <p class="card-text"> Nhiều lò bánh thơm ngon ở đường phố xứ Huế</p>
          <a href="https://goo.gl/maps/AsYkkVnSXZSiAZFZ8" class="btn btn-primary">Khám phá địa điểm</a>
        </div>
      </div>
      <div class="card" style="width: 18rem;margin-right: 9px;min-height:400px;">
        <img src="https://diachiamthuc.vn/wp-content/uploads/2021/03/dac-san-da-lat.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Mứt Đà Lạt</h5>
          <p class="card-text">Đặc sản nổi tiếng như mứt dâu,.. các loại mứt khác nhau.</p>
          <a href="https://goo.gl/maps/SmNStG2oG89U94v98" class="btn btn-primary">Khám phá địa điểm</a>
        </div>
      </div>
      <div class="card" style="width: 18rem;margin-right: 9px;min-height:400px;">
        <img src="https://images.foody.vn/res/g104/1034173/prof/s576x330/foody-upload-api-foody-mobile-banhmi-200703093224.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Bánh mì</h5>
          <p class="card-text">Món ăn sáng đơn giản, nhanh gọn và quen thuộc</p>
          <a href="https://goo.gl/maps/bFgr3Rju49e36fAT6" class="btn btn-primary">Khám phá địa điểm</a>
        </div>
      </div>
    </div>


    <div class="container pt-5">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <c:forEach items="${list}" var="o">
          <div class="col">
            <div class="card p-0">
              <div class="card-img-top"><a href="detail?id=${o.id}"> <img style="height: 100%;width: 100%;" src="${o.image}"></a></div>
              <div class="card-body ">
                <div style="text-align: center;" >
                  <h4 class="card-title show_txt"> </h4>
                  <h3 class="card-text food-title" style="color:green;"><a href="detail?id=${o.id}" title="View Food" style="text-decoration:none; color:chocolate">${o.name}</a></h3>
                  <p style="font-size: 20px; color:#084298;" class="money">${o.price} VNĐ</p>
                </div>
                <c:if test="${sessionScope.acc != null}">
                  <div class="all-button" style="margin-top: 20px;"><hr>
                    <button  type="button" class="btn button-1 btn-danger btn-cart"  style="margin-right: 15px;min-width: 100px;"><a href="add-to-cart?id=${o.id}" style="color: white; text-decoration: none">Thêm vào giỏ hàng</a></button>

                  </div>
                </c:if>
              </div>
            </div>
          </div>
        </c:forEach>


      </div>
    </div>
    <div class="hotline-phone-ring-wrap">
      <div class="hotline-bar">
        <a href="tel:0123456789">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
            <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
          </svg>
        </a>
      </div>
    </div>
  </div>

</main>

<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript" src="slick/slick.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script>
  $(document).ready(function(){
    $('.container-sm').slick({
              slidesToShow: 4,
              slidesToScroll: 1,
              arrows:true,
              prevArrow: '<div class="slick-prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>',
              nextArrow: '<div class="slick-next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>',
              responsive: [
                {
                  breakpoint: 1024,
                  settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                  }
                },
                {
                  breakpoint: 700,
                  settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                  }
                },
                {
                  breakpoint: 480,
                  settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                  }
                }

              ]

            }
    );
  });
</script>

</body>

</html>