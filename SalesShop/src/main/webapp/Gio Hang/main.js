const $ = document.querySelector.bind(document)
const $$ = document.querySelectorAll.bind(document)

const productItems = $$('.smr-content-item')
const checkItems = $$('.checked-product')
const numberItems = $$('.sm-amount-number')
const priceItems = $$('.price-number')
const list = $('.smr-content-list')
const countProduct = $('.number-price')
const sumPrice = $('.product-price-number')
const sumPriceAll = $('.sum-price-number')
const addBtns = $$('.btn-add')
const prevBtns = $$('.btn-prev')
const selectAll = $('.check-all')

console.log(productItems);
console.log(numberItems);
console.log(addBtns, prevBtns);
let sum = 0;
let count = 0;
let n = productItems.length;




for(let i in productItems){
    productItems[i].onclick = function(e){
        let add = e.target.closest('.btn-add')
        let prev = e.target.closest('.btn-prev')
        let checkboxItem = e.target.closest('.checked-product')
        let number = Number(numberItems[i].innerText);
        let price = Number(priceItems[i].innerText)
        let deleteItem = e.target.closest('.smr-delete-item')

        if(add){
            console.log('test', i);
            number++;
            numberItems[i].innerText = number;
            
            if(checkItems[i].checked){
                sum += price;
                sumPrice.innerText = sum;
                sumPriceAll.innerText = sum;
            }
            
        }
        if(prev){
            console.log('test', i);
            if(number > 1){
                number--;
                if(checkItems[i].checked){
                    if(number >= 1){
                        sum -= price;
                    }else {
                        sum = sum;
                    }
                
                sumPrice.innerText = sum;
                sumPriceAll.innerText = sum;
            }    
            }else if(number === 1){
                number = number;
            }
            
            console.log(number);
            numberItems[i].innerText = number;
        }
        if(checkboxItem){
            if(checkItems[i].checked){
                sum += number * price;
                count++;
                countProduct.innerText = `Tạm tính (${count} sản phẩm)`;
                sumPrice.innerText = sum;
                sumPriceAll.innerText = sum;
            }
            else if(checkItems[i].checked === false){
                selectAll.checked = false
                sum -= number * price;
                count--;
                countProduct.innerText = `Tạm tính (${count} sản phẩm)`;
                sumPrice.innerText = sum;
                sumPriceAll.innerText = sum;
            }
            console.log(number);
        }
        if(deleteItem){
            if(checkItems[i].checked){
                sum -= number * price;
                count--;
                n--;
                countProduct.innerText = `Tạm tính (${count} sản phẩm)`;
                sumPrice.innerText = sum;
                sumPriceAll.innerText = sum;
            }
            list.removeChild(productItems[i])
        }
    }
}

selectAll.addEventListener('click', (e) => {
    if(e.target.checked){
        for(let i = 0; i < n; i++){
            if(checkItems[i].checked === false){
                sum += Number(numberItems[i].innerText) * Number(priceItems[i].innerText)
                count = i+1;
                checkItems[i].checked = true;
            }
        }
    }else if(e.target.checked === false){
        for(let i = 0; i < productItems.length; i++){
            checkItems[i].checked = false;
        }
        sum = 0;
        count = 0;
    }
    sumPrice.innerText = sum;
    sumPriceAll.innerText = sum;
    countProduct.innerText = `Tạm tính (${count} sản phẩm)`;
})









