const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);

const addBtn = $('.btn-add')
const prevBtn = $('.btn-prev')
const stateNumber = $('.sm-amount-number');
const selectColors = $$('.select-item-color')
const selectSize = $$('.select-item-size')
const imgMain = $('.sm-image-main');
const imgItems = $$('.sm-item-pic');
const btnOpenSize = $('.table-size')
const tableSize = $('.sm-modal-table-size')
const addCart = $('.btn-add-cart')
const buyNow = $('.btn-buy-now')
let check1 = false;
let check2 = false;
console.log(imgMain.style.backgroundImage);
let stateNumberValue = parseInt(stateNumber.innerText)
console.log(stateNumberValue);
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
addCart.addEventListener('click', () => {
    if(check1 && check2){
        alert('Đã thêm vào giỏ hàng')
    }else {
        alert('Vui lòng chọn màu sắc, kích thước sản phẩm')
    }
    
})
buyNow.addEventListener('click', () => {
    if(check1 && check2){
        alert('Đã đặt hàng thành công')
    }else {
        alert('Vui lòng chọn màu sắc, kích thước sản phẩm')
    }
})

;[...selectColors].forEach((value) => {

    value.addEventListener('click', () => {
        let check = value.closest('.state-select')
        if(check){
            value.classList.remove('state-select')
            check1 = false;
        }
        else {
            [...selectColors].forEach((value) => {
                value.classList.remove('state-select')
            })
            value.classList.add('state-select')
            check1 = true
        }
    })
});
;[...selectSize].forEach((value) => {

    value.addEventListener('click', () => {
        let check = value.closest('.state-select')
        if(check){
            value.classList.remove('state-select')
            check2 = false;
        }
        else {
            [...selectSize].forEach((value) => {
                value.classList.remove('state-select')
            })
            value.classList.add('state-select')
            check2 = true;
        }
    })
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


window.addEventListener("load", function(){
    const sliderMain = document.querySelector('.sm-image-list')
    const btnPrev = document.querySelector('.prev_img')
    const btnNext = document.querySelector('.next_img')
    const items = document.querySelectorAll('.sm-image-item')
    const itemsWidth = items[0].offsetWidth;
    const sliderLeng = items.length;
    console.log(items);
    console.log(sliderLeng, itemsWidth);
    let index = 0;
    console.log(itemsWidth);
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
})
