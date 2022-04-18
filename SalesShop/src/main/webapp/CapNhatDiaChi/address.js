const $ = document.querySelector.bind(document)
const $$ = document.querySelectorAll.bind(document)

const repair = $('.btn_repair')
const fixContainer = $('.fix_address_container')
const fixBody = $('.fix_address_body')
const back = $('.btn_fix_back')


const namePrev = $('.my_name_value')
const phonePrev = $('.my_phone_value')
const addressPrev = $('.my_address_value')


const nameNew = $('.fix_input_name')
const phoneNew = $('.fix_input_phone')
const address = $('.fix_input_content')
const addressNew = $('.fix_input_specific')

const inputs = $$('.div_reletive')

const submit = $('.btn_submit')


const checkError = (input, message) => {
    let parent = input.parentElement;
    let small = parent.querySelector('small')
    parent.classList.add('error')
    small.innerText = message
}
function showSucces(input){
    let parent = input.parentElement;
    let small = parent.querySelector('small')
    parent.classList.remove('error')
    small.innerText = ''
}

function checkEmptyError(listInputs){
    let ischeckEmpty = true;
    listInputs.forEach((input) => {
        input.value = input.value.trim()
        if(!input.value){
            checkError(input,'Khong duoc de trong !');
            ischeckEmpty = false;
        }else {
            showSucces(input)
        }
    })
    return ischeckEmpty;
}
function updateAddress(listInputs, listElement){
    listInputs.forEach((input, index) => {
        listElement[index].innerText = input.value
        
    })
}
submit.addEventListener('click', function(e){
    e.stopPropagation()
    let result = checkEmptyError([nameNew, phoneNew, addressNew,address])
    if(result){
        updateAddress([nameNew, phoneNew, addressNew], [namePrev, phonePrev, addressPrev])
        handleClose()
    }
})

const handleClose = () => {
    fixContainer.classList.add('hide')
}
repair.addEventListener('click', function(){
    fixContainer.classList.remove('hide')
})
back.addEventListener('click', function(){
    handleClose()
})
fixBody.addEventListener('click', function(e){
    e.stopPropagation()
})

fixContainer.addEventListener('click', function(){
    handleClose()
})
