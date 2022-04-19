<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header">
    <div class="grid wide">

        <input hidden type="checkbox" name="" class="top-search__input" id="top-search__input--toggle">
        <div class="top-search">
            <input class="top-search__input" type="text" placeholder="Từ khóa...">
            <a href="" class="btn btn--primary-color main-effect">Tìm kiếm</a>
        </div>

        <label for="top-search__input--toggle" class="top-search__overlay"></label>

        <!-- nav -->
        <nav class="nav">
            <label for="nav__input--toggle" class="nav__menu">
                <div class="nav__menu--toggle">
                    <i class="nav__menu-icon fa-solid fa-bars"></i> <span class="s-hidden">Menu</span>
                </div>
            </label>

            <div class="nav__logo">
                <a href="#">
                    <img class="" src="images/logo/mew-shoes.png" alt="">
                </a>
            </div>

            <div class="nav__purchase">
                <label class="" for="top-search__input--toggle">
                    <img class="nav__purchase-img" src="images/icon-img/search.png" alt="">
                </label>
                <a class="" href="views/web/login.jsp">
                    <img class="nav__purchase-img" src="images/icon-img/account.png" alt="">
                </a>
                <a class="" href="#">
                    <img class="nav__purchase-img s-hidden" src="images/icon-img/cart.png" alt="">
                </a>
            </div>
        </nav>
    </div>

    <input type="checkbox" hidden name="" class="nav__input" id="nav__input--toggle">

    <!-- navbar -->
    <label for="nav__input--toggle" class="navbar__overlay"></label>
    <div class="navbar">
        <div class="navbar__header">
            <a href="#">
                <img src="images/logo/mew-shoes.png" alt="">
            </a>
            <label for="nav__input--toggle">
                <i class="navbar__header-icon--close far fa-times-circle"></i>
            </label>
        </div>
        <div class="navbar__body">
            <ul class="navbar__info">
                <li class="navbar__info-item">
                    <a href="#" class="navbar__info-link">
                        <i class="navbar__info-icon fas fa-store"></i>
                        Cửa hàng Online</a>
                </li>
                <li class="navbar__info-item">
                    <a href="#" class="navbar__info-link">
                        <i class="navbar__info-icon far fa-paper-plane"></i>
                        Hướng dẫn mua hàng</a>
                </li>
                <li class="navbar__info-item">
                    <a href="#" class="navbar__info-link">
                        <i class="navbar__info-icon fas fa-qrcode"></i>
                        Thông tin thanh toán</a>
                </li>
                <li class="navbar__info-item">
                    <a href="#" class="navbar__info-link">
                        <i class="navbar__info-icon fas fa-store-alt"></i>
                        Chuỗi cửa hàng MewShoes</a>
                </li>
            </ul>

            <ul class="navbar__category">
                <li class="navbar__category-item">
                    <a class="navbar__category-link navbar__category-link--color-primary" href="#">Trang chủ</a>
                </li>
                <li class="navbar__category-item">
                    <a class="navbar__category-link" href="#">Giới thiệu</a>
                </li>
                <li class="navbar__category-item">
                    <a class="navbar__category-link" href="#">Sản phẩm</a>
                </li>
                <li class="navbar__category-item">
                    <a class="navbar__category-link" href="#">Giày thể thao</a>
                </li>
                <li class="navbar__category-item">
                    <a class="navbar__category-link" href="#">Giày chạy</a>
                </li>
                <li class="navbar__category-item">
                    <a class="navbar__category-link" href="#">Giày bóng rổ</a>
                </li>
                <li class="navbar__category-item">
                    <a class="navbar__category-link" href="#">Tin tức</a>
                </li>
                <li class="navbar__category-item">
                    <a class="navbar__category-link" href="#">Liên hệ</a>
                </li>
            </ul>

            <div class="navbar__trademark">
                <div class="navbar__trademark-list">
                    <div class="navbar__trademark-item">
                        <a href="#">
                            <img class="navbar__trademark-img" src="images/trademark/nb.jpg" alt="">
                        </a>
                    </div>
                    <div class="navbar__trademark-item">
                        <a href="#">
                            <img class="navbar__trademark-img" src="images/trademark/converse.jpg" alt="">
                        </a>
                    </div>
                </div>
                <div class="navbar__trademark-list">
                    <div class="navbar__trademark-item">
                        <a href="#">
                            <img class="navbar__trademark-img" src="images/trademark/clarks.jpg" alt="">
                        </a>
                    </div>
                    <div class="navbar__trademark-item">
                        <a href="#">
                            <img class="navbar__trademark-img" src="images/trademark/v-color.jpg" alt="">
                        </a>
                    </div>
                </div>
                <div class="navbar__trademark-list">
                    <div class="navbar__trademark-item">
                        <a href="#">
                            <img class="navbar__trademark-img" src="images/trademark/vans.jpg" alt="">
                        </a>
                    </div>
                    <div class="navbar__trademark-item">
                        <a href="#">
                            <img class="navbar__trademark-img" src="images/trademark/puma.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>

            <ul class="navbar__socials">
                <li class="navbar__socials-item">
                    <a class="navbar__socials-link" href="#">
                        <img src="images/social-network/facebook.png" alt="">
                    </a>
                </li>
                <li class="navbar__socials-item">
                    <a class="navbar__socials-link" href="#">
                        <img src="images/social-network/twitter.png" alt="">
                    </a>
                </li>
                <li class="navbar__socials-item">
                    <a class="navbar__socials-link" href="#">
                        <img src="images/social-network/instagram.png" alt="">
                    </a>
                </li>
                <li class="navbar__socials-item">
                    <a class="navbar__socials-link" href="#">
                        <img src="images/social-network/youtube.png" alt="">
                    </a>
                </li>
            </ul>
        </div>
    </div>
</header>