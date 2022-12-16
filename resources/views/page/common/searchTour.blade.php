<form action="{{ route('tour') }}" class="search-property-1">
    <div class="row no-gutters">
        <div class="col-md d-flex">
            <div class="form-group p-4 border-0">
                <label for="#">Tour</label>
                <div class="form-field">
                    <div class="icon"><span class="fa fa-search"></span></div>
                    <input type="text" name="key_tour" value="{{ Request::get('key_tour') }}" class="form-control" placeholder="Tìm kiếm">
                </div>
            </div>
        </div>
        <div class="col-md d-flex">
            <div class="form-group p-4">
                <label for="#">Ngày Khởi Hành</label>
                <div class="form-field">
                    <div class="icon"><span class="fa fa-calendar"></span></div>
                    <input type="text" name="t_start_date" value="{{ Request::get('t_start_date') }}" class="form-control checkin_date" placeholder="Ngày Khởi Hành" autocomplete="off">
                </div>
            </div>
        </div>
        <div class="col-md d-flex">
            <div class="form-group p-4">
                <label for="#">Ngày Trở Về</label>
                <div class="form-field">
                    <div class="icon"><span class="fa fa-calendar"></span></div>
                    <input type="text" name="t_end_date" value="{{ Request::get('t_end_date') }}" class="form-control checkout_date" placeholder="Ngày Trở Về" autocomplete="off">
                </div>
            </div>
        </div>
        <div class="col-md d-flex">
            <div class="form-group p-4">
                <label for="#">Khoảng giá</label>
                <div class="form-field">
                    <div class="select-wrap">
                        <div class="icon"><span class="fa fa-chevron-down"></span></div>
                        <select name="price" id="" class="form-control">
                            <option value="">Chọn khoảng giá</option>
                            <option value="0-1000000">0->1.000.000</option>
                            <option value="1000000-2000000">1.000.000->2.000.000</option>
                            <option value="2000000-3000000">2.000.000->3.000.000</option>
                            <option value="3000000-4000000">3.000.000->4.000.000</option>
                            <option value="4000000-5000000">4.000.000->5.000.000</option>
                            <option value="5000000-6000000">5.000.000->6.000.000</option>
                            <option value="6000000-7000000">6.000.000->7.000.000</option>
                            <option value="7000000-8000000">7.000.000->8.000.000</option>
                            <option value="8000000-9000000">8.000.000->9.000.000</option>
                            <option value="9000000-10000000">9.000.000->10.000.000</option>
                            <option value="10000000-11000000">10.000.000->11.000.000</option>
                            <option value="11000000-12000000">11.000.000->12.000.000</option>
                            <option value="12000000-13000000">12.000.000->13.000.000</option>
                            <option value="13000000-14000000">13.000.000->14.000.000</option>
                            <option value="14000000-15000000">14.000.000->15.000.000</option>
                            <option value="15000000-100000000"> Trên 15.000.000</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md d-flex">
            <div class="form-group d-flex w-100 border-0">
                <div class="form-field w-100 align-items-center d-flex">
                    <input type="submit" value="Tìm kiếm" class="align-self-stretch form-control btn btn-primary">
                </div>
            </div>
        </div>
    </div>
</form>