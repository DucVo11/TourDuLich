<div>
    <div style="background-color:#c5ffff;text-align: center;border-color: green; border-style: solid;
  border-width: 5px;">
    <h4 style="text-align: center">Cảm ơn quý khách đã sử dụng dịch vụ của chúng tôi,<br>
    Booking của quý khách đã được thanh toán thành công</h4>
             
</div>
    
    <h2>Phiếu xác nhận Thanh toán:  <b style="border-color: red; border-style: solid;color:red">ĐÃ THANH TOÁN</b></h2>
     Mã tour: <b> {{$bookTour->b_tour_id}} </b> <br>
   Tên tour: <b> {{$tour->t_title}} </b><br>
    Ngày đi: <b> {{$bookTour->b_start_date}} </b><br>
    Điểm khởi hành: <b> {{$bookTour->b_address}} </b><br>
   
    <div style="background-color:#ddd;margin-top:8px">
    <div style ="margin-left:8px">
    Mã booking: <b style="color:red"> {{$bookTour->id}}</b><br>
    <b style="color:red">Xin quý khách vui lòng nhớ số booking để thuận tiện cho giao dịch sau này</b><br>
    @php
    $totalPrice = ($bookTour->b_number_adults*$bookTour->b_price_adults) + ($bookTour->b_number_children*$bookTour->b_price_children);
     @endphp
        Trị giá booking: <b>{{ number_format($totalPrice, 0,',','.') }} vnd </b><br>
      Ngày booking:<b> {{$bookTour->created_at}}</b><br>
      Đã thanh toán: <b style="color:red">{{ number_format($totalPrice, 0,',','.') }} vnd </b><br>
      Ngày thanh toán:<b> {{$bookTour->updated_at}}</b><br>

</div>
</div>
 <div style="margin-top:8px">
    Họ tên:<b> {{$user->name}}</b><br>
    email: <b>{{$user->email}}</b><br>
    Số điện thoại: <b>{{$user->phone}}</b><br>
    Địa chỉ: <b>{{$user->address}} </b><br>
</div>
<div  style="background-color:#ddd;margin-top:8px"> 
<div style ="margin-left:8px">
    Người lớn:<b> {{$bookTour->b_number_adults}} </b>  Trẻ em: <b>{{$bookTour->b_number_children}}</b>
</div>
</div>
    
</div>