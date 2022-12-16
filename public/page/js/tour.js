$(function () {
    $('.btn-cancel-order').click(function (event) {
        event.preventDefault();
        let url = $(this).attr('href');
        var __that = $(this);
        $.ajax({
            url: url,
            type: 'POST',
            dataType: 'json',
            async: true,
            data: {}
        }).done(function (result) {

            if (result.status_code == 200) {
                __that.parent().find('.btn-status-order').css('display', 'none');
                __that.text('Đã hủy');
                toastr.success(result.message, {timeOut: 3000});
            } else {
                swal('Thông báo', result.message, "error");
            }
        }).fail(function (XMLHttpRequest, textStatus, thrownError) {
            toastr.error('Đã sảy ra lỗi không thể hủy tour', {timeOut: 3000});
        });
    })
})