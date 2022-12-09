<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<%@include file="../../common/taglib.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <%@include file="../../common/web/head.jsp" %>
    <link rel="stylesheet" href="../../css/sign.css">

    <title>Đăng ký | Phone Care</title>
    <link href="../../images/logo/logo_PhoneCare.png" rel="shortcut icon" type="image/x-icon">

</head>

<body>
<%@include file="../../common/web/header.jsp" %>


<!--Content-->
<div class="content">
    <section class="signup">
        <div class="container">
            <div class="signin-left">
                <div class="sign-title">
                    <h1>Tạo tài khoản</h1>
                </div>
            </div>
            <div class="signin-right ">
                <form action="">
                    <div class="firstname form-control1 ">
                        <input type="text" id="firstname" placeholder="Họ và Tên">
                    </div>

                    <div class="sex form-control1">
                        <div class="female">

                            <input type="radio" id="female" checked name="sex">
                            <label for="female">Nữ</label>
                        </div>
                        <div class="male">

                            <input type="radio" id="male" name="sex">
                            <label for="male">Nam</label>
                        </div>
                    </div>
                    <div class="birthday form-control1">
                        <input type="date" id="birthday" placeholder="mm/dd/yyyy">
                    </div>
                    <div class="email form-control1">
                        <input type="email" id="email" placeholder="Email/SĐT">
                    </div>
                    <div class="password form-control1">
                        <input type="password" id="password" placeholder="Password">
                    </div>
                    <div class="submit">
                        <p>Đăng ký</p>
                    </div>
                    <div class="backto">
                        <a href="signin.jsp"><i class="fa fa-long-arrow-alt-left"></i> Quay lại đăng nhập</a>
                    </div>
                </form>
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
                            <img class="img-resize" src="../../images/footer/customer1.jpg" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="gallery_item">
                            <img class="img-resize" src="../../images/footer/customer2.jpg" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="gallery_item">
                            <img class="img-resize" src="../../images/footer/customer3.jpg" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="gallery_item">
                            <img class="img-resize" src="../../images/footer/customer4.jpg" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="gallery_item">
                            <img class="img-resize" src="../../images/footer/customer5.jpg" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="gallery_item">
                            <img class="img-resize" src="../../images/footer/customer6.jpg" alt="">
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
                                    <img src="../../images/logo-bct.png" alt="Bộ Công Thương">
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
                                        <a href="introduce.jsp" title="Giới thiệu">Giới thiệu</a>
                                    </li>
                                    <li class="item">
                                        <a href="introduce.jsp" title="Chính sách đổi trả">Chính sách đổi trả</a>
                                    </li>
                                    <li class="item">
                                        <a href="introduce.jsp" title="Chính sách bảo mật">Chính sách bảo mật</a>
                                    </li>
                                    <li class="item">
                                        <a href="introduce.jsp" title="Điều khoản dịch vụ">Điều khoản dịch vụ</a>
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
</div>


<%@include file="../../common/web/footer.jsp" %>

</body>

</html>