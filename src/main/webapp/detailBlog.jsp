<%@ page import="vn.edu.hcmuaf.fit.model.BlogModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<%@include file="common/taglib.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <% BlogModel blog = (BlogModel) request.getAttribute("detailBlog");%>

    <%@include file="common/web/head.jsp" %>
    <title><%=blog.getTitle()%> | Phone Care</title>

</head>

<body>
<div class="header">
    <a style="color: #ffffff;text-decoration: none;" href="/">Hotline: 1800 2057 (Miễn phí) Thời gian làm việc
        T2 - CN: 8h - 20h</a>
</div>

<!--Navbar-->
<%@include file="common/web/header.jsp" %>

<div class="breadcrumb-shop">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5">
                <ol class="breadcrumb breadcrumb-arrows">
                    <li>
                        <a href="list-blog">
                            <span>Trang chủ</span>
                        </a>
                    </li>
                    <li>
                        <span><span style="color: #F28102">Bài viết</span></span>
                    </li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!--List Prodct-->

<div class="container">

    <div class="row">
        <div class="col-md-3 d-none d-sm-block d-sm-none d-md-block">
            <div class="sidebar-blog">
                <div class="news-latest">
                    <div class="sidebarblog-title title_block">
                        <h2>Bài viết mới nhất</h2>
                    </div>
                    <div class="list-news-latest layered">
                        <div class="item-article clearfix">
                            <div class="post-image">
                                <a href="">
                                    <img src="images/blog/" alt=""></a>
                            </div>
                            <div class="post-content">
                                <h3>
                                    <a href="list-blog">Cách chụp màn hình Iphone 14 Pro-max</a>
                                </h3>
                                <span class="author">
                    <a href="https://www.facebook.com/profile.php?id=100004489155351">Mạnh Quyền</a>
                  </span>
                                <span class="date">
                    30/10/2002
                  </span>
                            </div>
                        </div>
                        <div class="item-article clearfix">
                            <div class="post-image">
                                <a href=""><img src="images/blog/iphone-13-pro-loi-man-hinh-xanh.jpg" alt=""></a>
                            </div>
                            <div class="post-content">
                                <h3>
                                    <a href="list-blog">Iphone 13 Pro lỗi màn hình xanh</a>
                                </h3>
                                <span class="author">
                    <a href="https://www.facebook.com/profile.php?id=100004489155351">Mạnh Quyền</a>
                  </span>
                                <span class="date">
                    29/10/2022
                  </span>
                            </div>
                        </div>
                        <div class="item-article clearfix">
                            <div class="post-image">
                                <a href=""><img src="images/blog/cach-bat-thong-bao-sac-day-pin-android.jpg" alt=""></a>
                            </div>
                            <div class="post-content">
                                <h3>
                                    <a href="list-blog">Cách bật thông báo sạc day pin android</a>
                                </h3>
                                <span class="author">
                    <a href="https://www.facebook.com/ngdangphuoc/">Admin Phone Care</a>
                  </span>
                                <span class="date">
                    01/11/2022
                  </span>
                            </div>
                        </div>
                        <div class="item-article clearfix">
                            <div class="post-image">
                                <a href=""><img src="images/blog/n-4.jpg" alt="Bài viết mẫu"></a>
                            </div>
                            <div class="post-content">
                                <h3>
                                    <a href="">Bài viết mẫu</a>
                                </h3>
                                <span class="author">
                    <a href="">Phone Care</a>
                  </span>
                                <span class="date">
                    01/11/2022
                  </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="menu-blog">
                    <div class="group-menu">
                        <div class="page_menu_title title_block">
                            <h2>Danh mục trang</h2>
                        </div>
                        <div class="layered layered-category">
                            <div class="layered-content">
                                <ul class="menuList-links">
                                    <li class=""><a href="index.html" title="Trang chủ"><span>Trang chủ</span></a></li>
                                    <li class="has-submenu level0 ">
                                        <a title="Điện thoại">Điện thoại<span class="icon-plus-submenu"
                                                                              data-toggle="collapse"
                                                                              href="#collapseExample" role="button"
                                                                              aria-expanded="false"
                                                                              aria-controls="collapseExample"></span></a>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body" style="border:0">
                                                <ul class="menu-product">
                                                    <li class="">
                                                        <a href="#" title="Sửa điện thoại Iphone">
                                                            Sửa điện thoại Iphone
                                                        </a>
                                                    </li>
                                                    <li class="">
                                                        <a href="#" title="Sửa điện thoại Samsung">
                                                            Sửa điện thoại Samsung
                                                        </a>
                                                    </li>
                                                    <li class="">
                                                        <a href="#" title="Sửa điện thoại Xiaomi">
                                                            Sửa điện thoại Xiaomi
                                                        </a>
                                                    </li>
                                                    <li class="">
                                                        <a href="#" title="Sửa điện thoại Oppo">
                                                            Sửa điện thoại Oppo
                                                        </a>
                                                    </li>
                                                    <li class="">
                                                        <a href="#" title="Sửa điện thoại Vivo">
                                                            Sửa điện thoại Vivo
                                                        </a>
                                                    </li>
                                                    <li class="">
                                                        <a href="#" title="Sửa điện thoại Huawei">
                                                            Sửa điện thoại Huawei
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="has-submenu level0 ">
                                        <a title="Dịch vụ">Dịch vụ<span class="icon-plus-submenu" data-toggle="collapse"
                                                                        href="#collapseExample3" role="button"
                                                                        aria-expanded="false"
                                                                        aria-controls="collapseExample"></span></a>
                                        <div class="collapse" id="collapseExample3">
                                            <div class="card card-body" style="border:0">
                                                <ul class="menu-product">
                                                    <li class="">
                                                        <a href="#" title="Thay pin">
                                                            Thay pin
                                                        </a>
                                                    </li>
                                                    <li class="">
                                                        <a href="#" title="Thay màn hình">
                                                            Thay màn hình
                                                        </a>
                                                    </li>
                                                    <li class="">
                                                        <a href="#" title="Thay camera">
                                                            Thay camera
                                                        </a>
                                                    </li>
                                                    <li class="">
                                                        <a href="#" title="Thay vỏ">
                                                            Thay vỏ
                                                        </a>
                                                    </li>
                                                    <li class="">
                                                        <a href="#" title="Thay loa">
                                                            Thay loa
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="active"><a href="introduce.html"
                                                          title="Giới thiệu"><span>Giới thiệu</span></a></li>
                                    <li class=""><a href="list-blog" title="Blog"><span>Blog</span></a></li>
                                    <li class=""><a href="contact.html" title="Liên hệ"><span>Liên hệ</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-9 col-sm-12 col-xs-12 article-area">
            <div class="content-page">
                <div class="article-content" style="font-size: 18px">
                    <div class="box-article-heading clearfix">
                        <div class="background-img">
                            <img src="images/blog/<%=blog.getAvatar()%>" alt="">
                        </div>
                        <h1 class="sb-title-article"><%=blog.getTitle()%>
                        </h1>
                        <ul class="article-info-more" style="padding-left: 0 ">
                            <li> Người viết:<%=blog.getUserCreated()%> lúc
                                <time pubdate="" datetime="<%=blog.getCreatedDate()%>"><%=blog.getCreatedDate()%>
                                </time>
                            </li>
                            <li><i class="far fa-file-alt"></i><a style="color:black;text-decoration: none;" href="#">
                                <%=blog.getTypeBlog()%>
                            </a></li>
                        </ul>
                    </div>
                    <%=blog.getDetailContent()%>
                </div>
            </div>
        </div>
    </div>
</div>
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
                                    <div class="fb-page" data-href="#" data-tabs="timeline" data-width=""
                                         data-height="215"
                                         data-small-header="false" data-adapt-container-width="true"
                                         data-hide-cover="false"
                                         data-show-facepile="true">
                                        <blockquote cite="#" class="fb-xfbml-parse-ignore"><a
                                                href="https://project-personal-mine.web.app/">Nguyễn Đăng
                                            Phước </a>
                                        </blockquote>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="footer-content">
                            <div id="fb-root2">
                                <div class="footer-static-content">
                                    <div class="fb-page" data-href="#" data-tabs="timeline" data-width=""
                                         data-height="215"
                                         data-small-header="false" data-adapt-container-width="true"
                                         data-hide-cover="false"
                                         data-show-facepile="true">
                                        <blockquote cite="#" class="fb-xfbml-parse-ignore"><a
                                                href="mailTo:20130450@st.hcmuaf.edu.vn">Vũ
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
                                    <div class="fb-page" data-href="#" data-tabs="timeline" data-width=""
                                         data-height="215"
                                         data-small-header="false" data-adapt-container-width="true"
                                         data-hide-cover="false"
                                         data-show-facepile="true">
                                        <blockquote cite="#" class="fb-xfbml-parse-ignore"><a
                                                href="mailTo:20130479@st.hcmuaf.edu.vn">Nguyễn Mạnh
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

<%@include file="common/web/footer.jsp"%>
</body>

</html>