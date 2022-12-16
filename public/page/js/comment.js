$(function () {

    "use strict";

    $('.btn-comment').click(function (event) {
        event.preventDefault();
        var tour_id = $(this).attr('tour_id');
        var reply_id = $(this).attr('reply_id');
        var article_id = $(this).attr('article_id');
        var hotel_id = $(this).attr('hotel_id');
        var content = $('#message').val();

        if (content == '') {
            $('.text-errors-comment').css('display', 'block');
            return false;
        } else {
            $('.text-errors-comment').css('display', 'none');
        }
        var __that = $(this);

        $.ajax({
            url: urlComment,
            type: 'POST',
            dataType: 'json',
            async: true,
            data: {
                tour_id : tour_id,
                reply_id : reply_id,
                article_id : article_id,
                hotel_id : hotel_id,
                message : content,
            }
        }).done(function (result) {

            if (result.code == 200) {
                $('.comment-list').prepend(result.html);
                $('#message').val('')
            } else {
                toastr.error('Đã sảy ra lỗi không thể bình luận', {timeOut: 3000});
            }
        }).fail(function (XMLHttpRequest, textStatus, thrownError) {
            toastr.error('Đã sảy ra lỗi không thể hủy tour', {timeOut: 3000});
        });
    });

    $('#message').keyup(function () {
        var content = $(this).val();

        if (content == '') {
            $('.text-errors-comment').css('display', 'block');
        } else {
            $('.text-errors-comment').css('display', 'none');
        }
    })
})