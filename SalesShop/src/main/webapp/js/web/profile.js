
$(document).ready(async () => {

    $('#saveProfile').on('click', (e) => {
        e.preventDefault();
        const file = $('#formFileSm')[0].files[0]
        const profileCustomer = $('#form').serializeArray()
        const object = {}
        let fullName = '';
        $.each(profileCustomer, (index, value) => {
            if(value.name === 'firstName' || value.name === 'lastName')
                fullName += value.value + ' '
            else
                object[value.name] = value.value
        })
        object['address'] = 'Số nhà ?, ' + $('#ward').val() + ', ' + $('#district').val() + ', ' + $('#province').val()
        object['name'] = fullName.trim()
        if (file) {
            const name = generatedFileName(file.name)
            const  blob = file.slice(0, file.size, `image/${getEXT(file.name)}`);
            const newFile = new File([blob], name, {type: `image/${getEXT(file.name)}`});
            object['avatar'] = 'images/' + name
            console.log(object)
            let formData = new FormData()
            formData.append("file", newFile)
            const request = new XMLHttpRequest()
            request.responseType = 'json'
            request.addEventListener("load", () => {
                if (request.status === 200) {
                    $.ajax({
                        method: 'PUT',
                        contentType: 'application/json',
                        url: '../../api/customer',
                        data: JSON.stringify(object),
                        success: (data) => {
                            alert(data);
                            $('#avatar').attr('src', '../../' + object['avatar'])
                        },
                    })
                }
            })
            request.open("POST", "../../file-upload")
            request.send(formData)
        }
    })

    function generatedFileName(fileName)
    {
        return Math.ceil(new Date().getTime() + Math.random() * 100) + fileName.substring(fileName.indexOf('.'));
    }

    function getEXT(fileName)
    {
        return  fileName.substring(fileName.indexOf('.') + 1);
    }
})
