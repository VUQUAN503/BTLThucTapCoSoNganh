<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="ss-header">
    <a href="/" class="ss-header-logo">
        <div class="ss-header-logo-icon">
            <i class="fas fa-shopping-cart"></i>
        </div>
        <div class="ss-header-logo-text">
            <div class="ss-header-logo-text-bold">
                    <span class="ss-header-text-daily">
                        daily
                    </span>
                <span class="ss-header-logo-text-shop">
                        Shop
                    </span>
            </div>
            <div class="ss-header-logo-text-thin">
                YOUR SHOPPING PARTNER
            </div>
        </div>
    </a>
    <form action="">
        <div class="ss-header-search">
            <input type="text" class="ss-header-input-search" placeholder="Search here">
            <button type="submit" class="ss-header-icon-search">
                <i class="fas fa-search"></i>
            </button>
        </div>
    </form>
    <div class="ss-header-info">
        <div class="ss-header-info-card">
            <div class="ss-header-info-card-icon">
                <i class="fa-solid fa-basket-shopping"></i>
                <div class="ss-header-info-card-number" id="amount">
                    2
                </div>
            </div>
            <div class="ss-header-info-card-title">SHOPPING CART</div>
            <input type="hidden" name="" id="customerID" value="${customer.ID}">
            <div class="ss-header-info-mycart" id="cart">
                <div class="ss-mycart-item">
                    <div class="ss-mycart-item-img" style="background-image: url(https://file.tinnhac.com/resize/600x-/music/2018/08/25/jisoocarupdate-b6bf.jpg);">

                    </div>
                    <div class="ss-mycart-item-info">
                        <div class="ss-mycart-item-name">
                            Product Name
                        </div>
                        <div class="ss-mycart-info-coin">
                            <span class="ss-mycart-info-number">1</span>
                            x
                            <span class="ss-mycart-info-price">$250</span>
                        </div>
                    </div>
                    <div class="ss-mycart-info-delete-item">
                        <i class="fa-solid fa-xmark"></i>
                    </div>
                </div>
                <div class="ss-mycart-item">
                    <div class="ss-mycart-item-img" style="background-image: url(https://file.tinnhac.com/resize/600x-/music/2018/08/25/jisoocarupdate-b6bf.jpg);">

                    </div>
                    <div class="ss-mycart-item-info">
                        <div class="ss-mycart-item-name">
                            Product Name
                        </div>
                        <div class="ss-mycart-info-coin">
                            <span class="ss-mycart-info-number">1</span>
                            x
                            <span class="ss-mycart-info-price">$250</span>
                        </div>

                    </div>
                    <div class="ss-mycart-info-delete-item">
                        <i class="fa-solid fa-xmark"></i>
                    </div>
                </div>
                <div class="ss-mycart-total">
                    <div class="ss-mycart-total-title">
                        Total
                    </div>
                    <div class="ss-mycart-total-price">
                        <span>$</span><span class="ss-mycart-total-number">500</span>
                    </div>
                </div>
                <div class="ss-mycart-checkout">
                    <div class="ss-mycart-btn-checkout">
                        Checkout
                    </div>
                </div>
            </div>
        </div>
        <div class="ss-header-info-user">
            <div class="ss-header-info-user-avt">
                <i class="fa-solid fa-user"></i>
                <i id="name"><c:if test="${not empty customer}">${customer.username}</c:if></i>
            </div>
            <c:if test="${empty customer}">
                <div class="ss-header-info-user-hover">
                    <div class="ss-user-info ss-user-info-title">
                        <a class="ss-user-info-link" href="views/web/login.jsp">Đăng nhập</a>
                    </div>
                </div>
            </c:if>
            <c:if test="${not empty customer}">
                <div class="ss-header-info-user-hover">
                    <div class="ss-user-info ss-user-info-title">
                        <a class="ss-user-info-link" href="views/web/profile.jsp">Thông tin cá nhân</a>
                    </div>
                    <div class="ss-cart-user ss-user-info-title">
                        <a class="ss-user-info-link" href="views/web/">Đơn hàng</a>
                    </div>
                    <div class="ss-user-logout ss-user-info-title">
                        <a class="ss-user-info-link" href="logout">Đăng xuất</a>
                    </div>
                </div>
            </c:if>
        </div>
    </div>
</div>
