
$(document).ready(()=>{

    // bắt sự kiện(blur) trên ô nhập liệu sao cho
    /*
    *tên tài khoản không được có khoảng cách
    *dữ liệu không được bỏ trống
    *mật khẩu không đuọc nhỏ hơn 8 ký tự
    *tài khoản xác nhận phải trùng với mật khẩu
    *nếu vi phạm môt trong các yêu cầu trên(cho bién isOK = false) thì viền ô nhập màu đỏ có icon báo lỗi
    * .... các yều cầu thêm nếu có
    *
    * */
    let isOK = true;

    $('#firstname').on('blur', ()=>{
        console.log('ok')
    })

    $('#submit').on('click',
        (e) => {
            e.preventDefault()
            const formData = $('#form').serializeArray()
            const objectData = {}
            let name = ''
            $.each(formData, (index, value) => {
                if (value.name !== 'firstname' && value.name !== 'lastname')
                    objectData[value.name] = value.value
                else{
                    name += value.value + ' '
                }
            })
            objectData['name'] = name.trim()
            if(isOK === true)
            {
                $.ajax({
                    type: 'POST',
                    contentType: 'application/json',
                    url: '../../api/customer/register',
                    data: JSON.stringify(objectData),
                    success: ()=>{
                        alert('Đăng ký thành công')
                        window.location.href = '../../views/web/login.jsp'
                    }
                })
            }
        })
})