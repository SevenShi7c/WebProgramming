<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@include file="../../common/taglib.jsp" %>
<!DOCTYPE html>
<html >

<head>
    <%@include file="../../common/web/head.jsp"%>

    <title> Thanh toán | Phone Care</title>
    <link rel="stylesheet" href="../../css/checkout.css">

</head>

<body>
<%@include file="../../common/web/header.jsp"%>

<main id="checkout">
    <div class="breadcrumb-shop">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5">
                    <ol class="breadcrumb breadcrumb-arrows">
                        <li>
                            <a href="index.html">
                                <span>Trang chủ</span>
                            </a>
                        </li>
                        <li>
                            <a href="cart.jsp">
                                <span>Giỏ hàng</span>
                            </a>
                        </li>
                        <li>
                            <span><span style="color: #777777">Thanh toán</span></span>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="modal-checkout my-5">
            <div class="row">
                <div class="modal-product col-md-6 col-lg-6">
                    <div class="product">

                        <!-- Slideshow container -->
                        <div class="product-slideshow">


                        </div>

                    </div>

                    <div class="sum-money"></div>
                    <div class="round-shape"></div>
                    <a class="back_to_cart" href="cart.jsp"><i class="fas fa-arrow-left mr-2"></i>Quay lại trang giỏ
                        hàng</a>
                </div>
                <div class="col-md-6 col-lg-6 modal-info">
                    <div class="info">
                        <h2 class="text-light">Thông tin người đặt</h2>
                        <form action="#">
                            <ul class="form-list">
                                <li class="form-list-row">
                                    <div class="user">
                                        <label for="#">Tên</label><br>
                                        <i class="fas fa-user"></i></i><input type="text" required>
                                    </div>
                                </li>
                                <li class="form-list-row">
                                    <div class="email">
                                        <label for="#">Email</label><br>
                                        <i class="far fa-credit-card"></i><input type="email" required>
                                    </div>
                                </li>
                                <li class="form-list-row">
                                    <div class="tel">
                                        <label for="#">Số điện thoại</label><br>
                                        <i class="far fa-credit-card"></i><input type="tel" required>
                                    </div>
                                </li>
                                <li class="form-list-row">
                                    <div class="address">
                                        <label for="#">Địa chỉ</label><br>
                                        <i class="far fa-credit-card"></i><input type="text" required>
                                    </div>
                                </li>
                                <li class="form-list-row">
                                    <div class="date">
                                        <label for="#">Thời gian</label><br>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input type="time" class="form-control" name="time" id="time"
                                                       required>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="date" class="form-control" required>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="form-list-row">
                                    <div class="note">
                                        <label for="#">Ghi chú</label><br>
                                        <textarea name="note" id="note" class="form-control" rows="5"
                                                  placeholder="Ghi chú thêm thông tin như mô tả về điện thoại (màu sắc, các lỗi hiện có)..."></textarea>
                                    </div>
                                </li>
                                <li class="form-list-row">
                                    <div class="payment">
                                        <label for="#">Phương thức thanh toán</label>
                                        <input type="radio" name="0" id="" value="" checked="checked">
                                        Tại cửa hàng
                                        <input type="radio" name="1" id="input" value="">
                                        Qua momo
                                    </div>
                                </li>
                                <li class="form-list-row">
                                    <div class="payment">
                                        <label for="#">Chi nhánh:</label>
                                        <br>
                                        <input type="radio" name="" id="input" value="" checked="checked">
                                        ĐH Nông Lâm, Linh Trung, Tp Thủ Đức, Tp Hồ Chí Minh, Việt Nam
                                        <br>
                                        <input type="radio" name="" id="input" value="">
                                        Quận 1, Tp Hồ Chí Minh, Việt Nam
                                    </div>
                                </li>
                            </ul>
                            <button type="submit">Xác nhận</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<%@include file="../../common/web/footer.jsp"%>

<script>

    var htmlItemm = "";
    var sumMoney = 0

    for (let i = 0; i < cart.length; i++) {
        console.log(cart[i]);
        htmlItemm += `
                                <div class="productSlides fade-checkout">
                                    <div class="img">
                                        <img src="./images/product/${cart[i].image}"
                                            class="img-fluid w-100">
                                    </div>
                                    <h1 class="product-name">
                                        ${cart[i].item_name}
                                    </h1>
                                    <p class="product-code-name">
                                        loại ${cart[i].option2}
                                    </p>
                                    <p class="price">
                                        Đơn giá: ${convertMoney(cart[i].amount)}
                                    </p>
                                    <p class="quantity text-center">
                                        Số lượng: ${cart[i].quantity}
                                    </p>
                                    <p class="money text-center">
                                        Tổng tiền: ${convertMoney(cart[i].quantity*cart[i].amount)}
                                    </p>
                                </div>
            `;
        var htmlSumMoney = `
                <h3 class="d-flex justify-content-center">Thành tiền: ${convertMoney(sumMoney+=cart[i].quantity*cart[i].amount)}</h3>
        `
    }
    htmlItemm += `
        <!-- The dots/circles -->
            <div style="text-align:center" class="dots">`
    for (let i = 0; i < cart.length; i++) {
        htmlItemm += `
                 <span class="dot" onclick="currentSlide(${i+1})"></span>
            `
    }
    htmlItemm += `</div>   `

    $('.product-slideshow').append(htmlItemm)


    $('.sum-money').append(htmlSumMoney)

</script>
<script src="../../js/checkout.js"></script>
</body>

</html>