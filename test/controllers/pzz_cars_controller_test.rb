require 'test_helper'

class PzzCarsControllerTest < ActionController::TestCase
  setup do
    @pzz_car = pzz_cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pzz_cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pzz_car" do
    assert_difference('PzzCar.count') do
      post :create, pzz_car: { car_brand: @pzz_car.car_brand, car_plate_no: @pzz_car.car_plate_no, car_seats: @pzz_car.car_seats, car_type: @pzz_car.car_type, user_id: @pzz_car.user_id }
    end

    assert_redirected_to pzz_car_path(assigns(:pzz_car))
  end

  test "should show pzz_car" do
    get :show, id: @pzz_car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pzz_car
    assert_response :success
  end

  test "should update pzz_car" do
    patch :update, id: @pzz_car, pzz_car: { car_brand: @pzz_car.car_brand, car_plate_no: @pzz_car.car_plate_no, car_seats: @pzz_car.car_seats, car_type: @pzz_car.car_type, user_id: @pzz_car.user_id }
    assert_redirected_to pzz_car_path(assigns(:pzz_car))
  end

  test "should destroy pzz_car" do
    assert_difference('PzzCar.count', -1) do
      delete :destroy, id: @pzz_car
    end

    assert_redirected_to pzz_cars_path
  end
end
