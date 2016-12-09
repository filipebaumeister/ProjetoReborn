require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post :create, car: { BUYVALUE: @car.BUYVALUE, CHASSI: @car.CHASSI, COLOREX: @car.COLOREX, COLORIN: @car.COLORIN, FABYEAR: @car.FABYEAR, FILIAL: @car.FILIAL, FIPEVALUE: @car.FIPEVALUE, FUEL: @car.FUEL, KM: @car.KM, MODELYEAR: @car.MODELYEAR, NAME: @car.NAME, NEW: @car.NEW, PLATE: @car.PLATE, REBUILDCAR_id: @car.REBUILDCAR_id, SELLVALUE: @car.SELLVALUE, SPECS: @car.SPECS, STATUS: @car.STATUS, TRANSMISSION: @car.TRANSMISSION }
    end

    assert_redirected_to car_path(assigns(:car))
  end

  test "should show car" do
    get :show, id: @car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car
    assert_response :success
  end

  test "should update car" do
    patch :update, id: @car, car: { BUYVALUE: @car.BUYVALUE, CHASSI: @car.CHASSI, COLOREX: @car.COLOREX, COLORIN: @car.COLORIN, FABYEAR: @car.FABYEAR, FILIAL: @car.FILIAL, FIPEVALUE: @car.FIPEVALUE, FUEL: @car.FUEL, KM: @car.KM, MODELYEAR: @car.MODELYEAR, NAME: @car.NAME, NEW: @car.NEW, PLATE: @car.PLATE, REBUILDCAR_id: @car.REBUILDCAR_id, SELLVALUE: @car.SELLVALUE, SPECS: @car.SPECS, STATUS: @car.STATUS, TRANSMISSION: @car.TRANSMISSION }
    assert_redirected_to car_path(assigns(:car))
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete :destroy, id: @car
    end

    assert_redirected_to cars_path
  end
end
