
$(document).ready(()=>{

    // bắt sự kiện trên ô nhập liệu sao cho dữ liệu không được bỏ trống
    let isOK = false;

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
            if(isOK === false)
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