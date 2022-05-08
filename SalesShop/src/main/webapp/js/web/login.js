
const name = document.getElementById("username")
const pass = document.getElementById("password")

name.onblur = ()=>{
    if(name.value === ""){
        name.focus()
        name.placeholder = "trường dữ liệu không được bỏ trống"
        name.style.caretColor = 'red'
    }
}

const error = (message, icon)=>{

}

pass.onblur = ()=>{
    if(pass.value === ""){
        pass.focus()
        pass.placeholder = "trường dữ liệu không được bỏ trống"
    }else if(pass.value.length < 8)
    {
        pass.value = ""
        pass.focus()
        pass.placeholder = "mật khẩu phải lớn hơn 8 ký tự"
    }
}
