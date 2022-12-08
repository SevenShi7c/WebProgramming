<%@ page import="vn.edu.hcmuaf.fit.service.ProductService" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="vn.edu.hcmuaf.fit.model.ProductModel" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="plugins/animate/animate.min.css">
    <link rel="stylesheet" href="plugins/fontawesome/all.css">
    <link rel="stylesheet" href="plugins/webfonts/font.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <!-- UIkit CSS -->
    <link rel="stylesheet" href="plugins/uikit/uikit.min.css" />

    <title>Phone Care</title>
    <link href="images/logo/logo_PhoneCare.png" rel="shortcut icon" type="image/x-icon">


</head>

<body>
<div class="header">
    <a style="color: #ffffff;text-decoration: none;" href="index.html">Hotline: 1800 2057 (Miễn phí) Thời gian làm việc
        T2 - CN: 8h - 20h</a>
</div>

<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top">

    <div class="container">
        <a>
            <img src="images/logo/logo_PhoneCare.png" class="logo-top" alt="">
        </a>
        <a class="navbar-brand" href="index.html">

            <img src="images/logo/phoneCare.png" class="logoWord-top" alt="">
        </a>
        <div class="desk-menu collapse navbar-collapse justify-content-md-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">TRANG CHỦ</a>
                </li>

                <li class="nav-item lisanpham">
                    <a class="nav-link" href="product.jsp">Điện thoại
                        <i class="fa fa-chevron-down" aria-hidden="true"></i>
                    </a>
                    <ul class="sub_menu">
                        <li class="">
                            <a href="product.jsp" title="Sửa điện thoại Iphone">
                                Sửa điện thoại Iphone
                            </a>
                        </li>
                        <li class="">
                            <a href="product.jsp" title="Sửa điện thoại Samsung">
                                Sửa điện thoại Samsung
                            </a>
                        </li>
                        <li class="">
                            <a href="product.jsp" title="Sửa điện thoại Xiaomi">
                                Sửa điện thoại Xiaomi
                            </a>
                        </li>
                        <li class="">
                            <a href="product.jsp" title="Sửa điện thoại Oppo">
                                Sửa điện thoại Oppo
                            </a>
                        </li>
                        <li class="">
                            <a href="product.jsp" title="Sửa điện thoại Vivo">
                                Sửa điện thoại Vivo
                            </a>
                        </li>
                        <li class="">
                            <a href="product.jsp" title="Sửa điện thoại Huawei">
                                Sửa điện thoại Huawei
                            </a>
                        </li>


                    </ul>
                </li>
                <li class="nav-item lisanpham">
                    <a class="nav-link" href="product.jsp">Dịch vụ
                        <i class="fa fa-chevron-down" aria-hidden="true"></i>
                    </a>
                    <ul class="sub_menu">
                        <li class="">
                            <a href="product.jsp" title="Thay pin">
                                Thay pin
                            </a>
                        </li>
                        <li class="">
                            <a href="product.jsp" title="Thay màn hình">
                                Thay màn hình
                            </a>
                        </li>
                        <li class="">
                            <a href="product.jsp" title="Thay camera">
                                Thay camera
                            </a>
                        </li>
                        <li class="">
                            <a href="product.jsp" title="Thay vỏ">
                                Thay vỏ
                            </a>
                        </li>
                        <li class="">
                            <a href="product.jsp" title="Thay loa">
                                Thay loa
                            </a>
                        </li>


                    </ul>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="introduce.html">GIỚI THIỆU</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="blog.html">BLOG</a>
                </li>
                <li class="">
                    <a class="nav-link" href="contact.html">LIÊN HỆ</a>
                </li>
            </ul>
        </div>
        <div id="offcanvas-flip1" uk-offcanvas="flip: true; overlay: true">
            <div class="uk-offcanvas-bar" style="background: white;
      width: 100%;">

                <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>
                <h3 style="font-size: 14px;
        color: #272727;
        text-transform: uppercase;
        margin: 3px 0 30px 0;
        font-weight: 500; letter-spacing: 2px;">MENU</h3>
                <div class="justify-content-md-center">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">TRANG CHỦ</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle aaaa" href="product.jsp" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <p>Điện thoại</p>
                                <i class="fa fa-angle-double-right"></i>

                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="border:0;">
                                <a class="dropdown-item" href="product.jsp" title="">Sửa điện thoại Iphone</a>
                                <a class="dropdown-item" href="product.jsp" title="">Sửa điện thoại Samsung</a>
                                <a class="dropdown-item" href="product.jsp" title="">Sửa điện thoại Xiaomi</a>
                                <a class="dropdown-item" href="product.jsp" title="">Sửa điện thoại Oppo</a>
                                <a class="dropdown-item" href="product.jsp" title="">Sửa điện thoại Vivo</a>
                                <a class="dropdown-item" href="product.jsp" title="">Sửa điện thoại Huawei</a>

                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle aaaa" href="product.jsp" id="navbarDropdown2" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <p>Dịch vụ</p>
                                <i class="fa fa-angle-double-right"></i>

                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown2" style="border:0;">
                                <a class="dropdown-item" href="product.jsp" title="">Thay pin</a>
                                <a class="dropdown-item" href="product.jsp" title="">Thay màn hình</a>
                                <a class="dropdown-item" href="product.jsp" title="">Thay camera</a>
                                <a class="dropdown-item" href="product.jsp" title="">Thay vỏ</a>
                                <a class="dropdown-item" href="product.jsp" title="">Thay loa</a>


                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="introduce.html">GIỚI THIỆU</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="blog.html">BLOG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">LIÊN HỆ</a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
        <div id="offcanvas-flip" uk-offcanvas="flip: true; overlay: true">
            <div class="uk-offcanvas-bar" style="    background: white;
          width: 350px;">

                <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>

                <h3 style="font-size: 14px;
              color: #272727;
              text-transform: uppercase;
              margin: 3px 0 30px 0;
              font-weight: 500; letter-spacing: 2px;">Tìm kiếm</h3>
                <div class="search-box wpo-wrapper-search">
                    <form action="search" class="searchform searchform-categoris ultimate-search">
                        <div class="wpo-search-inner" style="display:inline">
                            <input type="hidden" name="type" value="product">
                            <input required="" id="inputSearchAuto" name="q" maxlength="40" autocomplete="off"
                                   class="searchinput input-search search-input" type="text" size="20"
                                   placeholder="Tìm kiếm sản phẩm...">
                        </div>
                        <button type="submit" class="btn-search btn" id="search-header-btn">
                            <i style="font-weight:bold" class="fas fa-search"></i>
                        </button>
                        <div class="search-item">
                            <div class="search-item-left">
                                <div class="item-name">Thay màn hình Iphone X</div>
                                <div class="item-price">1,690,000₫</div>
                            </div>
                            <div class="search-item-right">
                                <div class="img">
                                    <img src="images/product/thay-man-hinh-iphone-x-fc.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="search-item">
                            <div class="search-item-left">
                                <div class="item-name">Thay màn hình Iphone X</div>
                                <div class="item-price">1,690,000₫</div>
                            </div>
                            <div class="search-item-right">
                                <div class="img">
                                    <img src="images/product/thay-man-hinh-iphone-x-fc.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="search-item">
                            <div class="search-item-left">
                                <div class="item-name">Thay màn hình Iphone X</div>
                                <div class="item-price">1,690,000₫</div>
                            </div>
                            <div class="search-item-right">
                                <div class="img">
                                    <img src="images/product/thay-man-hinh-iphone-x-fc.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </form>
                    <div id="ajaxSearchResults" class="smart-search-wrapper ajaxSearchResults" style="display: none">
                        <div class="resultsContent"></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- cart -->

        <div class="product_list_header">
            <form action="#" method="post" class="last">
                <input type="hidden" name="cmd" value="_cart">
                <input type="hidden" name="display" value="1">
                <button class="w3view-cart btn" type="submit" name="submit" value="" onclick="addBtnCart()">
                    <div class="icon-ol"><i class="icon-header fas fa-shopping-cart"  aria-hidden="true"></i></div></button>
            </form>
        </div>

        <div class="user mr-4"></div>

        <div id="offcanvas-flip3" uk-offcanvas="flip: true; overlay: true">
            <div class="uk-offcanvas-bar" style="    background: white;
          width: 350px;">

                <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>

                <h3 style="font-size: 14px;
              color: #272727;
              text-transform: uppercase;
              margin: 3px 0 30px 0;
              font-weight: 500; letter-spacing: 2px;">Lịch Đã Đặt</h3>
                <div class="site-nav-container-last" style="color:#272727">
                    <div class="cart-view clearfix">
                        <table id="cart-view2">
                            <tbody>
                            <tr class="item_1">
                                <td class="img"><a href="" title=""><img src="images/product/thay-man-hinh-iphone-x-fc.jpg"
                                                                         alt=""></a></td>
                                <td>
                                    <a class="pro-title-view" style="color: #272727" href="" title=" &quot;Grape&quot;">Thay Màn Hình
                                        Iphone X</a>
                                    <span class="variant">Zin</span>
                                    <span class="pro-quantity-view">1</span>
                                    <span class="pro-price-view">1,690,000₫</span>
                                    <span class="remove_link remove-cart"><a href=""><i style="color: #272727;"
                                                                                        class="fas fa-times"></i></a></span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <span class="line"></span>
                        <table class="table-total">
                            <tbody>
                            <tr>
                                <td class="text-left">Cửa hàng</td>
                                <td class="text-right">P. Bình An, Quận 2</td>
                            </tr>
                            <tr>
                                <td class="text-left">Ngày hẹn</td>
                                <td class="text-right">22/12/2022</td>
                            </tr>
                            <tr>
                                <td class="text-left">Tình trạng</td>
                                <td class="text-right">Chưa thanh toán</td>
                            </tr>
                            <tr>
                                <td class="distance-td"><a href="cart.html" class="linktocart button dark">Xem giỏ hàng</a></td>
                                <td><a href="checkout.html" class="linktocheckout button dark">Thanh toán</a></td>
                            </tr>
                            </tbody>
                        </table>
                        <a href="booked.html" class="button btn-check" style="text-decoration:none;">Xem lịch đã đặt</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="icon-ol">

            <a class="" uk-toggle="target: #offcanvas-flip">
                <i class="icon-header fas fa-search"></i>
            </a>

            <button class="navbar-toggler" type="button" uk-toggle="target: #offcanvas-flip1" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </div>
    </div>

</nav>

<!-- Owl-Carousel-->
<div class="owl-carousel owl-theme owl-carousel-setting">
    <div class="item"><img src="images/banner/banner-mainslide-fastcare-khuyen-mai-1280x542-large.jpg"
                           class="d-block w-100" alt="..."><img /></div>
    <div class="item"><img src="images/banner/banner-mainslide-fastcare-thay-man-hinh-1280x542-large.jpg"
                           class="d-block w-100" alt="..."><img /></div>
    <div class="item"><img src="images/banner/banner-mainslide-fastcare-pin-bago-1280x542-large.jpg"
                           class="d-block w-100" alt="..."><img /></div>
</div>


<div class="content">
    <div class="container">
        <div class="hot_sp" style="padding-bottom: 10px;">
            <h2 style="text-align:center;padding-top: 10px">
                <a style="font-size: 28px;color: black;text-decoration: none" href="product.jsp">Sản phẩm bán chạy</a>
            </h2>
            <div class="view-all" style="text-align:center;padding-top: -10px;">
                <a style="color: black;text-decoration: none" href="product.jsp">Xem thêm</a>
            </div>
        </div>
    </div>
    <!--Product-->
    <div class="container" style="padding-bottom: 50px;">
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="block-banner-category">
                    <div class="product-img fade-box">
                        <a href="product.jsp" title="" class="img-resize">
                            <img src="images/product/ep-co-cap-man-hinh-samsung-s8-fc-medium.jpg" alt="" class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="product.jsp" title="" inspiration
                               pack>
                                Ép cổ cáp màn hình Samsung S8
                            </a>
                        </div>
                        <div class="pro-price">
                            <p class="">1,590,000₫</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="block-banner-category">
                    <div class="product-img fade-box">
                        <a href="product.jsp" title="" class="img-resize">
                            <img src="images/product/ep-co-cap-man-hinh-iphone-x-medium.jpg" alt="" class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                               pack>
                                Ép cổ cáp màn hình Iphone X
                            </a>
                        </div>
                        <div class="pro-price">
                            <p class="">1,490,000₫</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="block-banner-category">
                    <div class="product-img fade-box">
                        <a href="product.jsp" title="" class="img-resize">
                            <img src="images/product/ep-co-cap-man-hinh-iphone-xs-max-fc-medium.jpg" alt="" class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                               pack>
                                Ép cổ cáp màn hình Iphone XS-Max
                            </a>
                        </div>
                        <div class="pro-price">
                            <p class="">1,790,000₫</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="block-banner-category">
                    <div class="product-img fade-box">
                        <a href="product.jsp" title="" class="img-resize">
                            <img src="images/product/ep-co-cap-man-hinh-iphone-xs-medium.jpg" alt="" class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                               pack>
                                Ép cổ cáp màn hình Iphone XS<XS></XS>
                            </a>
                        </div>
                        <div class="pro-price">
                            <p class="">1,690,000₫</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="block-banner-category">
                    <div class="product-img fade-box">
                        <a href="product.jsp" title="" class="img-resize">
                            <img src="images/product/ep-co-cap-man-hinh-samsung-s8-plus-fc-medium.jpg" alt="" class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                               pack>
                                Ép cổ cáp màn hình SamSung S8 Plus
                            </a>
                        </div>
                        <div class="pro-price">
                            <p class="">1,290,000₫</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="block-banner-category">
                    <div class="product-img fade-box">
                        <a href="product.jsp" title="" class="img-resize">
                            <img src="images/product/ep-co-cap-man-hinh-samsung-s9-fc-medium.jpg" alt="" class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                               pack>
                                Ép cổ cáp màn hình SamSung S9
                            </a>
                        </div>
                        <div class="pro-price">
                            <p class="">1,690,000₫</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="block-banner-category">
                    <div class="product-img fade-box">
                        <a href="product.jsp" title="" class="img-resize">
                            <img src="images/product/ep-co-cap-man-hinh-samsung-s9-plus-fc-medium.jpg" alt="" class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                               pack>
                                Ép cổ cáp màn hình SamSung S9 Plus
                            </a>
                        </div>
                        <div class="pro-price">
                            <p class="">1,890,000₫</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="block-banner-category">
                    <div class="product-img fade-box">
                        <a href="product.jsp" title="" class="img-resize">
                            <img src="images/product/ep-co-cap-man-hinh-samsung-s10-fc-medium.jpg" alt="" class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                               pack>
                                Ép cổ cáp màn hình SamSung S10
                            </a>
                        </div>
                        <div class="pro-price">
                            <p class="">2,220,000₫</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <section class="section wrapper-home-banner">
        <div class="container-fluid" style="padding-bottom: 50px;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 home-banner-pd">
                    <div class="block-banner-category">
                        <a href="blog.html" class="link-banner wrap-flex-align flex-column">
                            <div class="fg-image fade-box">
                                <img class="lazyloaded" src="images/logo/phonecare2.png" alt="">
                            </div>
                            <figcaption class="caption_banner site-animation">
                                <h2>Giới thiệu</h2>
                                `
                            </figcaption>
                        </a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 home-banner-pd">
                    <div class="block-banner-category">
                        <a href="blog.html" class="link-banner wrap-flex-align flex-column">
                            <div class="fg-image fade-box">
                                <img class="lazyloaded" src="images/blog/blog1.jpg" alt="">
                            </div>
                            <figcaption class="caption_banner site-animation">
                                <h2>Blog</h2>

                            </figcaption>
                        </a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 home-banner-pd">
                    <div class="block-banner-category">
                        <a href="contact.html" class="link-banner wrap-flex-align flex-column">
                            <div class="fg-image">
                                <img class="lazyloaded" src="images/blog/lienhe.png" alt="">
                            </div>
                            <figcaption class="caption_banner site-animation">
                                <h2>Liên hệ</h2>
                            </figcaption>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="content">
            <div class="container">
                <div class="hot_sp">
                    <h2 style="text-align:center;">
                        <a style="font-size: 28px;color: black;text-decoration: none" href="product.jsp">Sản phẩm
                            mới</a>
                    </h2>
                    <div class="view-all" style="text-align:center;">
                        <a style="color: black;text-decoration: none" href="product.jsp">Xem thêm</a>
                    </div>
                </div>
            </div>
            <!--Product-->
        </div>
        <div class="container product" style="width: 100%;margin: auto;">
            <div class="owl-carousel owl-theme owl-product-setting">
                <div class="item">
                    <div class="">
                        <div class="block-banner-category">
                            <div class="product-img fade-box">
                                <a href="detailProduct.html" title="" class="img-resize">
                                    <img src="images/product/thay-camera-sau-iphone-14-fc-medium.jpg" alt="" class="lazyloaded">
                                </a>

                            </div>
                            <div class="product-detail clearfix">
                                <div class="pro-text">
                                    <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                                       pack>
                                        Thay camera sau Iphone 14
                                    </a>
                                </div>
                                <div class="pro-price">
                                    <p class="">Liên Hệ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="">
                        <div class="block-banner-category">
                            <div class="product-img fade-box">
                                <a href="detailProduct.html" title="" class="img-resize">
                                    <img src="images/product/thay-camera-truoc-iphone-14-medium.jpg" alt="" class="lazyloaded">
                                </a>

                            </div>
                            <div class="product-detail clearfix">
                                <div class="pro-text">
                                    <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                                       pack>
                                        Thay camera trước Iphone 14
                                    </a>
                                </div>
                                <div class="pro-price">
                                    <p class="">Liên Hệ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="">
                        <div class="block-banner-category">
                            <div class="product-img fade-box">
                                <a href="detailProduct.html" title="" class="img-resize">
                                    <img src="images/product/thay-kinh-camera-iphone-14-fc-medium.jpg" alt="" class="lazyloaded">
                                </a>

                            </div>
                            <div class="product-detail clearfix">
                                <div class="pro-text">
                                    <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                                       pack>
                                        Thay kính camera Iphone 14
                                    </a>
                                </div>
                                <div class="pro-price">
                                    <p class="">Liên Hệ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="">
                        <div class="block-banner-category">
                            <div class="product-img fade-box">
                                <a href="detailProduct.html" title="" class="img-resize">
                                    <img src="images/product/thay-kinh-lung-iphone-14-medium.jpg" alt="" class="lazyloaded">
                                </a>

                            </div>
                            <div class="product-detail clearfix">
                                <div class="pro-text">
                                    <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                                       pack>
                                        Thay kính lưng Iphone 14
                                    </a>
                                </div>
                                <div class="pro-price">
                                    <p class="">Liên Hệ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="">
                        <div class="block-banner-category">
                            <div class="product-img fade-box">
                                <a href="detailProduct.html" title="" class="img-resize">
                                    <img src="images/product/thay-man-hinh-iphone-14-fc-medium.jpg" alt="" class="lazyloaded">
                                </a>

                            </div>
                            <div class="product-detail clearfix">
                                <div class="pro-text">
                                    <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                                       pack>
                                        Thay màn hình Iphone 14
                                    </a>
                                </div>
                                <div class="pro-price">
                                    <p class="">Liên Hệ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="">
                        <div class="block-banner-category">
                            <div class="product-img fade-box">
                                <a href="detailProduct.html" title="" class="img-resize">
                                    <img src="images/product/thay-mat-kinh-iphone-14-medium.jpg" alt="" class="lazyloaded">
                                </a>

                            </div>
                            <div class="product-detail clearfix">
                                <div class="pro-text">
                                    <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                                       pack>
                                        Thay mặt kính Iphone 14
                                    </a>
                                </div>
                                <div class="pro-price">
                                    <p class="">Liên Hệ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="">
                        <div class="block-banner-category">
                            <div class="product-img fade-box">
                                <a href="detailProduct.html" title="" class="img-resize">
                                    <img src="images/product/thay-pin-iphone-14-medium.jpg" alt="" class="lazyloaded">
                                </a>

                            </div>
                            <div class="product-detail clearfix">
                                <div class="pro-text">
                                    <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.html" title="" inspiration
                                       pack>
                                        Thay pin Iphone 14
                                    </a>
                                </div>
                                <div class="pro-price">
                                    <p class="">Liên Hệ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="">
        <div class="content">
            <div class="container">
                <div class="hot_sp">
                    <h2 style="text-align:center;padding-top: 10px">
                        <a style="font-size: 28px;color: black;text-decoration: none" href="blog.html">Bài viết mới
                            nhất</a>
                    </h2>
                    <br />
                </div>
            </div>
        </div>
        <!--New-->
        <div>

            <div class="container">

                <div class="row">
                    <div class="col-md-4">
                        <div class="post_item">
                            <div class="post_featured">
                                <a href="detailBlog.html" title="">
                                    <img class="img-resize" style="padding-bottom:15px;"
                                         src="images/blog/loi-khong-the-copy-tren-win-11.jpg" alt="">
                                </a>
                            </div>
                            <div class="pro-text">
                  <span class="post_info_item">

                    Chủ Nhật 23/10/2022

                  </span>
                            </div>
                            <div class="pro-text">
                                <h3 class="post_title">
                                    <a style=" color: black;
                                  font-size: 18px;text-decoration: none;" href="detailBlog.html" inspiration pack>
                                        Win 11 bị chậm, đơ, đứng máy?
                                    </a>
                                </h3>
                            </div>
                            <div style="text-align:center; padding-bottom: 30px;">
                  <span>Win 11 bị chậm, lại thường xuyên đơ, lag hay thậm chí là đứng máy? Chắc chắn khi đó, bạn không
                    thể tiếp tục sử dụng chiếc máy tính của mình một cách thoải mái và trọn vẹn.</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="post_item">
                            <div class="post_featured">
                                <a href="detailBlog.html" title="">
                                    <img class="img-resize" style="padding-bottom:15px;"
                                         src="images/blog/loi-khong-the-copy-tren-win-11.jpg" alt="">
                                </a>
                            </div>
                            <div class="pro-text">
                  <span class="post_info_item">

                    Thứ 7 29/10/2022

                  </span>
                            </div>
                            <div class="pro-text">
                                <h3 class="post_title">
                                    <a style=" color: black;
                                  font-size: 18px;text-decoration: none;" href="detailBlog.html" inspiration pack>
                                        5 cách khắc phục lỗi không thế copy trên Win11 nhanh nhất
                                    </a>
                                </h3>
                            </div>
                            <div style="text-align:center; padding-bottom: 30px;">
                  <span>Máy tính bỗng nhiên gặp lỗi không thể copy trên Win 11 khiến bạn gặp khá nhiều rắc rối trong học
                    tập, làm việc.
                    Theo dõi bài viết sau để tìm cách khắc phục.</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="post_item">
                            <div class="post_featured">
                                <a href="detailBlog.html" title="">
                                    <img class="img-resize" style="padding-bottom:15px;"
                                         src="images/blog/loi-khong-the-copy-tren-win-11.jpg" alt="">
                                </a>
                            </div>
                            <div class="pro-text">
                  <span class="post_info_item">

                    Chủ Nhật 30/10/2022

                  </span>
                            </div>
                            <div class="pro-text">
                                <h3 class="post_title">
                                    <a style=" color: black;
                                  font-size: 18px;text-decoration: none;" href="detailBlog.html" inspiration pack>
                                        Lỗi không bật được Bluetooth trên Win 11, khắc phục thế nào?
                                    </a>
                                </h3>
                            </div>
                            <div style="text-align:center; padding-bottom: 30px;">
                  <span>Máy tính bỗng nhiên không bật được Bluetooth trên Win 11?
                    Theo dõi bài viết tìm nguyên nhân và lưu ngay 3 cách khắc phục tình trạng trên đơn giản, nhanh
                    chóng.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section wrapper-home-newsletter">
        <div class="container-fluid">
            <div class="content-newsletter">
                <h2>Đăng ký</h2>
                <p>Đăng ký nhận bản tin của Phone Care để cập nhật những sản phẩm mới, nhận thông tin ưu đãi đặc biệt và
                    thông
                    tin
                    giảm giá khác.</p>
                <div class="form-newsletter">
                    <form action="" accept-charset="UTF-8" class="">
                        <div class="form-group">
                            <input type="hidden" id="contact_tags">
                            <input required="" type="email" value="" placeholder="Nhập email của bạn" aria-label="Email Address"
                                   class="">
                            <button type="submit" class=""><span>Gửi</span></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!--gallery-->
    <section class="section section-gallery">
        <div class="">
            <div class="hot_sp" style="padding-top: 70px;padding-bottom: 50px;">
                <h2 style="text-align:center;padding-top: 10px">
                    <a style="font-size: 28px;color: black;text-decoration: none" href="">Khách hàng và Phone Care</a>
                </h2>
            </div>
            <div class="list-gallery clearfix">
                <ul class="shoes-gp">
                    <li>
                        <div class="gallery_item">
                            <img class="img-resize" src="images/footer/customer1.jpg" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="gallery_item">
                            <img class="img-resize" src="images/footer/customer2.jpg" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="gallery_item">
                            <img class="img-resize" src="images/footer/customer3.jpg" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="gallery_item">
                            <img class="img-resize" src="images/footer/customer4.jpg" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="gallery_item">
                            <img class="img-resize" src="images/footer/customer5.jpg" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="gallery_item">
                            <img class="img-resize" src="images/footer/customer6.jpg" alt="">
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <footer class="main-footer">
        <div class="container">
            <div class="">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="footer-col footer-block">
                            <h4 class="footer-title">
                                GIỚI THIỆU
                            </h4>
                            <div class="footer-content">
                                <p>Phone Care là cửa hàng sửa chữa và chăm sóc điện thoại, đây là trang web của Phone
                                    Care giúp khách hàng đặt lịch sửa chữa điện thoại.</p>
                                <div class="logo-footer">
                                    <img src="images/logo-bct.png" alt="Bộ Công Thương">
                                </div>
                                <div class="social-list">
                                    <a href="https://www.facebook.com/phonecareweb" class="fab fa-facebook"></a>
                                    <a href="https://www.facebook.com/phonecareweb" class="fab fa-google"></a>
                                    <a href="https://www.facebook.com/phonecareweb" class="fab fa-twitter"></a>
                                    <a href="https://www.facebook.com/phonecareweb" class="fab fa-youtube"></a>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="footer-col footer-link">
                            <h4 class="footer-title">
                                PHÁP LÝ &amp; CÂU HỎI
                            </h4>
                            <div class="footer-content toggle-footer">
                                <ul>
                                    <li class="item">
                                        <a href="#" title="Tìm kiếm">Tìm kiếm</a>
                                    </li>
                                    <li class="item">
                                        <a href="introduce.html" title="Giới thiệu">Giới thiệu</a>
                                    </li>
                                    <li class="item">
                                        <a href="introduce.html" title="Chính sách đổi trả">Chính sách đổi trả</a>
                                    </li>
                                    <li class="item">
                                        <a href="introduce.html" title="Chính sách bảo mật">Chính sách bảo mật</a>
                                    </li>
                                    <li class="item">
                                        <a href="introduce.html" title="Điều khoản dịch vụ">Điều khoản dịch vụ</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="footer-col footer-block">
                            <h4 class="footer-title">
                                Thông tin liên hệ
                            </h4>
                            <div class="footer-content toggle-footer">
                                <ul>
                                    <li><span>Địa chỉ:</span> Linh Trung, Tp Thủ Đức, Tp Hồ Chí Minh, Việt Nam</li>
                                    <li><span>Điện thoại:</span> 1800 2057 (Miễn phí)</li>
                                    <li><span>Zalo:</span> 1800 2057</li>
                                    <li><span>Mail:</span> phoneCare@gmail.com</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="footer-col footer-block">
                            <h4 class="footer-title">
                                Bản quyền Phone Care thuộc
                            </h4>
                            <div class="footer-content">
                                <div id="fb-root1">
                                    <div class="footer-static-content">
                                        <div class="fb-page" data-href="#" data-tabs="timeline" data-width="" data-height="215"
                                             data-small-header="false" data-adapt-container-width="true" data-hide-cover="false"
                                             data-show-facepile="true">
                                            <blockquote cite="#" class="fb-xfbml-parse-ignore"><a href="https://project-personal-mine.web.app/">Nguyễn Đăng
                                                Phước </a>
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="footer-content">
                                <div id="fb-root2">
                                    <div class="footer-static-content">
                                        <div class="fb-page" data-href="#" data-tabs="timeline" data-width="" data-height="215"
                                             data-small-header="false" data-adapt-container-width="true" data-hide-cover="false"
                                             data-show-facepile="true">
                                            <blockquote cite="#" class="fb-xfbml-parse-ignore"><a href="mailTo:20130450@st.hcmuaf.edu.vn">Vũ
                                                Ngọc Thanh
                                                Trúc </a>
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="footer-content">
                                <div id="fb-root3">
                                    <div class="footer-static-content">
                                        <div class="fb-page" data-href="#" data-tabs="timeline" data-width="" data-height="215"
                                             data-small-header="false" data-adapt-container-width="true" data-hide-cover="false"
                                             data-show-facepile="true">
                                            <blockquote cite="#" class="fb-xfbml-parse-ignore"><a href="mailTo:20130479@st.hcmuaf.edu.vn">Nguyễn Mạnh
                                                Quyền </a>
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-footer--copyright">
            <div class="container">
                <hr>
                <div class="main-footer--border" style="text-align:center;padding-bottom: 15px;">
                    <p>© 2022 - Bản quyền thuộc về <a href="#">Phone Care</a></p>
                </div>
            </div>
        </div>
    </footer>
</div>

<div class="registratior_custom">
    <form action="">
        <div class="content">
            <div class="x-close">
                <i class="fa fa-times"></i>
            </div>
            <h3>Nhận các ưu đãi cùng Phone Care</h3>
            <p>Chúng tôi sẽ cập nhật các chương trình khuyến mãi mới đến bạn</p>
            <ul>
                <li>
                    <span>Giảm giá sản phẩm</span>
                </li>
                <li>
                    <span>Sản phẩm mới</span>
                </li>
                <li>
                    <span>Sản phẩm bán chạy</span>
                </li>
            </ul>
            <div class="form-newsletter">
                <form action="" accept-charset="UTF-8" class="">
                    <div class="form-group">
                        <input type="hidden" id="contact_tags2">
                        <input required="" type="email" value="" placeholder="Nhập email của bạn" aria-label="Email Address"
                               class="">
                        <button type="submit" class=""><p>Đăng ký</p></button>
                    </div>
                </form>
            </div>
        </div>
    </form>
</div>

<%LinkedList<ProductModel> listProduct = (LinkedList<ProductModel>)  ProductService.getListProduct();%>


<script async defer crossorigin="anonymous" src="plugins/sdk.js"></script>
<script src="plugins/jquery-3.4.1/jquery-3.4.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="plugins/bootstrap/popper.min.js"></script>
<script src="plugins/bootstrap/bootstrap.min.js"></script>
<script src="plugins/owl.carousel/owl.carousel.min.js"></script>
<script src="js/home.js"></script>
<script src="js/script.js"></script>
<script src="plugins/uikit/uikit.min.js"></script>
<script src="plugins/uikit/uikit-icons.min.js"></script>

<script src="plugins/uikit-3.13.7/uikit-3.13.7/src/js/uikit.js"></script>
<script src="plugins/uikit-3.13.7/uikit-3.13.7/src/js/uikit-core.js"></script>

<!-- Mini Cart -->
<script src="js/minicart.min.js"></script>
<script src="js/validationUser.js"></script>
<script>
    paypal.minicart.render({
        action: '#'
    });

    if (~window.location.search.indexOf('reset=true')) {
        paypal.minicart.reset();
    }

</script>
</body>

</html>