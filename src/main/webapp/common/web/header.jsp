<%--
  Created by IntelliJ IDEA.
  User: vutru
  Date: 12/8/2022
  Time: 12:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: vutru
  Date: 12/8/2022
  Time: 1:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>

<body>
<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top">

    <div class="container">
        <a>
            <img src="images/logo/logo_PhoneCare.png" class="logo-top" alt="">
        </a>
        <a class="navbar-brand" href="">

            <img src="images/logo/phoneCare.png" class="logoWord-top" alt="">
        </a>
        <div class="desk-menu collapse navbar-collapse justify-content-md-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item ">
                    <a class="nav-link" href="">TRANG CHỦ</a>
                </li>

                <li class="nav-item lisanpham active">
                    <a class="nav-link" href="product.jsp">Điện thoại
                        <i class="fa fa-chevron-down" aria-hidden="true"></i>
                    </a>
                    <ul class="sub_menu active">
                        <li class="nav-item ">
                            <a href="product.jsp" title="Sửa điện thoại Iphone">
                                Sửa điện thoại Iphone
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
                <li class="nav-item">
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
                            <a class="nav-link" href="">TRANG CHỦ</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle aaaa" href="product.jsp" id="navbarDropdown"
                               role="button"
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
                            <a class="nav-link dropdown-toggle aaaa" href="product.jsp" id="navbarDropdown2"
                               role="button"
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
                    <div class="icon-ol"><i class="icon-header fas fa-shopping-cart" aria-hidden="true"></i></div>
                </button>
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
                                <td class="img"><a href="" title=""><img
                                        src="images/product/thay-man-hinh-iphone-x-fc.jpg"
                                        alt=""></a></td>
                                <td>
                                    <a class="pro-title-view" style="color: #272727" href="" title=" &quot;Grape&quot;">Thay
                                        Màn Hình
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
                                <td class="distance-td"><a href="cart.html" class="linktocart button dark">Xem giỏ
                                    hàng</a></td>
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
</body>

</html>


