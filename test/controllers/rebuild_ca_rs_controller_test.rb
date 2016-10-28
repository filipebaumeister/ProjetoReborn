require 'test_helper'

class RebuildCaRsControllerTest < ActionController::TestCase
  setup do
    @rebuild_car = rebuild_cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rebuild_cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rebuild_car" do
    assert_difference('RebuildCar.count') do
      post :create, rebuild_car: { CAR_id: @rebuild_car.CAR_id, REBUILD_id: @rebuild_car.REBUILD_id }
    end

    assert_redirected_to rebuild_car_path(assigns(:rebuild_car))
  end

  test "should show rebuild_car" do
    get :show, id: @rebuild_car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rebuild_car
    assert_response :success
  end

  test "should update rebuild_car" do
    patch :update, id: @rebuild_car, rebuild_car: { CAR_id: @rebuild_car.CAR_id, REBUILD_id: @rebuild_car.REBUILD_id }
    assert_redirected_to rebuild_car_path(assigns(:rebuild_car))
  end

  test "should destroy rebuild_car" do
    assert_difference('RebuildCar.count', -1) do
      delete :destroy, id: @rebuild_car
    end

    assert_redirected_to rebuild_cars_path
  end
end
