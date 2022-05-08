
$(document).ready( ()=>{
    const addressDetail = $('#address-detail').val()
    if (addressDetail) {
        console.log(addressDetail)
        const arrays = addressDetail.split(',')
        let province
        let district
        let ward
        if (arrays.length === 3) {
            province = arrays[2].trim()
            district = arrays[1].trim()
            ward = arrays[0].trim()
        } else if (arrays.length === 4) {
            province = arrays[3].trim()
            district = arrays[2].trim()
            ward = arrays[1].trim()
        }
        loadAddress(province, 'province', '')
        loadAddress(district, 'district', `/${province}`)
        loadAddress(ward, 'ward', `/${province}/${district}`)
    }
    else {
        loadAddress('', 'province', '')
    }

    function loadAddress(type, tile, value) {
        fetch(`../../api/address${value}`).then((res)=>{
            return res.json()
        }).then(data=>{
            let html = ``
            for (let i = 0; i < data.length; ++i) {
                if (data[i] === type) {
                    html += `<option value="${data[i]}" selected="selected">${data[i]}</option>`
                } else {
                    html += `<option value="${data[i]}">${data[i]}</option>`
                }
            }
            $('#' + tile).html(html)
        })
    }


    $('#province').on('change', () => {
        let province = $('#province').val().toString();
        loadAddress('', 'district', `/${province}`)
    })

    $('#district').on('change', () => {
        let province = $('#province').val().toString();
        let district = $('#district').val().toString();
        loadAddress('', 'ward', `/${province}/${district}`)
    })
})