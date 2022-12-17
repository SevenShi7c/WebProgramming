<!DOCTYPE html>
<html lang="en">

<head>
    <title>Chỉnh sửa tin tức | ADMIN</title>
    <link href="../../images/logo/logo_PhoneCare.png" rel="shortcut icon" type="image/x-icon">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="../../admin/doc/css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <!-- or -->
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="../../admin/ckeditor/ckeditor.js"></script>
    <script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
    <script>

        function readURL(input, thumbimage) {
            if (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
                var reader = new FileReader();
                reader.onload = function (e) {
                    $("#thumbimage").attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            } else { // Sử dụng cho IE
                $("#thumbimage").attr('src', input.value);

            }
            $("#thumbimage").show();
            $('.filename').text($("#uploadfile").val());
            $('.Choicefile').css('background', '#14142B');
            $('.Choicefile').css('cursor', 'default');
            $(".removeimg").show();
            $(".Choicefile").unbind('click');

        }

        $(document).ready(function () {
            $(".Choicefile").bind('click', function () {
                $("#uploadfile").click();

            });
            $(".removeimg").click(function () {
                $("#thumbimage").attr('src', '').hide();
                $("#myfileupload").html('<input type="file" id="uploadfile"  onchange="readURL(this);" />');
                $(".removeimg").hide();
                $(".Choicefile").bind('click', function () {
                    $("#uploadfile").click();
                });
                $('.Choicefile').css('background', '#14142B');
                $('.Choicefile').css('cursor', 'pointer');
                $(".filename").text("");
            });
        })
    </script>
</head>

<body class="app sidebar-mini rtl">
<style>
    .Choicefile {
        display: block;
        background: #14142B;
        border: 1px solid #fff;
        color: #fff;
        width: 150px;
        text-align: center;
        text-decoration: none;
        cursor: pointer;
        padding: 5px 0px;
        border-radius: 5px;
        font-weight: 500;
        align-items: center;
        justify-content: center;
    }

    .Choicefile:hover {
        text-decoration: none;
        color: white;
    }

    #uploadfile,
    .removeimg {
        display: none;
    }

    #thumbbox {
        position: relative;
        width: 100%;
        margin-bottom: 20px;
    }

    .removeimg {
        height: 25px;
        position: absolute;
        background-repeat: no-repeat;
        top: 5px;
        left: 5px;
        background-size: 25px;
        width: 25px;
        /* border: 3px solid red; */
        border-radius: 50%;

    }

    .removeimg::before {
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        content: '';
        border: 1px solid red;
        background: red;
        text-align: center;
        display: block;
        margin-top: 11px;
        transform: rotate(45deg);
    }

    .removeimg::after {
        /* color: #FFF; */
        /* background-color: #DC403B; */
        content: '';
        background: red;
        border: 1px solid red;
        text-align: center;
        display: block;
        transform: rotate(-45deg);
        margin-top: -2px;
    }
</style>
<!-- Navbar-->
<header class="app-header">
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">


        <!-- User Menu-->
        <li><a class="app-nav__item" href="../../admin/login.html"><i class='bx bx-log-out bx-rotate-180'></i> </a>

        </li>
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="../../admin/images/admin.png" width="50px"
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
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><a href="manage-blog.jsp">Quản lý tin tức</a></li>
            <li class="breadcrumb-item">Chỉnh sửa tin tức</li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <h3 class="tile-title">Chỉnh sửa nâng cao</h3>
                <div class="tile-body">
                    <form class="row">
                        <div class="form-group col-md-3">
                            <label class="control-label">Tiêu đề tin</label>
                            <input class="form-control" type="text" placeholder=""
                                   value="Thông tin liên quan về Iphone 14">
                        </div>
                        <div class="form-group  col-md-3">
                            <label class="control-label">Người đăng</label>
                            <input class="form-control" type="text" value="Quản trị">
                        </div>
                        <div class="form-group col-md-3 ">
                            <label for="exampleSelect1" class="control-label">Trạng thái</label>
                            <select class="form-control" id="exampleSelect1">
                                <option value="1">Đăng</option>
                                <option value="0">Chưa đăng</option>
                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="exampleSelect1" class="control-label">Danh mục tin</label>
                            <select class="form-control" id="exampleSelect1">
                                <option>Công nghệ</option>
                                <option>Điện thoại</option>
                                <option>Máy tính</option>
                                <option>Giải đáp</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="control-label">Ảnh đại diện</label>
                            <div id="myfileupload">
                                <input type="file" id="uploadfile" name="ImageUpload" onchange="readURL(this);"/>
                            </div>
                            <div id="thumbbox">
                                <img height="450" width="400" alt="Thumb image" id="thumbimage"
                                     src="../../admin/images/iphone.jpg"/>
                                <a class="removeimg" href="javascript:"></a>
                            </div>
                            <div id="boxchoice">
                                <a href="javascript:" class="Choicefile"><i class="fas fa-cloud-upload-alt"></i>
                                    Chọn ảnh</a>
                                <p style="clear:both"></p>
                            </div>

                        </div>

                        <div class="form-group col-md-6">
                            <label class="control-label">Nội dung tóm tắt</label>
                            <textarea name="" id="input" class="form-control" rows="3"
                                      required="required">Loạt iPhone 14 dự kiến sẽ chính thức được giới thiệu tại sự kiện Far Out vào ngày 7.9, và dưới đây là cái nhìn sớm về loạt thiết bị này trước khi ra mắt.</textarea>
                        </div>
                        <div class="form-group col-md-12">
                            <label class="control-label">Mô tả sản phẩm</label>
                            <div class="form-control" name="mota" id="mota">
                                <div class="l-content">
                                    <div class="clearfix content-detail-top">
                                        <div class="sapo cms-desc" id="chapeau">
                                            <p>Loạt iPhone 14 dự kiến sẽ chính thức được giới thiệu tại sự kiện Far
                                                Out vào ngày 7.9, và dưới đây là cái nhìn sớm về loạt thiết bị này
                                                trước khi ra mắt.</p>
                                        </div>

                                        <div id="abdf" class="details__content">
                                            <div id="abody" class="cms-body detail" itemprop="articleBody">
                                                <p>Trước khi đi sâu vào các tính năng, người dùng cần biết rằng dòng
                                                    iPhone 14 dự kiến sẽ bao gồm 4 phiên bản, trong đó iPhone 14 6,7
                                                    inch được cho là mang tên gọi iPhone 14 Plus thay vì iPhone 14
                                                    Max như các tin đồn trước đó. </p>
                                                <table class="picture">
                                                    <tbody>
                                                    <tr>
                                                        <td class="pic"><img data-image-id="3955463"
                                                                             src="../../admin/images/iphone.jpg" data-width="768"
                                                                             data-height="432"
                                                                             class="lazyload  cms-photo"
                                                                             alt="Các thông tin về iPhone 14 trước giờ G - ảnh 3"
                                                                             caption="Các thông tin về iPhone 14 trước giờ G - ảnh 3">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="caption">
                                                            <p>Các mẫu iPhone 14 Pro đi kèm nhiều tính năng khác
                                                            </p>
                                                            <div class="source">
                                                                <p> chụp màn hình</p>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                                <p>Như vậy, các mẫu iPhone 14 sẽ gồm iPhone 14 6,1 inch, iPhone 14
                                                    Plus 6,7 inch, iPhone 14 Pro 6,1 inch và iPhone 14 Pro Max 6,7
                                                    inch.</p>
                                                <h2><strong>Thiết kế</strong></h2>
                                                <p>Các mẫu iPhone 14 dự kiến sẽ trông giống như các mẫu iPhone 13
                                                    với cùng thiết kế viền phẳng. Dòng sản phẩm này sẽ không có bản
                                                    màn hình 5,4 inch mà hoàn toàn tập trung vào kích thước 6,1 inch
                                                    và 7,7 inch. Vùng cản camera được cho là lớn hơn khoảng 5%, vì
                                                    vậy vỏ cho iPhone 13 nhiều khả năng không vừa với các mẫu iPhone
                                                    14 do kích thước tăng.</p>
                                                <p>Một bộ vỏ cho các mẫu iPhone 14 cung cấp cái nhìn sâu hơn về sự
                                                    khác biệt kích thước giữa các mẫu và phần đường cắt camera. Vỏ
                                                    máy có các kích thước 6,1 inch và 6,7 inch. Một tin đồn cho biết
                                                    các mẫu iPhone 14 sẽ có nam châm MagSafe mạnh mẽ hơn để gắn các
                                                    phụ kiện, nhưng vẫn chưa rõ liệu điều đó chính xác không.</p>
                                                <h2><strong>Camera</strong></h2>
                                                <p>Các mẫu iPhone 14 Pro và 14 Pro Max sẽ có những cải tiến đáng kể
                                                    về camera, trong khi các mẫu tiêu chuẩn sẽ nhận được một số <a
                                                            href="#" title="tính năng mới" target="_blank"
                                                            rel="noopener noreferrer">tính năng mới</a>.</p>
                                                <p>Đối với camera góc rộng ở hệ thống phía sau, iPhone 14 Pro và 14
                                                    Pro Max được cho là đi kèm cảm biến 48 MP do Sony chế tạo với
                                                    tính năng kết hợp điểm ảnh và lấy nét theo điểm ảnh để thay thế
                                                    camera góc rộng 12 MP trên tiền nhiệm. Trong khi đó, bản tiêu
                                                    chuẩn vẫn có camera 12 MP tương tự iPhone 13.</p>
                                                <p>Với hệ thống phía trước, tất cả các mẫu iPhone 14 sắp ra mắt
                                                    trong năm nay dự kiến sẽ có camera trước được nâng cấp với khẩu
                                                    độ f/1.9 rộng hơn và lấy nét tự động. Khẩu độ rộng hơn cho phép
                                                    nhiều ánh sáng đi qua ống kính hơn, giúp chụp ảnh sắc nét, rõ
                                                    hơn và độ sâu trường ảnh được cải thiện. Cuộc gọi video cũng
                                                    được cải tiến nhờ thay đổi này.</p>
                                                <h2><strong>Chip A16 Bionic</strong></h2>
                                                <p>Apple thường phát hành iPhone mới kèm chip A-series thế hệ tiếp
                                                    theo, tuy nhiên điều này có thể sẽ được thay đổi trong năm nay
                                                    khi chỉ các mẫu Pro mới trang bị chip A16 Biomic mới và nhanh
                                                    hơn. Các mẫu tiêu chuẩn sẽ tiếp tục sử dụng chip A15 Bionic như
                                                    tiền nhiệm, đánh dấu sự khác biệt đáng kể giữa mẫu Pro và thông
                                                    thường.</p>
                                                <div id="adsWeb_AdsArticleMiddle" class="body-ads banner clearfix"
                                                     data-platform="1" data-position="Web_AdsArticleMiddle">
                                                    \n
                                                    <script>
                                                        if (typeof Web_AdsArticleMiddle != 'undefined') {
                                                            window.CMS_BANNER.pushAds(Web_AdsArticleMiddle, 'adsWeb_AdsArticleMiddle');
                                                        } else {
                                                            document.getElementById('adsWeb_AdsArticleMiddle').style.display = "none";
                                                        }
                                                    </script>
                                                </div>
                                                <p>Theo nhà phân tích Ming-chi Kuo, A16 Bionic là một chip nâng cấp
                                                    nhỏ so với A15 Bionic khi sử dụng cùng quy trình N5P được sử
                                                    dụng trên chip A15 Bionic, dẫn đến các hạn chế trong cải tiến.
                                                    Quy trình chế tạo N3 và N4P thế hệ tiếp theo sẽ chỉ đi vào sản
                                                    xuất hàng loạt cho đến năm 2023.</p>
                                                <p>Về cơ bản, A16 Bionic chỉ là một chip được dùng để quảng cáo hơn
                                                    là mang đến cải tiến đặc biệt. Mặc dù vậy, nhờ một modem cập
                                                    nhật, thiết kế mới và nhiều thứ khác có thể giúp hiệu suất
                                                    iPhone 14 Pro mạnh mẽ hơn. Điều này bao gồm việc iPhone 14 Pro
                                                    và 14 Pro Max có thể đi kèm RAM 6 GB như tiền nhiệm, nhưng dựa
                                                    trên <a href="#" title="công nghệ" target="_blank"
                                                            rel="noopener noreferrer">công nghệ</a> LPDDR5 mới hơn.</p>
                                                <h2><strong>Các tính năng khác</strong></h2>
                                                <p>Bên cạnh đó, loạt iPhone 14 cũng đi kèm nhiều tính năng giá trị
                                                    khác có thể mang lại lợi ích cho người dùng, bao gồm khả năng
                                                    phát hiện tai nạn ô tô, cho phép iPhone (và cả Apple Watch) sẽ
                                                    tự động quay số các dịch vụ khẩn cấp để nhận trợ giúp.</p>

                                                <p>Các mẫu iPhone 14 cũng sẽ sử dụng modem Snapdragon X65 - hệ thống
                                                    ăng-ten và modem 10 Gigabit 5G đầu tiên trên <a href="#"
                                                                                                    title="thế giới"
                                                                                                    target="_blank"
                                                                                                    rel="noopener noreferrer">thế
                                                        giới</a> dành
                                                    cho smartphone. Apple cũng dự kiến sử dụng chip RF 5G sản xuất
                                                    trên quy trình 6nm của TSMC thay vì chip của Samsung, điều này
                                                    cung cấp gói nhỏ gọn với mức tiêu thụ điện năng thấp hơn, dẫn
                                                    đến tuổi thọ pin tốt hơn khi sử dụng công nghệ 5G và hỗ trợ
                                                    Wi-Fi 6E.</p>
                                                <p>Snapdragon X65 mang đến một số tính năng kết nối vệ tinh, cho
                                                    phép người dùng nhắn tin cho các dịch vụ khẩn cấp và các số liên
                                                    lạc bằng mạng vệ tinh khi không có tín hiệu di động hoặc Wi-Fi.
                                                </p>
                                                <p>Ông Kuo cũng tin rằng iPhone 14 sẽ hỗ trợ kết nối Wi-Fi 6E giúp
                                                    mang đến tốc độ đường truyền không dây tốc độ cao cần thiết cho
                                                    trải nghiệm AR và VR (thực tế tăng cường và thực tế ảo), đồng
                                                    thời nó cũng dự kiến ​​sẽ được sử dụng trong tai nghe thực tế
                                                    hỗn hợp có thể ra mắt vào năm 2022.</p>
                                                <p>Giá khởi điểm cho iPhone 14 dự kiến sẽ từ 799 USD - mức khởi điểm
                                                    của iPhone 13. Apple không có kế hoạch tăng giá thành smartphone
                                                    cấp thấp nhằm thúc đẩy doanh số và tăng nhu cầu. Các sản phẩm
                                                    này sẽ được ra mắt vào ngày 7.9 tại sự kiện Far Out của hãng.
                                                </p>
                                                <p>Chia sẻ về các thông tin liên quan đến iPhone thế hệ mới, hệ
                                                    thống bán lẻ FPT Shop - đơn vị ủy quyền của Apple tại thị trường
                                                    Việt Nam cho biết: “Với mức độ ảnh hưởng và vị thế đối tác hàng
                                                    đầu tại Việt nam, dự kiến khách hàng có thể mua iPhone mới sớm
                                                    nhất tại hệ thống cửa hàng FPT Shop và F.Studio by FPT trên toàn
                                                    quốc trong khoảng thời gian từ tháng 9 đến tháng 10. Hệ thống có
                                                    nhiều chương trình ưu đãi và dịch vụ tốt dành cho khách hàng.
                                                    Tặng thêm 2 năm bảo hành đặc quyền - không lo rớt giá... là sự
                                                    khác biệt nổi bật của hệ thống này dành riêng các dòng iPhone
                                                    mới trong nhiều năm nay”, đại diện FPT Shop &amp; F.Studio by
                                                    FPT chia sẻ.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            </textarea>
                            <script>CKEDITOR.replace('mota');</script>
                        </div>
                    </form>
                </div>
                <button class="btn btn-save" type="button" onclick="save()">Lưu lại</button>
                <a class="btn btn-cancel" href="manage-blog.jsp">Hủy bỏ</a>
            </div>
        </div>
    </div>
</main>


<script src="../../admin/js/jquery-3.2.1.min.js"></script>
<script src="../../admin/js/popper.min.js"></script>
<script src="../../admin/js/bootstrap.min.js"></script>
<script src="../../admin/js/main.js"></script>
<script src="../../admin/doc/js/plugins/pace.min.js"></script>
<script>
    const inpFile = document.getElementById("inpFile");
    const loadFile = document.getElementById("loadFile");
    const previewContainer = document.getElementById("imagePreview");
    const previewImage = previewContainer.querySelector(".image-preview__image");
    const previewDefaultText = previewContainer.querySelector(".image-preview__default-text");
    inpFile.addEventListener("change", function () {
        const file = this.files[0];
        if (file) {
            const reader = new FileReader();
            previewDefaultText.style.display = "none";
            previewImage.style.display = "block";
            reader.addEventListener("load", function () {
                previewImage.setAttribute("src", this.result);
            });
            reader.readAsDataURL(file);
        }
    });
    function save() {

        swal("Đã lưu thành công.!", {});

    }

</script>
</body>

</html>