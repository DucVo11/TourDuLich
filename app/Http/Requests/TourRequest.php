<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;

class TourRequest extends FormRequest
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
    public function rules(Request $request)
    {

        $rules = [
            //
            't_title' => 'required | max:191 | unique:tours,t_title,'.$this->id,
            't_location_id' => ['required'],
            't_price_adults' => ['required'],
            't_price_children' => ['required'],
            't_journeys' => ['required'],
            't_schedule' => ['required'],
            'images'  => 'nullable|image|mimes:jpeg,jpg,png',
        ];

        if ($request->submit == 'create') {
            $rules['t_start_date'] = 'required|after:today';
            if ($this->request->has('t_start_date') && $this->request->get('t_start_date') != $this->request->get('t_end_date')) {
                $rules['t_end_date'] = 'required|after:t_start_date';
            } else {
                $rules['t_end_date'] = 'required|after:today';
            }
        }
        if ($request->submit == 'update') {
            if ($this->request->has('t_start_date') && $this->request->get('t_start_date') != $this->request->get('t_end_date')) {
                $rules['t_end_date'] = 'required|after:t_start_date';
            }
        }
        return $rules;
    }

    public function messages()
    {
        return [
            't_title.required'       => 'Dữ liệu không được phép để trống',
            't_title.max'            => 'Vượt quá số ký tự cho phép',
            't_title.unique'            => 'Dữ liệu đã bị trùng',
            't_location_id.required'      => 'Dữ liệu không được phép để trống',
            't_price_adults.required'      => 'Dữ liệu không được phép để trống',
            't_price_children.required'      => 'Dữ liệu không được phép để trống',
            't_journeys.required'      => 'Dữ liệu không được phép để trống',
            't_schedule.required'      => 'Dữ liệu không được phép để trống',
            't_start_date.required'            => 'Dữ liệu không được phép để trống',
            't_end_date.required'            => 'Dữ liệu không được phép để trống',
            't_start_date.after'            => 'Ngày bắt đầu phải lớn hơn ngày hiện tại',
            't_end_date.after'            => 'Ngày kết thúc phải lớn hơn ngày bắt đầu và ngày hiện tại',
            'images.image'                  => 'Vui lòng nhập đúng định dạng file ảnh',
            'images.mimes'                  => 'Vui lòng nhập đúng định dạng file ảnh',
        ];
    }
}
