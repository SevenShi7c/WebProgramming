<!DOCTYPE html>
<html lang="en">

<head>
    <title>Quản lý sản phẩm | ADMIN</title>
    <link href="../../images/logo/logo_PhoneCare.png" rel="shortcut icon" type="image/x-icon">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <!-- or -->
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

</head>

<body onload="time()" class="app sidebar-mini rtl">
<!-- Navbar-->
<header class="app-header">
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">


        <!-- User Menu-->
        <li><a class="app-nav__item" href="../login.html"><i class='bx bx-log-out bx-rotate-180'></i> </a>

        </li>
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="../images/admin.png" width="50px"
                                        alt="User Image">
        <div>
            <p class="app-sidebar__user-name"><b>Admin</b></p>
            <p class="app-sidebar__user-designation">Chào mừng bạn trở lại</p>
        </div>
    </div>
    <hr>
    <ul class="app-menu">

        <li><a class="app-menu__item active " href="index.jsp"><i class='app-menu__icon bx bx-tachometer'></i><span
                class="app-menu__label">Bảng điều khiển</span></a></li>
        <li><a class="app-menu__item" href="manage-customer.jsp"><i class='app-menu__icon bx bx-user-voice'></i><span
                class="app-menu__label">Quản lý khách hàng</span></a></li>
        <li><a class="app-menu__item" href="manage-product.jsp"><i
                class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Quản lý sản phẩm</span></a></li>
        <li><a class="app-menu__item" href="manage-order.jsp"><i class='app-menu__icon bx bx-task'></i><span
                class="app-menu__label">Quản lý đơn hàng</span></a></li>
        <li><a class="app-menu__item" href="manage-booked.jsp"><i class='app-menu__icon bx bx-calendar-check'></i><span
                class="app-menu__label">Quản lý lịch đã đặt </span></a></li>
        <li><a class="app-menu__item" href="manage-blog.jsp"><i class='app-menu__icon bx bx-news'></i><span
                class="app-menu__label">Quản lý tin tức </span></a></li>


    </ul>

</aside>
<main class="app-content">
    <div class="app-title">
        <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item">Quản lý sản phẩm</li>
            <li class="breadcrumb-item"><a href="#">Danh sách sản phẩm</a></li>
        </ul>
        <div id="clock"></div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <div class="row element-button">
                        <div class="col-sm-2">

                            <a class="btn btn-add btn-sm" href="add-product.jsp" title="Thêm"><i
                                    class="fas fa-plus"></i>
                                Tạo mới sản phẩm</a>
                        </div>


                        <div class="col-sm-2">
                            <a class="btn btn-delete btn-sm print-file" type="button" title="In"
                               onclick="myApp.printTable()"><i
                                    class="fas fa-print"></i> In dữ liệu</a>
                        </div>

                        <div class="col-sm-2">
                            <a class="btn btn-delete btn-sm" type="button" title="Xóa" onclick="myFunction(this)"><i
                                    class="fas fa-trash-alt"></i> Xóa tất cả </a>
                        </div>
                    </div>
                    <table class="table table-hover table-bordered" id="sampleTable">
                        <thead>
                        <tr>
                            <th width="10"><input type="checkbox" id="all"></th>
                            <th>ID sản phẩm</th>
                            <th>Tên sản phẩm</th>
                            <th>Ảnh</th>
                            <th>Số lượng</th>
                            <th>Tình trạng</th>
                            <th>Giá tiền</th>
                            <th>Danh mục</th>
                            <th>Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay dây nút nguồn Xiaomi Redmi Note 11 Pro</td>
                            <td><img
                                    src="../../images/product/thay-day-nut-nguon-xiaomi-redmi-note-11-pro_1667623363.png"
                                    alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay cụm đuôi sạc Samsung Galaxy A02 A022F</td>
                            <td><img
                                    src="../../images/product/thay-cum-duoi-sac-samsung-galaxy-a02-a022f_1667623123.png"
                                    alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>thay sạc</td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Độ vỏ iPhone 12 Pro</td>
                            <td><img src="../../images/product/do-vo-iphone-12-pro_1667622426.png" alt=""
                                     width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Độ vỏ iPhone 13 Pro</td>
                            <td><img src="../../images/product/do-vo-iphone-13-pro_1667622253.png" alt=""
                                     width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>2.700.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Độ vỏ iPhone 13 Pro Max</td>
                            <td><img src="../../images/product/do-vo-iphone-13-pro-max_1667622099.png" alt=""
                                     width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>3.100.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay loa iPhone XR</td>
                            <td><img src="../../images/product/thay-loa-iphone-xr_1667543636.png" alt="" width="100px;">
                            </td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>3.800.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Asus Zenfone Max Plus (M1) ZB570TL</td>
                            <td><img src="../../images/product/thay-pin-asus-zenfone-max-plus-m1-zb570tl_1667468565.png"
                                     alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay cảm ứng Asus Zenfone Max Plus (M1) ZB570TL
                            </td>
                            <td><img src="../../images/product/thay-cam-ung-asus-zenfone-max-plus-m1-zb570tl_1667468452.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay vỏ Samsung Galaxy A7 2018 A750F
                            </td>
                            <td><img src="../../images/product/thay-vo-samsung-galaxy-a7-2018-a750f_1667468169.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>350.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin ZTE nubia Red Magic 5G
                            </td>
                            <td><img src="../../images/product/thay-pin-zte-nubia-red-magic-5g_1667298261.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>400.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Huawei Nova 2 Lite
                            </td>
                            <td><img src="../../images/product/thay-pin-huawei-nova-2-lite_1667380424.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>280.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay chân sạc Huawei Nova 2 Lite
                            </td>
                            <td><img src="../../images/product/thay-chan-sac-huawei-nova-2-lite_1667380708.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay lưng Nokia 5.1 Plus (Nokia X5, TA 1102, TA 1105, TA 1120)
                            </td>
                            <td><img src="../../images/product/thay-lung-nokia-51-plus-nokia-x5-ta-1102-ta-1105-ta-1120_1667296003.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>200.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay vỏ Xiaomi Redmi Note 10 4G
                            </td>
                            <td><img src="../../images/product/thay-vo-xiaomi-redmi-note-10-4g_1667295745.png" alt=""
                                     width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>350.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay cụm dây Volume, nút nguồn Xiaomi Pocophone F1
                            </td>
                            <td><img src="../../images/product/thay-cum-day-volume-nut-nguon-xiaomi-pocophone-f1_1667295401.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>200.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay vỏ Xiaomi Pocophone F1
                            </td>
                            <td><img src="../../images/product/thay-vo-xiaomi-pocophone-f1_1667295150.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>390.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay màn hình Samsung Galaxy Z Fold3
                            </td>
                            <td><img src="../../images/product/thay-man-hinh-samsung-galaxy-z-fold3_1667211393.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>14.000.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay nút nguồn Samsung Galaxy S10 G973
                            </td>
                            <td><img src="../../images/product/thay-nut-nguon-samsung-galaxy-s10-g973_1667272872.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>100.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay cảm ứng Asus Zenfone 3 5.2 (ZE520KL, Z017D)
                            </td>
                            <td><img src="../../images/product/thay-cam-ung-asus-zenfone-3-52-ze520kl-z017d_1667211993.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>400.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay dây nút nguồn Volume Oppo F11
                            </td>
                            <td><img src="../../images/product/thay-day-nut-nguon-volume-oppo-f11_1667019189.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>200.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay màn hình Samsung Galaxy Z Fold
                            </td>
                            <td><img src="../../images/product/thay-man-hinh-samsung-galaxy-z-fold_1667210930.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>12.800.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay lưng Xiaomi Black Shark 3 Pro
                            </td>
                            <td><img src="../../images/product/thay-lung-xiaomi-black-shark-3-pro_1667210058.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>800.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay main Samsung Galaxy Note 10 Plus N975
                            </td>
                            <td><img src="../../images/product/thay-main-samsung-galaxy-note-10-plus-n975_1666950500.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>2.500.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay main Xiaomi Redmi Note 10 Pro M2101K6G
                            </td>
                            <td><img src="../../images/product/thay-main-xiaomi-redmi-note-10-pro-m2101k6g_1666950266.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>2.200.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay lưng LG G8X ThinQ
                            </td>
                            <td><img src="../../images/product/thay-lung-lg-g8x-thinq_1666950111.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ</td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Xiaomi Mi 3
                            </td>
                            <td><img src="../../images/product/thay-pin-xiaomi-mi-3_1666949803.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>220.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay camera Oppo Reno2 F
                            </td>
                            <td><img src="../../images/product/thay-camera-oppo-reno2-f_1666949627.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>700.000đ</td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Huawei Mate 20 Pro
                            </td>
                            <td><img src="../../images/product/thay-pin-huawei-mate-20-pro_1666949461.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>400.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay lưng Oppo A15s
                            </td>
                            <td><img src="../../images/product/thay-lung-oppo-a15s_1666950872.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>200.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay màn hình Xiaomi Mi 11 5G
                            </td>
                            <td><img src="../../images/product/thay-man-hinh-xiaomi-mi-11-5g_1666949319.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>6.000.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay khung sườn Xiaomi Redmi Note 9 Pro
                            </td>
                            <td><img src="../../images/product/thay-khung-suon-xiaomi-redmi-note-9-pro_1666949115.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>550.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay kính lưng Xiaomi Redmi Note 9 Pro
                            </td>
                            <td><img src="../../images/product/thay-kinh-lung-xiaomi-redmi-note-9-pro_1666949012.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>200.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay chuông Xiaomi Redmi Note 5 Pro
                            </td>
                            <td><img src="../../images/product/thay-chuong-xiaomi-redmi-note-5-pro_1666948781.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Điện thoại</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Wiko View Max
                            </td>
                            <td><img src="../../images/product/thay-pin-wiko-view-max_1666948134.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>400.000đ
                            </td>
                            <td>Thay pin</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay kính lưng Realme GT Neo 2 5G
                            </td>
                            <td><img src="../../images/product/thay-kinh-lung-realme-gt-neo-2-5g_1666866546.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>350.000đ
                            </td>
                            <td>Thay kính
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>


                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay kính lưng Realme GT Neo 2 5G
                            </td>
                            <td><img src="../../images/product/thay-kinh-lung-realme-gt-neo-2-5g_1666866546.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>350.000đ
                            </td>
                            <td>Thay kính
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>


                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay mặt kính Realme GT Neo 2 5G
                            </td>
                            <td><img src="../../images/product/thay-mat-kinh-realme-gt-neo-2-5g_1666866396.png" alt=""
                                     width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>800.000đ</td>
                            <td>Thay kính</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay lưng ZTE Red Magic 7 Pro
                            </td>
                            <td><img src="../../images/product/thay-lung-zte-red-magic-7-pro_1666948523.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>450.000đ
                            </td>
                            <td>Thay lưng
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Oppo A92</td>
                            <td><img src="../../images/product/thay-pin-oppo-a92_1666863968.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>280.000đ
                            </td>
                            <td>Thay pin</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Samsung Galalxy A8 2018 A530
                            </td>
                            <td><img src="../../images/product/thay-pin-samsung-galalxy-a8-2018-a530_1666778501.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>270.000đ
                            </td>
                            <td>Thay pin
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Xiaomi Mi CC9</td>
                            <td><img src="../../images/product/thay-pin-xiaomi-mi-cc9_1666776817.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>220.000đ
                            </td>
                            <td>Thay pin
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay màn hình Vivo Y15A
                            </td>
                            <td><img src="../../images/product/thay-man-hinh-vivo-y15a_1666776495.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>700.000đ
                            </td>
                            <td>Thay màn
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay dây Volume Oppo A55 4G
                            </td>
                            <td><img src="../../images/product/thay-day-volume-oppo-a55-4g_1666776208.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>250.000đ
                            </td>
                            <td>Thay dây
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay mặt kính Oppo A55 4G
                            </td>
                            <td><img src="../../images/product/thay-mat-kinh-oppo-a55-4g_1666775831.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>350.000đ
                            </td>
                            <td>Thay mặt
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay bẹ sạc Xiaomi Redmi K30 Pro
                            </td>
                            <td><img src="../../images/product/thay-be-sac-xiaomi-redmi-k30-pro_1666682428.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>400.000đ
                            </td>
                            <td>Thay bẹ
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay bẹ sạc Huawei Nova 3i
                            </td>
                            <td><img src="../../images/product/thay-be-sac-huawei-nova-3i_1666681942.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Thay bẹ
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay bẹ sạc Samsung Galaxy A30 A305F
                            </td>
                            <td><img src="../../images/product/thay-be-sac-samsung-galaxy-a30-a305f_1666681400.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>350.000đ
                            </td>
                            <td>Thay bẹ
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay lưng Xiaomi Mi 8
                            </td>
                            <td><img src="../../images/product/thay-lung-xiaomi-mi-8_1666681091.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>180.000đ
                            </td>
                            <td>Thay lưng
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay khung sườn Samsung Galaxy A8 Star (A9 Star, G885, G8850)
                            </td>
                            <td><img src="../../images/product/thay-khung-suon-samsung-galaxy-a8-star-a9-star-g885-g8850_1666680867.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>500.000đ
                            </td>
                            <td>Thay khung
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Samsung Galaxy A8 Star (A9 Star, G885, G8850)
                            </td>
                            <td><img src="../../images/product/thay-pin-samsung-galaxy-a8-star-a9-star-g885-g8850_1666680702.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Thay pin
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay mặt kính Samsung Galaxy S20 Ultra 5G
                            </td>
                            <td><img src="../../images/product/thay-mat-kinh-samsung-galaxy-s20-ultra-5g_1666680416.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>1.500.000đ
                            </td>
                            <td>Thay mặt
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Vivo Y97
                            </td>
                            <td><img src="../../images/product/thay-pin-vivo-y97_1666600216.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>280.000đ
                            </td>
                            <td>Thay pin
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Vivo V11i
                            </td>
                            <td><img src="../../images/product/thay-pin-vivo-v11i_1666600035.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>280.000đ
                            </td>
                            <td>Thay pin
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay chân sạc Xiaomi Redmi Note 9 Pro
                            </td>
                            <td><img src="../../images/product/thay-chan-sac-xiaomi-redmi-note-9-pro_1666598453.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>400.000đ
                            </td>
                            <td>Thay chân sạc</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay cáp sạc Oppo F5 Youth
                            </td>
                            <td><img src="../../images/product/thay-cap-sac-oppo-f5-youth_1666412899.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>240.000đ
                            </td>
                            <td>Thay cáp sạc</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay cáp sạc Oppo F5
                            </td>
                            <td><img src="../../images/product/thay-cap-sac-oppo-f5_1666412691.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>240.000đ
                            </td>
                            <td>Thay cáp
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay kính Camera sau Xiaomi Redmi Note 10
                            </td>
                            <td><img src="../../images/product/thay-kinh-camera-sau-xiaomi-redmi-note-10_1666412420.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>200.000đ
                            </td>
                            <td>Thay kính
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay dây nút nguồn Samsung Galaxy C9, C9 Pro C900F
                            </td>
                            <td><img src="../../images/product/thay-day-nut-nguon-samsung-galaxy-c9-c9-pro-c900f_1666412049.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Thay dây nguồn</td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay bẹ sạc Xiaomi Redmi K30 5G
                            </td>
                            <td><img src="../../images/product/thay-be-sac-xiaomi-redmi-k30-5g_1666411243.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Thay bẹ
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay khung sườn Samsung Galaxy Note 10 Lite N770
                            </td>
                            <td><img src="../../images/product/thay-khung-suon-samsung-galaxy-note-10-lite-n770_1666248617.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>900.000đ
                            </td>
                            <td>Thay khung
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay dây nút nguồn Samsung Galaxy S20 FE 2022 G781NK
                            </td>
                            <td><img src="../../images/product/thay-day-nut-nguon-samsung-galaxy-s20-fe-2022-g781nk_1666241906.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>450.000đ
                            </td>
                            <td>Thay dây
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay bẹ sạc Samsung Galaxy A7 2018 A750F
                            </td>
                            <td><img src="../../images/product/thay-be-sac-samsung-galaxy-a7-2018-a750f_1666174713.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>350.000đ
                            </td>
                            <td>Thay bẹ
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Realme 3 (RMX1825, RMX1821)
                            </td>
                            <td><img src="../../images/product/thay-pin-realme-3-rmx1825-rmx1821_1666161938.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>270.000đ
                            </td>
                            <td>Thay pin
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay Pin Xiaomi Mi Note 10 Pro
                            </td>
                            <td><img src="../../images/product/thay-pin-xiaomi-mi-note-10-pro_1666148676.jpg
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>450.000đ
                            </td>
                            <td>Thay Pin
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay bẹ sạc Sony Xperia XA1 Plus (G3421, G3423)
                            </td>
                            <td><img src="../../images/product/thay-be-sac-sony-xperia-xa1-plus-g3421-g3423_1666088775.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Thay bẹ
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay bẹ sạc Sony Xperia XA1 Plus Dual (G3412, G3416)
                            </td>
                            <td><img src="../../images/product/thay-be-sac-sony-xperia-xa1-plus-dual-g3412-g3416_1666088596.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Thay bẹ
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay chuông Vsmart Live 4
                            </td>
                            <td><img src="../../images/product/thay-chuong-vsmart-live-4_1666088253.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>200.000đ
                            </td>
                            <td>Thay chuông
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay chân sạc Oppo Reno2 F
                            </td>
                            <td><img src="../../images/product/thay-chan-sac-oppo-reno2-f_1666067308.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>340.000đ
                            </td>
                            <td>Thay chân
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay chân sạc Oppo Reno2
                            </td>
                            <td><img src="../../images/product/thay-chan-sac-oppo-reno2_1666067197.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>340.000đ
                            </td>
                            <td>Thay chân
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay màn hình Vivo V15 Pro
                            </td>
                            <td><img src="../../images/product/thay-man-hinh-vivo-v15-pro_1666073965.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>1.400.000đ
                            </td>
                            <td>Thay màn
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay kính lưng Realme 6
                            </td>
                            <td><img src="../../images/product/thay-kinh-lung-realme-6_1666074569.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Thay kính
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay mặt kính Vivo V15 Pro
                            </td>
                            <td><img src="../../images/product/thay-mat-kinh-vivo-v15-pro_1666000868.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>400.000đ
                            </td>
                            <td>Thay mặt
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay dây nút nguồn Xiaomi 11 Lite 5G NE
                            </td>
                            <td><img src="../../images/product/thay-day-nut-nguon-xiaomi-11-lite-5g-ne_1665999138.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>500.000đ
                            </td>
                            <td>Thay dây
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay lưng Oppo Reno6 Z 5G
                            </td>
                            <td><img src="../../images/product/thay-lung-oppo-reno6-z-5g_1665991980.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>580.000đ
                            </td>
                            <td>Thay lưng
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay mặt kính Meizu Pro 6
                            </td>
                            <td><img src="../../images/product/thay-mat-kinh-meizu-pro-6_1665476477.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>450.000đ
                            </td>
                            <td>Thay mặt
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay chân sạc Huawei Y5 2019
                            </td>
                            <td><img src="../../images/product/thay-chan-sac-huawei-y5-2019_1665472182.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>340.000đ
                            </td>
                            <td>Thay chân
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay mặt kính Huawei Y5 2019
                            </td>
                            <td><img src="../../images/product/thay-mat-kinh-huawei-y5-2019_1665471908.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>400.000đ
                            </td>
                            <td>Thay mặt
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay màn hình Huawei P9 Plus
                            </td>
                            <td><img src="../../images/product/thay-man-hinh-huawei-p9-plus_1665471473.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>1.000.000đ
                            </td>
                            <td>Thay màn
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay vỏ Xiaomi Redmi Note 11
                            </td>
                            <td><img src="../../images/product/thay-vo-xiaomi-redmi-note-11_1665205312.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>650.000đ
                            </td>
                            <td>Thay vỏ
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay rung Asus ROG Phone 5
                            </td>
                            <td><img src="../../images/product/thay-rung-asus-rog-phone-5_1665205088.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>500.000đ
                            </td>
                            <td>Thay rung
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Xiaomi Redmi Note 9s
                            </td>
                            <td><img src="../../images/product/thay-pin-xiaomi-redmi-note-9s_1665049350.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>350.000đ
                            </td>
                            <td>Thay pin
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay chân sạc Samsung Galaxy A5 2016 A510
                            </td>
                            <td><img src="../../images/product/thay-chan-sac-samsung-galaxy-a5-2016-a510_1665049201.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>350.000đ
                            </td>
                            <td>Thay chân
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay main Xiaomi Black Shark 2
                            </td>
                            <td><img src="../../images/product/thay-main-xiaomi-black-shark-2_1665048935.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>1.600.000đ
                            </td>
                            <td>Thay main
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay main Samsung Galaxy J7 Prime G610
                            </td>
                            <td><img src="../../images/product/thay-main-samsung-galaxy-j7-prime-g610_1665048792.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>800.000đ
                            </td>
                            <td>Thay main
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay main Vsmart Joy 4
                            </td>
                            <td><img src="../../images/product/thay-main-vsmart-joy-4_1665048635.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>1.600.000đ
                            </td>
                            <td>Thay main
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay loa Huawei GR5 2017 BLL L22
                            </td>
                            <td><img src="../../images/product/thay-loa-huawei-gr5-2017-bll-l22_1665048315.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>150.000đ
                            </td>
                            <td>Thay loa
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay màn hình Xiaomi Mi 3
                            </td>
                            <td><img src="../../images/product/thay-man-hinh-xiaomi-mi-3_1664965300.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>500.000đ
                            </td>
                            <td>Thay màn
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay chân sạc Xiaomi Redmi 5 Plus
                            </td>
                            <td><img src="../../images/product/thay-chan-sac--xiaomi-redmi-5-plus_1665046385.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>240.000đ
                            </td>
                            <td>Thay chân
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay vỏ Huawei GR5 2017 BLL L22
                            </td>
                            <td><img src="../../images/product/thay-vo-huawei-gr5-2017-bll-l22_1665047373.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>600.000đ
                            </td>
                            <td>Thay vỏ
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Vivo iQOO Neo 855 Plus
                            </td>
                            <td><img src="../../images/product/thay-pin-vivo-iqoo-neo-855-plus_1664876679.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>350.000đ
                            </td>
                            <td>Thay pin
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay dây nút nguồn Huawei P30 Pro
                            </td>
                            <td><img src="../../images/product/thay-day-nut-nguon-huawei-p30-pro_1664876431.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>400.000đ
                            </td>
                            <td>Thay dây
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay mặt kính Realme XT RMX1921
                            </td>
                            <td><img src="../../images/product/thay-mat-kinh-realme-xt-rmx1921_1664875887.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>400.000đ
                            </td>
                            <td>Thay mặt
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay kính Camera sau Xiaomi Redmi Note 11S
                            </td>
                            <td><img src="../../images/product/thay-kinh-camera-sau-xiaomi-redmi-note-11s_1664875409.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>150.000đ
                            </td>
                            <td>Thay kính
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay vỏ Vivo V15
                            </td>
                            <td><img src="../../images/product/thay-vo-vivo-v15_1664875183.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Thay vỏ
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay vỏ Vivo S1 1819
                            </td>
                            <td><img src="../../images/product/thay-vo-vivo-s1-1819_1664875031.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000đ
                            </td>
                            <td>Thay vỏ
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay lưng Xiaomi Mi Mix 2
                            </td>
                            <td><img src="../../images/product/thay-lung-xiaomi-mi-mix-2_1664874172.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>500.000đ
                            </td>
                            <td>Thay lưng
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay mặt kính Vivo Y15A
                            </td>
                            <td><img src="../../images/product/thay-mat-kinh-vivo-y15a_1664868259.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>220.000đ
                            </td>
                            <td>Thay mặt
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay camera Samsung Galaxy S20 Ultra G988
                            </td>
                            <td><img src="../../images/product/thay-camera-samsung-galaxy-s20-ultra-g988_1664531472.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>1.950.000đ
                            </td>
                            <td>Thay camera
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay pin Huawei Honor 6x (2016)
                            </td>
                            <td><img src="../../images/product/thay-pin-huawei-honor-6x-2016_1664531287.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>450.000đ
                            </td>
                            <td>Thay pin
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>72638003</td>
                            <td>Thay vỏ Xiaomi 11T
                            </td>
                            <td><img src="../../images/product/thay-vo-xiaomi-11t_1664446663.png
                    " alt="" width="100px;"></td>
                            <td>50</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>800.000đ
                            </td>
                            <td>Thay vỏ
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>

<!--
MODAL
-->
<div class="modal fade" id="ModalUP" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static"
     data-keyboard="false">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <div class="row">
                    <div class="form-group  col-md-12">
              <span class="thong-tin-thanh-toan">
                <h5>Chỉnh sửa thông tin sản phẩm cơ bản</h5>
              </span>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="control-label">Mã sản phẩm </label>
                        <input class="form-control" type="number" value="71309005">
                    </div>
                    <div class="form-group col-md-6">
                        <label class="control-label">Tên sản phẩm</label>
                        <input class="form-control" type="text" required
                               value="Thay dây nút nguồn Xiaomi Redmi Note 11 Pro	">
                    </div>
                    <div class="form-group  col-md-6">
                        <label class="control-label">Tồn kho</label>
                        <input class="form-control" type="number" required value="50">
                    </div>
                    <div class="form-group col-md-6 ">
                        <label for="exampleSelect1" class="control-label">Tình trạng sản phẩm</label>
                        <select class="form-control" id="exampleSelect1">
                            <option>Còn hàng</option>
                            <option>Hết hàng</option>
                            <option>Đang nhập hàng</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label class="control-label">Giá bán</label>
                        <input class="form-control" type="text" value="300.000đ">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="exampleSelect1" class="control-label">Danh mục</label>
                        <select class="form-control" id="exampleSelect1">
                            <option>Thay dây nguồn</option>
                            <option>Thay vỏ</option>
                            <option>Thay mặt kính</option>
                            <option>Thay pin</option>
                            <option>Thay chân sạc</option>
                        </select>
                    </div>
                </div>
                <BR>
                <a href="edit-product.jsp" style="float: right;font-weight: 600;color: #ea0000;">Chỉnh sửa sản phẩm
                    nâng cao</a>
                <BR>
                <BR>
                <button class="btn btn-save" type="button" onclick="save()">Lưu lại</button>
                <a class="btn btn-cancel" data-dismiss="modal" href="#">Hủy bỏ</a>
                <BR>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
<!--
MODAL
-->

<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="src/jquery.table2excel.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
<!-- Data table plugin-->
<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
    $('#sampleTable').DataTable();

    //Thời Gian
    function time() {
        var today = new Date();
        var weekday = new Array(7);
        weekday[0] = "Chủ Nhật";
        weekday[1] = "Thứ Hai";
        weekday[2] = "Thứ Ba";
        weekday[3] = "Thứ Tư";
        weekday[4] = "Thứ Năm";
        weekday[5] = "Thứ Sáu";
        weekday[6] = "Thứ Bảy";
        var day = weekday[today.getDay()];
        var dd = today.getDate();
        var mm = today.getMonth() + 1;
        var yyyy = today.getFullYear();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        m = checkTime(m);
        s = checkTime(s);
        nowTime = h + " giờ " + m + " phút " + s + " giây";
        if (dd < 10) {
            dd = '0' + dd
        }
        if (mm < 10) {
            mm = '0' + mm
        }
        today = day + ', ' + dd + '/' + mm + '/' + yyyy;
        tmp = '<span class="date"> ' + today + ' - ' + nowTime +
            '</span>';
        document.getElementById("clock").innerHTML = tmp;
        clocktime = setTimeout("time()", "1000", "Javascript");

        function checkTime(i) {
            if (i < 10) {
                i = "0" + i;
            }
            return i;
        }
    }
</script>
<script>
    function deleteRow(r) {
        var i = r.parentNode.parentNode.rowIndex;
        document.getElementById("myTable").deleteRow(i);
    }

    jQuery(function () {
        jQuery(".trash").click(function () {
            swal({
                title: "Cảnh báo",
                text: "Bạn có chắc chắn là muốn xóa sản phẩm này?",
                buttons: ["Hủy bỏ", "Đồng ý"],
            })
                .then((willDelete) => {
                    if (willDelete) {
                        swal("Đã xóa thành công.!", {});
                    }
                });
        });
    });
    oTable = $('#sampleTable').dataTable();
    $('#all').click(function (e) {
        $('#sampleTable tbody :checkbox').prop('checked', $(this).is(':checked'));
        e.stopImmediatePropagation();
    });

    function save() {

        swal("Đã lưu thành công.!", {});

    }
</script>
</body>

</html>