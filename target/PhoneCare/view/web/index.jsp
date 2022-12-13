<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.ProductModel" %>
<%@ page import="vn.edu.hcmuaf.fit.service.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.dao.ProductDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.model.BlogModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@include file="../../common/taglib.jsp" %>

<html>
<head>
    <%@include file="../../common/web/head.jsp" %>

    <title>Phone Care</title>

</head>

<body>
<% List<ProductModel> newList = (List<ProductModel>) ProductDAO.newProduct();%>
<!--Navbar-->
<%@include file="../../common/web/header.jsp" %>

<!-- Owl-Carousel-->
<div class="owl-carousel owl-theme owl-carousel-setting">
    <div class="item"><img src="images/banner/banner-mainslide-fastcare-khuyen-mai-1280x542-large.jpg"
                           class="d-block w-100" alt="..."><img/></div>
    <div class="item"><img src="images/banner/banner-mainslide-fastcare-thay-man-hinh-1280x542-large.jpg"
                           class="d-block w-100" alt="..."><img/></div>
    <div class="item"><img src="images/banner/banner-mainslide-fastcare-pin-bago-1280x542-large.jpg"
                           class="d-block w-100" alt="..."><img/></div>
</div>

<div class="content">
    <div class="container">
        <div class="hot_sp" style="padding-bottom: 10px;">
            <h2 style="text-align:center;padding-top: 10px">
                <a style="font-size: 28px;color: black;text-decoration: none" href="list-product">Sản phẩm bán chạy</a>
            </h2>
            <div class="view-all" style="text-align:center;padding-top: -10px;">
                <a style="color: black;text-decoration: none" href="list-product">Xem thêm</a>
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
                            <img src="../../images/product/ep-co-cap-man-hinh-samsung-s8-fc-medium.jpg" alt=""
                                 class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="product.jsp" title=""
                               inspiration
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
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.jsp"
                               title="" inspiration
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
                            <img src="images/product/ep-co-cap-man-hinh-iphone-xs-max-fc-medium.jpg" alt=""
                                 class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.jsp"
                               title="" inspiration
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
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.jsp"
                               title="" inspiration
                               pack>
                                Ép cổ cáp màn hình Iphone XS
                                <XS></XS>
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
                            <img src="images/product/ep-co-cap-man-hinh-samsung-s8-plus-fc-medium.jpg" alt=""
                                 class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.jsp"
                               title="" inspiration
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
                            <img src="images/product/ep-co-cap-man-hinh-samsung-s9-fc-medium.jpg" alt=""
                                 class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.jsp"
                               title="" inspiration
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
                            <img src="images/product/ep-co-cap-man-hinh-samsung-s9-plus-fc-medium.jpg" alt=""
                                 class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.jsp"
                               title="" inspiration
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
                            <img src="images/product/ep-co-cap-man-hinh-samsung-s10-fc-medium.jpg" alt=""
                                 class="lazyloaded">
                        </a>

                    </div>
                    <div class="product-detail clearfix">
                        <div class="pro-text">
                            <a style=" color: black;
                                                  font-size: 14px;text-decoration: none;" href="detailProduct.jsp"
                               title="" inspiration
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
                        <a href="blog.jsp" class="link-banner wrap-flex-align flex-column">
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
                        <a href="blog.jsp" class="link-banner wrap-flex-align flex-column">
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
                        <a href="contact.jsp" class="link-banner wrap-flex-align flex-column">
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
        </div>

        <div class="container product" style="width: 100%;margin: auto;">
            <div class="owl-carousel owl-theme owl-product-setting">
                <%
                    for (ProductModel product :
                            newList) {%>
                <div class="item">
                    <div class="">
                        <div class="block-banner-category">
                            <div class="product-img fade-box">
                                <a href="detailProduct.jsp" title="" class="img-resize">
                                    <img src="images/product/<%=product.getAvatar()%>" alt="" class="lazyloaded">
                                </a>

                            </div>
                            <div class="product-detail clearfix">
                                <div class="pro-text">
                                    <a style=" color: #000000;
                                                                  font-size: 14px;text-decoration: none;"
                                       href="detailProduct.jsp"
                                       title="" inspiration
                                       pack>
                                        <%=product.getName()%>
                                    </a>
                                </div>
                                <div class="pro-price">
                                    <p class="">Liên Hệ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }%>
                <%--                <c:forEach items="${newProduct}" var="product">--%>

                <%--                    <div class="item">--%>
                <%--                        <div class="">--%>
                <%--                            <div class="block-banner-category">--%>
                <%--                                <div class="product-img fade-box">--%>
                <%--                                    <a href="detailProduct.jsp" title="" class="img-resize">--%>
                <%--                                        <img src="images/product/${product.avatar}" alt="" class="lazyloaded">--%>
                <%--                                    </a>--%>

                <%--                                </div>--%>
                <%--                                <div class="product-detail clearfix">--%>
                <%--                                    <div class="pro-text">--%>
                <%--                                        <a style=" color: black;--%>
                <%--                                                  font-size: 14px;text-decoration: none;" href="detailProduct.jsp"--%>
                <%--                                           title="" inspiration--%>
                <%--                                           pack>--%>
                <%--                                                ${product.name}--%>
                <%--                                        </a>--%>
                <%--                                    </div>--%>
                <%--                                    <div class="pro-price">--%>
                <%--                                        <p class="">Liên Hệ</p>--%>
                <%--                                    </div>--%>
                <%--                                </div>--%>
                <%--                            </div>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </c:forEach>--%>
            </div>
        </div>
    </section>
    <section class="">
        <div class="content">
            <div class="container">
                <div class="hot_sp">
                    <h2 style="text-align:center;padding-top: 10px">
                        <a style="font-size: 28px;color: black;text-decoration: none" href="blog.jsp">Bài viết mới
                            nhất</a>
                    </h2>
                    <br/>
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
                            <input required="" type="email" value="" placeholder="Nhập email của bạn"
                                   aria-label="Email Address"
                                   class="">
                            <button type="submit" class=""><span>Gửi</span></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
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
                        <input required="" type="email" value="" placeholder="Nhập email của bạn"
                               aria-label="Email Address"
                               class="">
                        <button type="submit" class=""><p>Đăng ký</p></button>
                    </div>
                </form>
            </div>
        </div>
    </form>
</div>

<!--gallery-->
<%@include file="../../common/web/footer.jsp" %>

</body>

</html>