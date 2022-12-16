<div>
    <div style="background-color:#c5ffff;text-align: center;border-color: green; border-style: solid;
  border-width: 5px;">
    <h4 style="text-align: center">Cảm ơn quý khách đã sử dụng dịch vụ của chúng tôi,<br>
    Booking của quý khách đã được chúng tôi tiếp nhận
    </h4>
             
</div>
    
    <h2>Phiếu tiếp nhận booking</h2>
     Mã tour: <b> {{$book->b_tour_id}} </b> <br>
   Tên tour: <b> {{$tour->t_title}} </b><br>
    Ngày đi: <b> {{$book->b_start_date}} </b><br>
    Điểm khởi hành: <b> {{$book->b_address}} </b><br>
   
    <div style="background-color:#ddd;margin-top:8px">
    <div style ="margin-left:8px">
    Mã booking: <b style="color:red"> {{$book->id}}</b><br>
    <b style="color:red">Xin quý khách vui lòng nhớ số booking để thuận tiện cho giao dịch sau này</b><br>
    @php
         $totalPrice = ($book->b_number_adults*$book->b_price_adults) + ($book->b_number_children*$book->b_price_children);
     @endphp
    Trị giá booking: <b>{{ number_format($totalPrice, 0,',','.') }} vnd </b><br>
      Ngày booking:<b> {{$book->created_at}}</b><br>
    Thời hạn xác nhận:<b> 3 ngày sau booking</b><br>
 <b style="color:red"> Quý khách có thể quản lý booking tại thông tin khách hàng</b><br>
</div>
 </div style="margin-top:8px">
    Họ tên:<b> {{$user->name}}</b><br>
    email: <b>{{$user->email}}</b><br>
    Số điện thoại: <b>{{$user->phone}}</b><br>
    Địa chỉ: <b>{{$user->address}} </b><br>
   
<div  style="background-color:#ddd;margin-top:8px"> 
<div style ="margin-left:8px">
    Người lớn:<b> {{$book->b_number_adults}} </b>  Trẻ em: <b>{{$book->b_number_children}}</b>
</div>
</div>
    
</div>