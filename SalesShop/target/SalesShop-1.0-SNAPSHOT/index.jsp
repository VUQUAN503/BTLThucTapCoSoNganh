<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="css/web/grid.css">
    <link rel="stylesheet" href="css/web/main.css">
    <link rel="stylesheet" href="css/web/base.css">
    <link rel="stylesheet" href="css/web/responsive.css">
    <link rel="stylesheet" href="css/web/bootstrap.css">
    <link rel="stylesheet" href="css/web/header.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="app">

    <c:import url="views/web/header.jsp"></c:import>

    <div class="slider"></div>

    <div class="content">

        <!-- policy -->
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
                                <img class="product__img" src="images/listImgs/sp1_index1.jpg" alt="">
                                <div class="product__desc">
                                    <h3 class="product__desc-title">Giày nam</h3>
                                    <h5 class="product__des--quantity">6 sản phẩm</h5>
                                </div>
                            </a>
                            <a class="product__item main-effect product__item--mt-16" href="#">
                                <img class="product__img" src="images/listImgs/sp6_index5.jpg" alt="">
                                <div class="product__desc">
                                    <h3 class="product__desc-title">Giày nữ</h3>
                                    <h5 class="product__des--quantity">9 sản phẩm</h5>
                                </div>
                            </a>
                        </div>
                        <div class="col l-4 c-0">
                            <a class="product__item main-effect" href="#">
                                <img class="product__img" src="images/listImgs/sp3_index1.jpg" alt="">
                                <div class="product__desc">
                                    <h3 class="product__desc-title">Giày bóng rổ</h3>
                                    <h5 class="product__des--quantity">5 sản phẩm</h5>
                                </div>
                            </a>
                        </div>
                        <div class="col l-4 m-0 c-0">
                            <a class="product__item main-effect" href="#">
                                <img class="product__img" src="images/listImgs/sp4_index1.jpg" alt="">
                                <div class="product__desc">
                                    <h3 class="product__desc-title">Giày bóng đá</h3>
                                    <h5 class="product__des--quantity">9 sản phẩm</h5>
                                </div>
                            </a>
                            <a class="product__item main-effect product__item--mt-16" href="#">
                                <img class="product__img" src="images/listImgs/sp5_index1.jpg" alt="">
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
                <div class="grid wide">
                    <div class="row hot_products">

                    </div>
                    <div class="row test_api">
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
                <div class="grid wide">
                    <div class="row selling_2020"></div>
                    <div class="row "></div>
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
                                <img class="advertisement__item-img" src="images/imgContent/img1.jpg" alt="">
                            </div>
                        </div>
                        <div class="col l-6">
                            <div class="advertisement__item main-effect">
                                <img class="advertisement__item-img" src="images/imgContent/img2.jpg" alt="">
                            </div>
                        </div>
                        <div class="col l-3 c-0">
                            <div class="advertisement__item main-effect">
                                <img class="advertisement__item-img" src="images/imgContent/img3.webp" alt="">
                            </div>
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
                                <div href="#" class="container__product-name">Giày ultra boost phản quang luôn 'cháy hàng' khi vừa lên kệ </div>
                                <p class="container__product-news--desc">20/03/2021 <br>
                                    Tiếp nối thành công của các thế hệ phiên bản Ultra Boost, Adidas lần lượt cho ra mắt các...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-3 m-6 s-mt-16">
                        <div class="container__products no-boxshadow no-border ">
                            <div style="cursor: pointer;" class="container__product-banner main-effect">
                                <img class="container__product-img " src="images/imgPageHome/image1.webp" alt="">
                            </div>
                            <div class="container__product-news">
                                <div href="#" class="container__product-name">Giày ultra boost phản quang luôn 'cháy hàng' khi vừa lên kệ </div>
                                <p class="container__product-news--desc">20/03/2021 <br>
                                    Tiếp nối thành công của các thế hệ phiên bản Ultra Boost, Adidas lần lượt cho ra mắt các...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-3 m-6 s-mt-16">
                        <div class="container__products no-boxshadow no-border ">
                            <div style="cursor: pointer;" class="container__product-banner main-effect">
                                <img class="container__product-img " src="images/imgPageHome/image2.webp" alt="">
                            </div>
                            <div class="container__product-news">
                                <div href="#" class="container__product-name">Giày ultra boost phản quang luôn 'cháy hàng' khi vừa lên kệ </div>
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
                                <div href="#" class="container__product-name">Giày ultra boost phản quang luôn 'cháy hàng' khi vừa lên kệ </div>
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
    <script src="js/web/index.js"></script>
    <script src="js/web/header.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</div>
</body>
</html>