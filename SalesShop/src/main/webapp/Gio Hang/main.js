const $ = document.querySelector.bind(document)
const $$ = document.querySelectorAll.bind(document)

const productItems = $$('.smr-content-item')
const checkItems = $$('.checked-product')
const numberItems = $$('.sm-amount-number')
const priceItem = $$('.price-number')
const list = $('.smr-content-list')
console.log(productItems);
console.log(numberItems);

list.addEventListener('click', (e) => {
    const productItem = e.target.closest('.smr-content-item')
    if(productItem){
        let index = Number(productItem.dataset.index)
        if(checkItems[index].checked){
            let number = Number(numberItems[index].innerText)
            let price = Number(priceItem[index].innerText)
            console.log(number* price);
        }
    }
})