<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="css/web/grid.css">
    <link rel="stylesheet" href="css/web/main.css">
    <link rel="stylesheet" href="css/web/base.css">
    <link rel="stylesheet" href="css/web/responsive.css">

    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="app">

    <c:import url="views/web/header.jsp"></c:import>

    <div class="slider"></div>

    <div class="content">
        <div class="policy">
            <div class="grid wide">
                <ul class="policy__list">
                    <li class="policy__item">
                        <div class="policy__icon">
                            <img class="policy__icon-img" src="images/icon-img/box.png" alt="">
                        </div>
                        <div class="policy__desc">
                            <h4 class="policy__title">10000+ sản phẩm </h4>
                            <h5 class="policy__sub-title">400+ Thương hiệu</h5>
                        </div>
                    </li>
                    <li class="policy__item">
                        <div class="policy__icon">
                            <img class="policy__icon-img" src="images/icon-img/smile.png" alt="">
                        </div>
                        <div class="policy__desc">
                            <h4 class="policy__title">2 Triệu khách hàng</h4>
                            <h5 class="policy__sub-title">Tin tưởng mua sắm</h5>
                        </div>
                    </li>
                    <li class="policy__item">
                        <div class="policy__icon">
                            <img class="policy__icon-img" src="images/icon-img/like.png" alt="">
                        </div>
                        <div class="policy__desc">
                            <h4 class="policy__title">Hàng chính hãng</h4>
                            <h5 class="policy__sub-title">100% chính hãng</h5>
                        </div>
                    </li>
                    <li class="policy__item">
                        <div class="policy__icon">
                            <img class="policy__icon-img" src="images/icon-img/car.png" alt="">
                        </div>
                        <div class="policy__desc">
                            <h4 class="policy__title">Giao hàng miễn phí</h4>
                            <h5 class="policy__sub-title">Miễn phí nội thành</h5>
                        </div>
                    </li>
                    <li class="policy__item">
                        <div class="policy__icon">
                            <img class="policy__icon-img" src="images/icon-img/turn.png" alt="">
                        </div>
                        <div class="policy__desc">
                            <h4 class="policy__title">Đổi hàng 07 ngày </h4>
                            <h5 class="policy__sub-title">Hoàn toàn miễn phí</h5>
                        </div>
                    </li>
                    <li class="policy__item">
                        <div class="policy__icon">
                            <img class="policy__icon-img" src="images/icon-img/vip.png" alt="">
                        </div>
                        <div class="policy__desc">
                            <h4 class="policy__title">Khách VIP</h4>
                            <h5 class="policy__sub-title">Ưu đãi hấp dẫn</h5>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <!-- Product -->
        <div class="product">
            <div class="grid wide">
                <div class="row">
                    <div class="product__container">
                        <div class="col l-4 c-12">
                            <a class="product__item main-effect" href="#">
                                <img class="product__img" src="images/shoes/Men's shoes.jpg" alt="">
                                <div class="product__desc">
                                    <h3 class="product__desc-title">Giày nam</h3>
                                    <h5 class="product__des--quantity">6 sản phẩm</h5>
                                </div>
                            </a>
                            <a class="product__item main-effect product__item--mt-16" href="#">
                                <img class="product__img" src="images/shoes/Women's shoes.jpg" alt="">
                                <div class="product__desc">
                                    <h3 class="product__desc-title">Giày nữ</h3>
                                    <h5 class="product__des--quantity">9 sản phẩm</h5>
                                </div>
                            </a>
                        </div>
                        <div class="col l-4 c-0">
                            <a class="product__item main-effect" href="#">
                                <img class="product__img" src="images/shoes/basketball shoes.jpg" alt="">
                                <div class="product__desc">
                                    <h3 class="product__desc-title">Giày bóng rổ</h3>
                                    <h5 class="product__des--quantity">5 sản phẩm</h5>
                                </div>
                            </a>
                        </div>
                        <div class="col l-4 m-0 c-0">
                            <a class="product__item main-effect" href="#">
                                <img class="product__img" src="images/shoes/soccer shoes.jpg" alt="">
                                <div class="product__desc">
                                    <h3 class="product__desc-title">Giày bóng đá</h3>
                                    <h5 class="product__des--quantity">9 sản phẩm</h5>
                                </div>
                            </a>
                            <a class="product__item main-effect product__item--mt-16" href="#">
                                <img class="product__img" src="images/shoes/running shoes.jpg" alt="">
                                <div class="product__desc">
                                    <h3 class="product__desc-title">Giày chạy</h3>
                                    <h5 class="product__des--quantity">10 sản phẩm</h5>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--prominent-->
        <div class="prominent">
            <div class="grid wide">
                <div class="title-section">
                    <a class="title-section-link" href="#">
                        <h2 class="heading-section main-effect">Sản phẩm nổi bật</h2>
                    </a>
                </div>

                <div class="row">
                    <div class="col l-2-4 m-4">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/H/ULTRABOOTS 21 - BLACK - H.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/V/ULTRABOOST 21 - Black -V.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">GIÀY ULTRABOOST 21 - Black</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-2-4 m-4">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/H/ULTRABOOTS 21 - BLUE- H.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/V/ULTRABOOST 21 - Blue - V.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">GIÀY ULTRABOOST 21 - Blue</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-2-4 m-4">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/H/ULTRABOOTS 21 - GREY- H.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/V/ULTRABOOTS 21 - Grey - V.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">GIÀY ULTRABOOST 21 - Grey</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-2-4 m-4 s-m-mt-16">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/H/ULTRABOOST 21 - Screaming Orange - H.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/V/ULTRABOOST 21 - Screaming Orange - V.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">GIÀY ULTRABOOST 21 - Screaming Orange</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--new">New</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-2-4 m-4 s-m-mt-16">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/H/ULTRABOOST - 21 - Cloud White - H.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/V/ULTRABOOST - 21 - Cloud White - V.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">GIÀY ULTRABOOST 21 - Solar Yellow</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--bestseller-->
        <div class="prominent">
            <div class="grid wide">
                <div class="title-section">
                    <a class="title-section-link" href="#">
                        <h2 class="heading-section main-effect">Bán chạy nhất 2020</h2>
                    </a>
                </div>

                <div class="row">
                    <div class="col l-2-4 m-4">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/redH.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/redV.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">LeBron 18 'Graffiti'</a>
                                </div>
                                <span class="container__product--price-sale">6.500.000₫</span>
                                <span class="container__product--main-price">7.000.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-2-4 m-4">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/blueh.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/bluev.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">Air Jordan 1 Mid</a>
                                </div>
                                <span class="container__product--price-sale">3.239.000₫</span>
                                <span class="container__product--main-price">3.800.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-2-4 m-4">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/whiteh.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/whitev.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">Nike Air Zoom Alphafly NEXT%</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">-7%</div>
                        </div>
                    </div>
                    <div class="col l-2-4 m-4 s-m-mt-16">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/blackh.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/blackv.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">Air Jordan 1 High Zoom</a>
                                </div>
                                <span class="container__product--price-sale">5.129.000₫</span>
                                <span class="container__product--main-price">5.500.000₫</span>
                            </div>
                            <div class="container__product--new">New</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-2-4 m-4 s-m-mt-16">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/whitepinkh.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/whitepinkv.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">Nike Blazer Mid '77 Vintage</a>
                                </div>
                                <span class="container__product--price-sale">3.240.000₫</span>
                                <span class="container__product--main-price"> 3.990.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- advertisement -->
        <div class="advertisement">
            <div class="grid wide">
                <div class="row">
                    <div class="advertisement__list">
                        <div class="col l-3 c-0">
                            <div class="advertisement__item main-effect">
                                <img class="advertisement__item-img" src="images/img-size-l/m_bn_2_1.jpg" alt="">
                            </div>
                        </div>
                        <div class="col l-6">
                            <div class="advertisement__item main-effect">
                                <img class="advertisement__item-img" src="images/img-size-l/m_bn_2_2.jpg" alt="">
                            </div>
                        </div>
                        <div class="col l-3 c-0">
                            <div class="advertisement__item main-effect">
                                <img class="advertisement__item-img" src="images/img-size-l/m_bn_2_3.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- collection -->
        <div class="collection">
            <div class="grid wide">
                <div class="title-section">
                    <a class="title-section-link" href="#">
                        <h2 class="heading-section main-effect">Bộ sưu tập ULTRABOOST</h2>
                    </a>
                </div>

                <div class="row">
                    <div class="col l-9">
                        <div class="row">
                            <div class="collection__content">
                                <div class="col l-6 m-12 c-12">
                                    <div class="collection__item main-effect">
                                        <img src="images/img-size-l/bg_only_item.png" alt="">
                                    </div>
                                </div>
                                <div class="col l-6 m-12 c-12">
                                    <div class="collection__item-info">
                                        <a href="#" class="collection__item-shoes-name">GIÀY ULTRABOOST 21</a>
                                        <p class="collection__item-desc">
                                            Hàng loạt bản mẫu. Hàng loạt cải tiến. Hàng loạt thử nghiệm. Đồng hành cùng chúng tôi trên hành trình tìm kiếm sự hòa hợp đỉnh cao giữa trọng lượng, sự êm ái và độ đàn hồi. Ultraboost 21. Đón chào...
                                        </p>
                                        <h3 class="collection__item--price-sale">5.100.000₫</h3>
                                        <span class="collection__item--main-price">5.499.000₫</span>
                                        <span class="collection__item--border-bottom"></span>
                                        <ul class="collection__promotions-list">
                                            <li class="collection__promotions-item--gift">
                                                <img class="collection__promotions-item-img" src="images/icon-img/gift_g.png" alt=""> QUÀ TẶNG
                                            </li>
                                            <li class="collection__promotions-item">
                                                <i class="collection__promotions-item-icon fas fa-check"></i>MIỄN PHÍ <span class="collection__promotions-item--service">giao hàng toàn quốc</span>
                                            </li>
                                            <li class="collection__promotions-item">
                                                <i class="collection__promotions-item-icon fas fa-check"></i>Tặng 1 áo thun <span class="collection__promotions-item--service">thời trang 190k</span>
                                            </li>
                                            <li class="collection__promotions-item">
                                                <i class="collection__promotions-item-icon fas fa-check"></i>Giao ngay <span class="collection__promotions-item--service">2H tại Hà Nội</span>
                                            </li>
                                            <li class="collection__promotions-item">
                                                <i class="collection__promotions-item-icon fas fa-check"></i>Không lấy quà vui lòng liên hệ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-3 m-12 c-12">
                        <div class="collection__app">
                            <div class="collection__suggestions">
                                <div class="row no-gutters">
                                    <div class="collection__suggestions-container">
                                        <div class="col l-5 m-6">
                                            <div class="collection-shoes main-effect">
                                                <img src="images/shoes/collection/1.jpg" alt="">
                                            </div>
                                        </div>
                                        <div class="col l-7 m-6">
                                            <div class="collection__app-des mt-8">
                                                <a href="" class="container__product-name">GIÀY ULTRABOOST 21 - Cloud White / Gold Metallic </a>
                                                <span style="display: block;" class="container__product--price-sale">5.000.000đ</span>
                                                <span class="container__product--main-price">6.500.000₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row no-gutters">
                                    <div class="collection__suggestions-container">
                                        <div class="col l-5 m-6">
                                            <div class="collection-shoes main-effect">
                                                <img src="images/shoes/collection/2.jpg" alt="">
                                            </div>
                                        </div>
                                        <div class="col l-7 m-6">
                                            <div class="collection__app-des mt-8">
                                                <a href="" class="container__product-name">GIÀY ULTRABOOST 21 - Cloud White / Solar Yellow</a>
                                                <span style="display: block;" class="container__product--price-sale">5.000.000đ</span>
                                                <span class="container__product--main-price">6.500.000₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row no-gutters">
                                    <div class="collection__suggestions-container">
                                        <div class="col l-5 m-6">
                                            <div class="collection-shoes main-effect">
                                                <img src="images/shoes/collection/3.jpg" alt="">
                                            </div>
                                        </div>
                                        <div class="col l-7 m-6">
                                            <div class="collection__app-des mt-8">
                                                <a href="" class="container__product-name">GIÀY ULTRABOOST 21 - Screaming Orange</a>
                                                <span style="display: block;" class="container__product--price-sale">10.000.000đ</span>
                                                <span class="container__product--main-price">6.500.000₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row no-gutters">
                                    <div class="collection__suggestions-container">
                                        <div class="col l-5 m-6">
                                            <div class="collection-shoes main-effect">
                                                <img src="images/shoes/collection/4.jpg" alt="">
                                            </div>
                                        </div>
                                        <div class="col l-7 m-6">
                                            <div class="collection__app-des mt-8">
                                                <a href="" class="container__product-name">GIÀY ULTRABOOST 21 - Screaming Orange</a>
                                                <span style="display: block;" class="container__product--price-sale">5.000.000đ</span>
                                                <span class="container__product--main-price">4.502.000₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row no-gutters">
                                    <div class="collection__suggestions-container">
                                        <div class="col l-5 m-6">
                                            <div class="collection-shoes main-effect">
                                                <img src="images/shoes/collection/1.jpg" alt="">
                                            </div>
                                        </div>
                                        <div class="col l-7 m-6">
                                            <div class="collection__app-des mt-8">
                                                <a href="" class="container__product-name">GIÀY ULTRABOOST 21 - Core Black / Solar Yellow</a>
                                                <span style="display: block;" class="container__product--price-sale">5.000.000đ</span>
                                                <span class="container__product--main-price">6.500.000₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Sneaker trademark -->
        <div class="sneaker-trademark">
            <div class="grid wide">
                <div class="title-section">
                    <a class="title-section-link" href="#">
                        <h2 class="heading-section main-effect">Sneaker Thương Hiệu</h2>
                    </a>
                </div>

                <ul class="brands-five">
                    <li class="brands-five__item">
                        <a class="brands__five--link" href="#">VANS</a>
                    </li>
                    <li class="brands-five__item">
                        <a class="brands__five--link" href="#">NIKE</a>
                    </li>
                    <li class="brands-five__item">
                        <a class="brands__five--link" href="#">Converse</a>
                    </li>
                    <li class="brands-five__item">
                        <a class="brands__five--link" href="#">New Balance</a>
                    </li>
                    <li class="brands-five__item">
                        <a class="brands__five--link" href="#">Clarks</a>
                    </li>
                </ul>

                <!-- list one -->
                <div class="row mt-32">
                    <div class="col l-3 m-6 s-m-mt-16">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/redH.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/redV.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">LeBron 18 'Graffiti'</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-3 m-6 s-m-mt-16">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/blueh.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/blackv.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">GIÀY ULTRABOOST 21 - Black</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--new">New</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-3 m-6 s-m-mt-16">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/H/ULTRABOOTS 21 - BLACK - H.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/V/ULTRABOOST 21 - Black -V.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">GIÀY ULTRABOOST 21 - Black</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-3 m-6 s-m-mt-16">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/H/ULTRABOOTS 21 - BLACK - H.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/V/ULTRABOOST 21 - Black -V.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">GIÀY ULTRABOOST 21 - Black</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                </div>

                <!-- list two -->
                <div class="row mt-32">
                    <div class="col l-3 m-6 s-m-mt-16">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/H/ULTRABOOTS 21 - BLACK - H.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/V/ULTRABOOST 21 - Black -V.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">GIÀY ULTRABOOST 21 - Black</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-3 m-6 s-m-mt-16">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/H/ULTRABOOTS 21 - BLACK - H.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/V/ULTRABOOST 21 - Black -V.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">GIÀY ULTRABOOST 21 - Black</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-3 m-6 s-m-mt-16">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/H/ULTRABOOTS 21 - BLACK - H.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/V/ULTRABOOST 21 - Black -V.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">GIÀY ULTRABOOST 21 - Black</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                    <div class="col l-3 m-6 s-m-mt-16">
                        <div class="container__products">
                            <div class="container__product-banner">
                                <img class="container__product-img" src="images/shoes/H/ULTRABOOTS 21 - BLACK - H.jpg" alt="">
                                <div class="container__banner">
                                    <img src="images/shoes/V/ULTRABOOST 21 - Black -V.jpg" alt="" class="container__banner-img">
                                </div>
                            </div>
                            <div class="container__desc">
                                <div class="container__product-ultra">
                                    <a href="#" class="container__product-name">GIÀY ULTRABOOST 21 - Black</a>
                                </div>
                                <span class="container__product--price-sale">5.000.000₫</span>
                                <span class="container__product--main-price">6.500.000₫</span>
                            </div>
                            <div class="container__product--hot">Hot</div>
                            <div class="container__product--percent">23%</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="evaluate">
            <div class="evaluate__title">
                <h2 class="evaluate__heading">Đánh giá khách hàng</h2>
            </div>
            <div class="evaluate__overlay"></div>
            <div class="grid wide">
                <div class="row">
                    <div class="col l-4 m-6">
                        <div class="evaluate__user">
                            <div class="evaluate__user-img">
                                <img src="images/user/tải xuống (1).jpg" alt="">
                            </div>
                            <div class="evaluate__content">
                                <div class="evaluate__content-icon">
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                </div>
                                <h3 class="evaluate__content--name">Yui mikami</h3>
                                <p class="evaluate__content--desc">
                                    Adidas Stan Smith là một trong những đôi giày thời đại mang đến cho mình cảm giác hứng khởi mỗi khi xỏ chân vào. Các bạn chưa biết chọn giày ở đâu có thể tham khảo giày của Mew Shoes nhé.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4 m-6">
                        <div class="evaluate__user">
                            <div class="evaluate__user-img">
                                <img src="images/user/tải xuống.jpg" alt="">
                            </div>
                            <div class="evaluate__content">
                                <div class="evaluate__content-icon">
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                </div>
                                <h3 class="evaluate__content--name">Eimi fukada</h3>
                                <p class="evaluate__content--desc">
                                    Adidas Stan Smith là một trong những đôi giày thời đại mang đến cho mình cảm giác hứng khởi mỗi khi xỏ chân vào. Các bạn chưa biết chọn giày ở đâu có thể tham khảo giày của Mew Shoes nhé.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4 m-6">
                        <div class="evaluate__user">
                            <div class="evaluate__user-img">
                                <img src="images/user/people_s_1.jpg" alt="">
                            </div>
                            <div class="evaluate__content">
                                <div class="evaluate__content-icon">
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                    <i class="evaluate__content-icon--star fas fa-star"></i>
                                </div>
                                <h3 class="evaluate__content--name">Hương Suri - Giáo viên</h3>
                                <p class="evaluate__content--desc">
                                    Adidas Stan Smith là một trong những đôi giày thời đại mang đến cho mình cảm giác hứng khởi mỗi khi xỏ chân vào. Các bạn chưa biết chọn giày ở đâu có thể tham khảo giày của Mew Shoes nhé.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- news -->
        <div class="news">
            <div class="grid wide">
                <div class="title-section">
                    <a class="title-section-link" href="#">
                        <h2 class="heading-section main-effect">Tin tức</h2>
                    </a>
                </div>
                <div class="row">
                    <div class="col l-3 m-6 s-mt-16">
                        <div class="container__products no-boxshadow no-border ">
                            <div style="cursor: pointer;" class="container__product-banner main-effect">
                                <img class="container__product-img " src="images/shoes/space-pack-ultraboost-feat.jpg" alt="">
                            </div>
                            <div class="container__product-news">
                                <a href="#" class="container__product-name">Giày ultra boost phản quang luôn 'cháy hàng' khi vừa lên kệ </a>
                                <p class="container__product-news--desc">20/03/2021 <br>
                                    Tiếp nối thành công của các thế hệ phiên bản Ultra Boost, Adidas lần lượt cho ra mắt các...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-3 m-6 s-mt-16">
                        <div class="container__products no-boxshadow no-border ">
                            <div style="cursor: pointer;" class="container__product-banner main-effect">
                                <img class="container__product-img " src="images/shoes/air-jordan-4-fiba-red-ci1184-617-1-19b6e94c82c843518bf219f48f376e25-master.jpg" alt="">
                            </div>
                            <div class="container__product-news">
                                <a href="#" class="container__product-name">Giày ultra boost phản quang luôn 'cháy hàng' khi vừa lên kệ </a>
                                <p class="container__product-news--desc">20/03/2021 <br>
                                    Tiếp nối thành công của các thế hệ phiên bản Ultra Boost, Adidas lần lượt cho ra mắt các...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-3 m-6 s-mt-16">
                        <div class="container__products no-boxshadow no-border ">
                            <div style="cursor: pointer;" class="container__product-banner main-effect">
                                <img class="container__product-img " src="images/shoes/sieu-pham-adidas-yeezy-700-sun-da-ra-mat-trong-nam-nay.jpg" alt="">
                            </div>
                            <div class="container__product-news">
                                <a href="#" class="container__product-name">Giày ultra boost phản quang luôn 'cháy hàng' khi vừa lên kệ </a>
                                <p class="container__product-news--desc">20/03/2021 <br>
                                    Tiếp nối thành công của các thế hệ phiên bản Ultra Boost, Adidas lần lượt cho ra mắt các...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-3 m-6 s-mt-16">
                        <div class="container__products no-boxshadow no-border ">
                            <div style="cursor: pointer;" class="container__product-banner main-effect">
                                <img class="container__product-img " src="images/shoes/546043.jpg" alt="">
                            </div>
                            <div class="container__product-news">
                                <a href="#" class="container__product-name">Giày ultra boost phản quang luôn 'cháy hàng' khi vừa lên kệ </a>
                                <p class="container__product-news--desc">20/03/2021 <br>
                                    Tiếp nối thành công của các thế hệ phiên bản Ultra Boost, Adidas lần lượt cho ra mắt các...
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- trademark -->
        <div class="trademark">
            <div class="grid wide">
                <div class="title-section">
                    <a class="title-section-link" href="#">
                        <h2 class="heading-section main-effect">Thương hiệu</h2>
                    </a>
                </div>
                <ul class="tradermark__list">
                    <li class="tradermark__item">
                        <a class="tradermark__item-link" href="">
                            <img class="tradermark__item-logo" src="images/trademark/clarks.jpg" alt="">
                        </a>
                    </li>
                    <li class="tradermark__item">
                        <a class="tradermark__item-link" href="">
                            <img class="tradermark__item-logo" src="images/trademark/v-nocolor.png" alt="">
                        </a>
                    </li>
                    <li class="tradermark__item">
                        <a class="tradermark__item-link" href="">
                            <img class="tradermark__item-logo" src="images/trademark/vans.jpg" alt="">
                        </a>
                    </li>
                    <li class="tradermark__item">
                        <a class="tradermark__item-link" href="">
                            <img class="tradermark__item-logo" src="images/trademark/puma.jpg" alt="">
                        </a>
                    </li>
                    <li class="tradermark__item">
                        <a class="tradermark__item-link" href="">
                            <img class="tradermark__item-logo" src="images/trademark/echo.png" alt="">
                        </a>
                    </li>
                    <li class="tradermark__item">
                        <a class="tradermark__item-link" href="">
                            <img class="tradermark__item-logo" src="images/trademark/v-color.jpg" alt="">
                        </a>
                    </li>
                    <li class="tradermark__item">
                        <a class="tradermark__item-link" href="">
                            <img class="tradermark__item-logo" src="images/trademark/ugg.png" alt="">
                        </a>
                    </li>
                    <li class="tradermark__item">
                        <a class="tradermark__item-link" href="">
                            <img class="tradermark__item-logo" src="images/trademark/converse.jpg" alt="">
                        </a>
                    </li>
                    <li class="tradermark__item">
                        <a class="tradermark__item-link" href="">
                            <img class="tradermark__item-logo" src="images/trademark/dr.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>


    <c:import url="views/web/footer.jsp"></c:import>

    <!-- Box-contact -->
    <div class="box__contact">
        <div class="box__seclecter">
            <a href="#">
                <img src="images/icon-img/telephone.png" alt="" class="box__seclecter-img box__seclecter-img--phone">
            </a>
        </div>
        <div class="box__seclecter">
            <a href="#">
                <img src="images/icon-img/messenger.png" alt="" class="box__seclecter-img">
            </a>
        </div>
        <div class="box__seclecter">
            <a href="#">
                <img src="images/icon-img/zalo_des.png" alt="" class="box__seclecter-img">
            </a>
        </div>
    </div>

    <a href="#" class="active-top">
        <img src="images/icon-img/to-top-arrow2.png" alt="">
    </a>
</div>
</body>
</html>