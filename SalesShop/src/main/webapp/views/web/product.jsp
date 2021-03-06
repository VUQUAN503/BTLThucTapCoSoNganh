<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="../../css/web/product.css">
    <title>Document</title>
</head>
<body>
<div class="sm_product_container">
    <input type="hidden" name="customerID" id="customerID" value="${customer.ID}">
    <div class="sm-product">
        <div class="sm-product-left">
            <div class="sm-image-main">
            </div>
            <div class="sm_container_image_list">
                <div class="prev_img sm_btn_slider">
                    <i class=" fa-solid fa-angle-left"></i>
                </div>
                <div class="next_img sm_btn_slider">
                    <i class=" fa-solid fa-angle-right"></i>
                </div>
                <ul class="sm-image-list"></ul>
            </div>


            <div class="sm-share">
                <div class="sm-share-network">
                    <div class="sm-share-text">Chia sẻ:</div>
                    <div class="sm-share-icon icon-mes">
                        <i class="fab fa-facebook-messenger"></i>
                    </div>
                    <div class="sm-share-icon icon-fb">
                        <i class="fab fa-facebook"></i>
                    </div>
                    <div class="sm-share-icon icon-insta">
                        <i class="fab fa-instagram"></i>
                    </div>
                    <div class="sm-share-icon icon-twiter">
                        <i class="fab fa-twitter"></i>
                    </div>
                </div>
                <div class="sm-reaction">
                    <div class="icon-reaction">
                        <i class="far fa-heart"></i>
                    </div>
                    <div class="state-text">Đã thích(51)</div>
                </div>

            </div>
        </div>
        <div class="sm-product-right">
            <div class="sm-heading-product">
                <input type="hidden" id="productID" name="productID" value="<%=request.getParameter("productID")%>">
                <h3 class="product-name"></h3>
                <div class="sm-information-product">
                    <div class="sm-info-item sm-product-star">
                        <div class="sm-star-number">
                            5.0
                        </div>
                        <div class="sm-star-list">
                            <div class="sm-star-icon">
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="sm-star-icon">
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="sm-star-icon">
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="sm-star-icon">
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="sm-star-icon">
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="sm-info-item sm-product-vote">
                        <div class="sm-vote-number">
                            514
                        </div>
                        <div class="sm-vote-text">
                            Đánh giá
                        </div>
                    </div>
                    <div class="sm-info-item sm-product-cell">
                        <div class="sm-cell-number">
                            674
                        </div>
                        <div class="sm-cell-text">
                            Đã bán
                        </div>
                    </div>
                </div>
            </div>
            <div class="sm-product-price">
                <div class="price-new">
                </div>
                <div class="price-percent-sale">
                    51% giảm
                </div>
            </div>
            <div class="sm-product-content">
                <div class="sm-discount-code">
                    <div class="product-content-text">
                        Mã giảm giá của shop
                    </div>
                    <div class="mini-variation-list">
                        <div class="mini-variation-item">
                            Giảm 10k
                        </div>
                        <div class="mini-variation-item">
                            Giảm 20k
                        </div>
                        <div class="mini-variation-item">
                            Giảm 50k
                        </div>
                    </div>
                </div>
                <div class="sm-product-decal">
                    <div class="product-content-text">
                        Decal Sốc
                    </div>
                    <div class="mini-variation-list">
                        <div class="mini-variation-item">
                            Giảm 10k
                        </div>
                    </div>
                </div>
                <div class="sm-product-transport">
                    <div class="product-content-text">
                        Vận Chuyển
                    </div>
                    <div class="transport-content">
                        <div class="free-product">
                            <div class="free-product-icon"
                                 style="background-image: url(https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/pdp/1cdd37339544d858f4d0ade5723cd477.png);">
                            </div>
                            <div class="transport-product-text">
                                Miễn phí vận chuyển
                            </div>
                        </div>
                        <div class="transport-product-text space-color">
                            Miễn phí vận chuyển cho đơn hàng trên ₫300.000
                        </div>
                        <div class="transport-to">
                            <div class="transport-product-text space-color">
                                Vận chuyển tới
                            </div>
                            <div class="transport-address transport-product-text">
                                Phường Thanh Trì, Quận Hoàng Mai
                            </div>
                        </div>
                        <div class="transport-coin">
                            <div class="transport-product-text space-color">
                                Phí Vận Chuyển
                            </div>
                            <div class="transport-product-text">
                                đ20.000
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sm-product-color">
                    <div class="product-content-text">
                        Màu sắc
                    </div>
                    <div class="sm_color sm-select-list">


                    </div>
                </div>
                <div class="sm-product-size">
                    <div class="product-content-text">
                        Size
                    </div>
                    <div>
                        <div class="sm_size sm-select-list">

                        </div>
                        <div class="table-size">
                            Bảng quy đổi kích cỡ
                        </div>
                    </div>
                </div>
                <div class="sm-amount">
                    <div class="product-content-text">
                        Số lượng
                    </div>
                    <div class="changle-amount">
                        <div class="btn-reduction btn-prev">
                            -
                        </div>
                        <div id="amount" class="btn-reduction sm-amount-number">
                            1
                        </div>
                        <div class="btn-reduction btn-add">
                            +
                        </div>
                    </div>
                </div>
                <div class="btn-buy">
                    <div class="btn-add-cart btn-buy-item">
                        Thêm vào giỏ hàng
                    </div>
                    <div class="btn-buy-now btn-buy-item">
                        Mua ngay
                    </div>
                </div>
            </div>
            <div class="sm-product-bottom">
                <div class="sm-product-bottom-item">
                    <div class="sm-bottom-icon">
                        <i class="fas fa-undo-alt"></i>
                    </div>
                    <div class="sm-bottom-text">
                        7 ngày miễn phí trả hàng
                    </div>
                </div>
                <div class="sm-product-bottom-item">
                    <div class="sm-bottom-icon">
                        <i class="fas fa-luggage-cart"></i>
                    </div>
                    <div class="sm-bottom-text">
                        Hàng chính hãng 100%
                    </div>
                </div>

                <div class="sm-product-bottom-item">
                    <div class="sm-bottom-icon">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <div class="sm-bottom-text">
                        Miễn phí vận chuyển
                    </div>
                </div>
            </div>
        </div>
        <div class="sm-modal-table-size">
            <div class="sm-modal-content">
                <img class="sm-img-size" src="https://cf.shopee.vn/file/8e91625cc74c68b82555669d3784b0b1" alt="">
            </div>
        </div>
    </div>
</div>
<script src="../../js/web/product.js"></script>
</body>
</html>