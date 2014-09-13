json.array!(@pzz_cars) do |pzz_car|
  json.extract! pzz_car, :id, :pzz_user_id, :car_type, :car_brand, :car_seats, :car_plate_no
  json.url pzz_car_url(pzz_car, format: :json)
end
