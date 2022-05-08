
class Cart{
    constructor(customerID, cart, amount) {
        this.customerID = customerID
        this.cartID = ''
        this.amount = amount
        this.cart = cart
    }
    loadCart(){
        if (this.customerID !== '') {
            fetch(`api/cart/${this.customerID}`)
                .then(res=>{
                    return res.json()
                })
                .then(data=>{
                    this.cartID = data.data
                    this.renderCart()
                })
        } else {
            this.renderCart()
        }
    }

    renderCart()
    {
        if (this.cartID === '') {
            this.cart.innerHTML = `
                <div class="ss-mycart-item-img" style="background-image: url(https://file.tinnhac.com/resize/600x-/music/2018/08/25/jisoocarupdate-b6bf.jpg);"></div>
                          `
        } else {
            fetch(`api/cart/${this.customerID}/${this.cartID}`)
                .then(res => {
                    return res.json()
                })
                .then(data => {
                    let html = ``
                    for (let i = 0; i < data.data.length; ++i) {
                        html += `
                        <div class="ss-mycart-item">
                            <div class="ss-mycart-item-img" style="background-image: url(${data.data[i].image});"></div>
                            <div class="ss-mycart-item-info">
                                <div class="ss-mycart-item-name">${data.data[i].name}</div>
                                <div class="ss-mycart-info-coin">
                                    <span class="ss-mycart-info-number">${data.data[i].amount}</span>x<span class="ss-mycart-info-price">${data.data[i].price * data.data[i].amount}</span>
                                </div>
                            </div>
                            <div class="ss-mycart-info-delete-item"><a class="fa-solid fa-xmark" id="${data.data[i].productID}"></a></div>
                        </div>
                    `
                    }
                    this.cart.innerHTML = html
                    this.amount.textContent = data.data.length
                    this.removeCart()
                })
        }
    }
    removeCart()
    {
        const listCartItems = document.querySelectorAll('.ss-mycart-info-delete-item')
        Array.from(listCartItems).forEach(c=>{
            c.onclick = e=>{
                e.preventDefault()
                const productID = c.firstChild.id
                if(productID !== '' && productID !== undefined)
                {
                    fetch(`api/cart/${this.cartID}/${productID}`, {
                        method: "DELETE",
                        headers: {
                            "Content-type": "application/json; charset=UTF-8"
                        }}
                    ).then(res=>{
                            return res.json()
                        }).then(data=>{
                            alert(data.message)
                            this.loadCart()
                    })
                }
            }
        })
    }
}
const cart = document.querySelector('#cart')
const customerID = document.querySelector('#customerID').value
const amount = document.querySelector('#amount')
new Cart(customerID, cart, amount).loadCart()
