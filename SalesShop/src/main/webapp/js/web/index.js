const $ = document.querySelector.bind(document)
const hotProduct = $('.hot_products')
const selling2020 =$('.selling_2020')

fetch('api/products/category/3')
    .then(async res => res.json())
    .then(post =>{
        const array = [];
        for(let i in post.data.products){
            array.push(post.data.products[i])
        }
        const htmls = array.map((value) => {
            return `
                    <div class="col l-3 m-4 c-12">
                        <div class="tn-container-products">
                            <div class="tn-container-products-img" style="background-image: url('./${value.detail[0].image}');">
                                <div class="tn-container-products-heart">
                                    <i class="far fa-heart"></i>
                                    <div class="tn-container-products-heart-title">
                                        Add to Wishlist
                                    </div>
                                </div>
                                <div class="tn-container-products-add-cart">
                                    <i class="fas fa-shopping-cart"></i>
                                    <a style="text-decoration: none" href= 'views/web/product.jsp?productID=${value.productID}'  class="tn-container-products-add-cart-text">
                                        ADD TO CART
                                    </a>
                                </div>
                                <div class="tn-container-products-promotion tn-container-products-promotion-sale">SALE!</div>
                            </div>
                            <div class="tn-container-products-info">
                                <div class="tn-container-products-left">
                                    <div class="tn-container-products-name">
                                        ${value.productName}
                                    </div>
                                    <div class="tn-container-products-price">
                                        <div class="tn-container-products-price-new">
                                            ${value.detail[0].price} <span class="tn-container-products-price-unit">đ</span>
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="tn-container-products-rigth">
                                    <div class="tn-container-products-rigth-icon-eye">
                                        <i class="far fa-eye"></i>

                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                `
        });
        hotProduct.innerHTML = htmls.join("");

    })

fetch('api/products/category/4')
    .then(async res => res.json())
    .then(post =>{
        const array = [];
        for(let i in post.data.products){
            array.push(post.data.products[i])
        }
        const htmls = array.map((value) => {
            return `
                <div class="col l-3 m-4 c-12">
                    <div class="tn-container-products">
                        <div class="tn-container-products-img" style="background-image: url('./${value.detail[0].image}');">
                            <div class="tn-container-products-heart">
                                <i class="far fa-heart"></i>
                                <div class="tn-container-products-heart-title">
                                    Add to Wishlist
                                </div>
                            </div>
                            <div class="tn-container-products-add-cart">
                                <i class="fas fa-shopping-cart"></i>
                                <a style="text-decoration: none" href= 'views/web/product.jsp?productID=${value.productID}' class="tn-container-products-add-cart-text">
                                    ADD TO CART
                                </a>
                            </div>
                            <div class="tn-container-products-promotion tn-container-products-promotion-sale">SALE!</div>
                        </div>
                        <div class="tn-container-products-info">
                            <div class="tn-container-products-left">
                                <div class="tn-container-products-name">
                                    ${value.productName}
                                </div>
                                <div class="tn-container-products-price">
                                    <div class="tn-container-products-price-new">
                                        ${value.detail[0].price} <span class="tn-container-products-price-unit">đ</span>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="tn-container-products-rigth">
                                <div class="tn-container-products-rigth-icon-eye">
                                    <i class="far fa-eye"></i>

                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>

            `
        });
        selling2020.innerHTML = htmls.join("");
    })
