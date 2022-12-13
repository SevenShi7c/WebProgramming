<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../common/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <%@include file="../../common/web/head.jsp"%>

  <title>Lịch đã đặt | Phone Care</title>

</head>

<body>
<%@include file="../../common/web/header.jsp"%>

<!--Content-->
  <section class="h-100 gradient-custom">
    <div class="nav nav-tabs nav-fill" id="" role="tablist"><a aria-controls="nav-week1-tab"
                                                               aria-selected="true"
                                                               class="nav-item nav-link active"
                                                               data-toggle="tab"
                                                               href="#nav-week1"
                                                               role="tab">Chưa thanh toán</a><a
            aria-controls="nav-week2-tab" aria-selected="false" class="nav-item nav-link"
            data-toggle="tab"
            href="#nav-week2" role="tab">Đã thanh toán</a>
    </div>
    <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
      <div aria-labelledby="nav-week1-tab" class="tab-pane fade show active" id="nav-week1"
           role="tabpanel">

        <div class="row d-flex justify-content-center my-4">
          <div class="col-md-8">
            <div class="card mb-4">
              <div class="card-header py-3">
                <h5 class="mb-0">Lịch đã đặt và chưa thanh toán</h5>
              </div>
              <div class="card-body">
                <!-- Single item -->
                <div class="row">
                  <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                    <!-- Image -->
                    <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                      <img src="../../images/product/thay-man-hinh-iphone-x-fc.jpg" class="w-100"
                           alt="Thay màn hình Iphone X" />

                    </div>
                    <!-- Image -->
                  </div>

                  <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                    <!-- Data -->
                    <p><strong>Thay màn hình Iphone X</strong></p>
                    <p>Loại: Zin</p>
                    <p>Cửa hàng: P. Bình An, Quận 2</p>
                    <p>Ngày hẹn: 22/10/2022</p>
                    <p>Tình trạng: Chưa thanh toán</p>



                    <!-- Data -->
                  </div>

                  <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <!-- Data -->
                    <p>Số lượng: 1</p>
                    <p><strong>Giá: 1,690,000₫</strong></p>


                    <button type="button" class="btn btn-danger btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
                            title="Remove item">
                      <i class="fas fa-trash"></i>
                    </button>
                    <a href="checkout.jsp">
                    <button type="button" class="btn btn-primary btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
                            title="Remove item">
                     <i class="fas fa-coins">  </i>
                    </button></a>

                    <!-- Price -->
                  </div>
                </div>
                <!-- Single item -->

                <hr class="my-4" />

                <!-- Single item -->
                <div class="row">
                  <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                    <!-- Image -->
                    <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                      <img src="../../images/product/thay-man-hinh-iphone-x-fc.jpg" class="w-100"
                           alt="Thay màn hình Iphone X" />

                    </div>
                    <!-- Image -->
                  </div>

                  <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                    <!-- Data -->
                    <p><strong>Thay màn hình Iphone X</strong></p>
                    <p>Loại: Zin</p>
                    <p>Cửa hàng: P. Bình An, Quận 2</p>
                    <p>Ngày hẹn: 22/10/2022</p>
                    <p>Tình trạng: Chưa thanh toán</p>



                    <!-- Data -->
                  </div>

                  <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <!-- Data -->
                    <p>Số lượng: 1</p>
                    <p><strong>Giá: 1,690,000₫</strong></p>


                    <button type="button" class="btn btn-danger btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
                            title="Remove item">
                      <i class="fas fa-trash"></i>
                    </button>
                    <button type="button" class="btn btn-primary btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
                            title="Remove item">
                      <a href="checkout.jsp"><i class="fas fa-coins"> </i></a>
                    </button>

                    <!-- Price -->
                  </div>
                </div>
                <!-- Single item -->
              </div>
            </div>
            <!--                <div class="card mb-4">-->
            <!--                    <div class="card-body">-->
            <!--                        <p><strong>Expected shipping delivery</strong></p>-->
            <!--                        <p class="mb-0">12.10.2020 - 14.10.2020</p>-->
            <!--                    </div>-->
            <!--                </div>-->
            <div class="card mb-4 mb-lg-0">
              <div class="card-body">
                <p><strong>Một số phương thức thanh toán</strong></p>
                <img class="me-2" width="45px"
                     src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
                     alt="Visa" />
                <img class="me-2" width="45px"
                     src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/amex.svg"
                     alt="American Express" />
                <img class="me-2" width="45px"
                     src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
                     alt="Mastercard" />

              </div>
            </div>
          </div>

        </div>
      </div>
      <div aria-labelledby="nav-week2-tab" class="tab-pane fade" id="nav-week2" role="tabpanel">

        <div class="row d-flex justify-content-center my-4">
          <div class="col-md-8">
            <div class="card mb-4">
              <div class="card-header py-3">
                <h5 class="mb-0">Lịch đã đặt và đã thanh toán</h5>
              </div>
              <div class="card-body">
                <!-- Single item -->
                <div class="row">
                  <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                    <!-- Image -->
                    <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                      <img src="../../images/product/thay-man-hinh-iphone-x-fc.jpg" class="w-100"
                           alt="Thay màn hình Iphone X" />

                    </div>
                    <!-- Image -->
                  </div>

                  <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                    <!-- Data -->
                    <p><strong>Thay màn hình Iphone X</strong></p>
                    <p>Loại: Zin</p>
                    <p>Cửa hàng: P. Bình An, Quận 2</p>
                    <p>Ngày hẹn: 22/10/2022</p>
                    <p>Tình trạng: Chưa thanh toán</p>



                    <!-- Data -->
                  </div>

                  <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <!-- Data -->
                    <p>Số lượng: 1</p>
                    <p><strong>Giá: 1,690,000₫</strong></p>


                    <button type="button" class="btn btn-danger btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
                            title="Remove item">
                      <i class="fas fa-trash"></i>
                    </button>

                    </button>

                    <!-- Price -->
                  </div>
                </div>
                <!-- Single item -->

                <hr class="my-4" />

                <!-- Single item -->
                <div class="row">
                  <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                    <!-- Image -->
                    <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                      <img src="../../images/product/thay-man-hinh-iphone-x-fc.jpg" class="w-100"
                           alt="Thay màn hình Iphone X" />

                    </div>
                    <!-- Image -->
                  </div>

                  <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                    <!-- Data -->
                    <p><strong>Thay màn hình Iphone X</strong></p>
                    <p>Loại: Zin</p>
                    <p>Cửa hàng: P. Bình An, Quận 2</p>
                    <p>Ngày hẹn: 22/10/2022</p>
                    <p>Tình trạng: Chưa thanh toán</p>



                    <!-- Data -->
                  </div>

                  <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <!-- Data -->
                    <p>Số lượng: 1</p>
                    <p><strong>Giá: 1,690,000₫</strong></p>


                    <button type="button" class="btn btn-danger btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
                            title="Remove item">
                      <i class="fas fa-trash"></i>
                    </button>

                    </button>

                    <!-- Price -->
                  </div>
                </div>
                <!-- Single item -->
              </div>
            </div>
            <!--                <div class="card mb-4">-->
            <!--                    <div class="card-body">-->
            <!--                        <p><strong>Expected shipping delivery</strong></p>-->
            <!--                        <p class="mb-0">12.10.2020 - 14.10.2020</p>-->
            <!--                    </div>-->
            <!--                </div>-->
            <div class="card mb-4 mb-lg-0">
              <div class="card-body">
                <p><strong>Một số phương thức thanh toán</strong></p>
                <img class="me-2" width="45px"
                     src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
                     alt="Visa" />
                <img class="me-2" width="45px"
                     src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/amex.svg"
                     alt="American Express" />
                <img class="me-2" width="45px"
                     src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
                     alt="Mastercard" />

              </div>
            </div>
          </div>

        </div>


      </div>
    </div>
  </section>

<%@include file="../../common/web/footer.jsp"%>

</body>

</html>