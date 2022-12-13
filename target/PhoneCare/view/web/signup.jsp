<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<%@include file="../../common/taglib.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <%@include file="../../common/web/head.jsp" %>
    <link rel="stylesheet" href="././css/sign.css">

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
                        <a href="signin"><i class="fa fa-long-arrow-alt-left"></i> Quay lại đăng nhập</a>
                    </div>
                </form>
            </div>
        </div>
    </section>

</div>


<%@include file="../../common/web/footer.jsp" %>

</body>

</html>