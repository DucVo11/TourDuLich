var config = {};

var init_function = {
    init: function () {
        let _this = this;
        _this.bs_input_file();
        _this.showImage();
        _this.preview();
    },
    bs_input_file: function () {
        $(".input-file").before(
            function() {
                if ( ! $(this).prev().hasClass('input-ghost') ) {
                    var element = $("<input type='file' class='input-ghost' id='input_img' style='visibility:hidden; height:0'>");
                    element.attr("name",$(this).attr("name"));
                    element.change(function(){
                        element.next(element).find('input').val((element.val()).split('\\').pop());
                    });
                    $(this).find("button.btn-choose").click(function(){
                        element.click();
                    });
                    $(this).find("button.btn-reset").click(function(){
                        element.val(null);
                        $(this).parents(".input-file").find('input').val('');
                    });
                    $(this).find('input').css("cursor","pointer");
                    $(this).find('input').mousedown(function() {
                        $(this).parents('.input-file').prev().click();
                        return false;
                    });
                    return element;
                }
            }
        );
    },
    showImage: function() {
        $("#input_img").change(function() {
            if (this.files && this.files[0]) {
                var reader = new FileReader();

                reader.onload = function(e) {
                    $('#image_render').attr('src', e.target.result);
                    $('#image_render').css('height', '150px');
                    $('#image_render').css('display', 'block');
                }

                reader.readAsDataURL(this.files[0]);
            }
        });
    },
    preview : function () {
        $(".btn-preview").click(function (event) {
            event.preventDefault();
            let url = $(this).attr('href');
            $.ajax({
                url: url,
                type: 'POST',
                dataType: 'json',
            }).done(function (result) {
                if (result.html)
                {
                    $("#preview").html('').append(result.html);
                    $(".preview").modal('show');
                }
            })
        })
    }
}

$(function () {
    init_function.init();
    $('.btn-confirm-delete').confirm({
        title: 'Xóa dữ liệu',
        content: "Bạn có chăc chắn muốn xóa dữ liệu ?",
        icon: 'fa fa-warning',
        type: 'red',
        buttons: {
            confirm: {
                text: 'Xác nhận',
                btnClass: 'btn-blue',
                action: function () {
                    location.href = this.$target.attr('href');
                }
            },
            cancel: {
                text: 'Hủy',
                btnClass: 'btn-danger',
                action: function () {
                }
            }
        }
    });
    $('.select-user').change(function () {
        var user_id = $(this).val();
        var url = $(this).attr('url');
        $.ajax({
            url: url,
            type: 'POST',
            dataType: 'json',
            async: true,
            data: {
                id: user_id
            }
        }).done(function (result) {
            if (result.status_code == 200) {
                $('.blood_group').val(result.blood_group);
            }
        }).fail(function (XMLHttpRequest, textStatus, thrownError) {
            console.log(thrownError)
        });
    })
    $("#check-all").click(function () {
        $('input.check_auto_clearing:checkbox').prop('checked', $(this).is(':checked'));
    });
    $('.update-user-register').click(function () {

        var url = $(this).attr('url')
        var event_id = $(this).attr('event_id')
        var status = $('.status').val();
        var note  = $('.note').val();
        var ids = new Array();
        $('[name="id[]"]:checked').each(function()
        {
            ids.push($(this).val());
        });
        if (ids.length == 0) {
            $.confirm({
                title: 'Thông báo',
                content: 'Bạn cần chọn thành viên muốn cập nhật',
                buttons: {
                    ok: {
                        text: "OK",
                        btnClass: 'btn-primary',
                        keys: ['enter'],
                        action: function(){
                        }
                    }
                }
            });
            return false;
        }

        $.ajax({
            url: url,
            type: 'POST',
            dataType: 'json',
            async: true,
            data: {
                status: status,
                note: note,
                ids: ids,
                event_id: event_id,
            }
        }).done(function (result) {
            if (result.status_code == 200) {
                toastr.success('Cập nhật thành công', {timeOut: 3000});
                setTimeout(function () {
                    $url = window.location.href;
                    window.location.href = $url;
                }, 1000)
            } else {
                toastr.error('Cập nhật thất bại', {timeOut: 3000});
                setTimeout(function () {
                    $url = window.location.href;
                    window.location.href = $url;
                }, 1000)
            }
        }).fail(function (XMLHttpRequest, textStatus, thrownError) {
            console.log(thrownError)
        });
    })

    $('.update_book_tour').click(function () {
        var url = $(this).attr('url');
        location.href = url;
    })
})
