<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BookTourRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
            'b_name'  => 'required|max:191',
            'b_email' => 'required|email|max:191',
            'b_phone' => 'required',
            'b_address' => 'required',
            'b_number_adults' => 'required',
            'b_number_children' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'b_name.required' => 'Vui lòng nhập vào họ tên',
            'b_email.required' => 'Vui lòng nhập vào email đăng nhập',
            'b_email.unique' => 'Email đăng nhập không thể trùng lặp',
            'b_email.max' => 'Email vượt quá số ký tự cho phép',
            'b_phone.required' => 'Vui lòng nhập số điện thoại liên hệ',
            'b_address.required' => 'Vui lòng nhập địa chỉ',
            'b_number_adults.required' => 'Vui lòng nhập số người lớn',
            'b_number_children.required' => 'Vui lòng nhập số trẻ em',

        ];
    }
}
