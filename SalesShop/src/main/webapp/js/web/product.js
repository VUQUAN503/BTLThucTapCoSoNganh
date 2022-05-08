const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);
const nameProduct = $('.product-name')
const imgList = $('.sm-image-list')
const sizeList = $('.sm_size')
const colorList = $('.sm_color')
const price = $('.price-new')
const productID = $('#productID').value
const customerID = $('#customerID').value

let webApi = `../../api/products/${productID}`
function getProduct(callback){
    fetch(webApi)
        .then(res => res.json())
        .then(callback)
}

function renderProduct(product){
    const imgMain = $('.sm-image-main')
    const array = [];
    product.data.detail.forEach(value => {
        array.push(value);
    })
    const arrColor = [];
    const arrSize = [];
    const arrImage = [];

    array.forEach(function(value, index){
        if(!arrColor.includes(value.color)){
            arrColor.push(value.color)
        }
        if(!arrSize.includes(value.size)){
            arrSize.push(value.size)
        }
        if(!arrImage.includes(value.image)){
            arrImage.push(value.image)
        }
    })
    imgMain.style = `background-image: url(../../${arrImage[0]});`
    const htmlsImage = arrImage.map(value => {
        return `
            <li class="sm-image-item" >
                <div class="sm-item-pic" style="background-image: url(../../${value});"></div>
            </li>
        `
    })
    const htmlsSize = arrSize.map(value => {
        return  `
            <div class="select-item select-item-size">
                ${value}
             </div>

        `
    })
    const htmlsColor = arrColor.map(value => {
        return  `
            <div class="select-item select-item-color">
                ${value}
            </div>
        `
    })
    handleReRender(product, htmlsImage, htmlsColor, htmlsSize)
    let check1 = false;
    let colorSelect ='';
    const selectColors = $$('.select-item-color')
    const selectSize = $$('.select-item-size');
    const addCart = $('.btn-add-cart')
    const buyNow = $('.btn-buy-now')


    ;[...selectColors].forEach((value) => {

        value.addEventListener('click', () => {
            let check = value.closest('.state-select')
            if(check){
                value.classList.remove('state-select')
                check1 = false;
                colorSelect = '';
            }
            else {
                [...selectColors].forEach((value) => {
                    value.classList.remove('state-select')
                })
                value.classList.add('state-select')
                check1 = true
                colorSelect = value.innerText;
                sizeState = array.filter(value => {
                    return colorSelect === value.color
                })
            }
            handleSelect()
        })
    });
    let sizeSelect ='';
    let check2 = false;

    ;[...selectSize].forEach((value) => {
        value.addEventListener('click', () => {
            let check = value.closest('.state-select')
            if(check){
                value.classList.remove('state-select')
                check2 = false;
                sizeSelect = '';
            }
            else {
                [...selectSize].forEach((value) => {
                    value.classList.remove('state-select')
                })
                value.classList.add('state-select')
                check2 = true;
                sizeSelect = value.innerText
            }
            handleSelect();
        })
    });
    addCart.addEventListener('click', () => {
        if(check1 && check2){
            const object = {}
            object['productID'] = parseInt(productID)
            object['name'] = nameProduct.innerText
            object['image'] = arrImage[0]
            object['color'] = $('.select-item-color.state-select').innerText
            object['size'] = $('.select-item-size.state-select').innerText
            object['price'] = parseInt(price.innerText.substring(0, price.innerText.length - 1))
            object['amount'] = parseInt($('#amount').innerText)
            if(customerID === '')
            {
                document.cookie = `currentURL=${window.location.href}`
                window.location.href = '../../views/web/login.jsp'
            }else{
                fetch(`../../api/cart/${customerID}`,
                    {
                        method: "POST",
                        body: JSON.stringify(object),
                        headers: {
                            "Content-type": "application/json; charset=UTF-8"
                        }}).then(res=>{
                    return res.json()
                }).then(data=>{
                    alert(data.message)
                })
            }
        }else {
            alert('Vui lòng chọn màu sắc, kích thước sản phẩm')
        }
    })
    buyNow.addEventListener('click', () => {
        if(check1 && check2){
            const object = {}
            object['productID'] = parseInt(productID)
            object['name'] = nameProduct.innerText
            object['image'] = arrImage[0]
            object['color'] = $('.select-item-color.state-select').innerText
            object['size'] = $('.select-item-size.state-select').innerText
            object['price'] = parseInt(price.innerText.substring(0, price.innerText.length - 1))
            object['amount'] = parseInt($('#amount').innerText)
            if(customerID === '')
            {
                document.cookie = `currentURL=${window.location.href}`
                window.location.href = '../../views/web/login.jsp'
            }else{
                fetch(`../../api/cart/${customerID}`,
                    {
                        method: "POST",
                        body: JSON.stringify(object),
                        headers: {
                            "Content-type": "application/json; charset=UTF-8"
                        }}).then(res=>{
                            return res.json()
                        }).then(data=>{
                            alert(data.message)
                })
            }
        }else {
            alert('Vui lòng chọn màu sắc, kích thước sản phẩm')
        }
    })


    const handleSelect = () => {
        if(check1 && check2){
            const result = array.filter(value => {
                return sizeSelect === value.size && colorSelect === value.color
            })
            price.innerText = result[0].price + 'đ'
        }
    }
    handleEvent()
}

const handleReRender = (product, htmlsImage, htmlsColor, htmlsSize) =>{
    price.innerText = product.data.detail[0].price + 'đ'
    nameProduct.innerText = product.data.productName
    imgList.innerHTML = htmlsImage.join('');
    sizeList.innerHTML = htmlsSize.join('');
    colorList.innerHTML = htmlsColor.join('');
}



function handleEvent(){
    const addBtn = $('.btn-add')
    const prevBtn = $('.btn-prev')
    const stateNumber = $('.sm-amount-number');
    const imgMain = $('.sm-image-main');
    const imgItems = $$('.sm-item-pic');
    const btnOpenSize = $('.table-size')
    const tableSize = $('.sm-modal-table-size')
    const addCart = $('.btn-add-cart')
    const buyNow = $('.btn-buy-now')

    let stateNumberValue = parseInt(stateNumber.innerText);
    [...imgItems].forEach((value) => {
        value.addEventListener('mouseover', () => {
            imgMain.style.backgroundImage = value.style.backgroundImage
        })
    })

    ;
    btnOpenSize.addEventListener('click', () => {
        tableSize.style = 'transform: scale(1);'
    });
    tableSize.addEventListener('click', () => {
        tableSize.style = 'transform:  scale(0);'
    });
    function handleBtn(value){
        if(value === 1){
            stateNumberValue++
        }else if(value === -1){
            if(stateNumberValue > 1){
                stateNumberValue--
            }else {
                stateNumberValue = stateNumberValue;
            }
        }
        stateNumber.innerText = stateNumberValue;
    }
    addBtn.addEventListener('click', () => {
        handleBtn(1)
    })
    prevBtn.addEventListener('click', () => {
        handleBtn(-1)
    })
    const sliderMain = document.querySelector('.sm-image-list')
    const btnPrev = document.querySelector('.prev_img')
    const btnNext = document.querySelector('.next_img')
    const items = document.querySelectorAll('.sm-image-item')
    const itemsWidth = items[0].offsetWidth;
    const sliderLeng = items.length;
    let index = 0;
    btnNext.addEventListener('click', function(){
        handleChangeSlide(1)
    });
    btnPrev.addEventListener('click', function(){
        handleChangeSlide(-1)
    });
    function handleChangeSlide(value){

        if(value === 1){

            if(index < sliderLeng - 5){
                index++;
            }

            sliderMain.style = `transform: translateX(${-itemsWidth*index}px);`;

        }else if(value === -1){

            if(index === 0) {
                index = index
            }else {
                index--;
            }

            sliderMain.style = `transform: translateX(${-itemsWidth*index}px);`;
        }
    }
}

function Start(){
    getProduct(renderProduct)

}

Start();

