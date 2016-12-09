require 'test_helper'

class RebuildsControllerTest < ActionController::TestCase
  setup do
    @rebuild = rebuilds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rebuilds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rebuild" do
    assert_difference('Rebuild.count') do
      post :create, rebuild: { CAR_id: @rebuild.CAR_id, HISTORY: @rebuild.HISTORY, VALUE: @rebuild.VALUE }
    end

    assert_redirected_to rebuild_path(assigns(:rebuild))
  end

  test "should show rebuild" do
    get :show, id: @rebuild
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rebuild
    assert_response :success
  end

  test "should update rebuild" do
    patch :update, id: @rebuild, rebuild: { CAR_id: @rebuild.CAR_id, HISTORY: @rebuild.HISTORY, VALUE: @rebuild.VALUE }
    assert_redirected_to rebuild_path(assigns(:rebuild))
  end

  test "should destroy rebuild" do
    assert_difference('Rebuild.count', -1) do
      delete :destroy, id: @rebuild
    end

    assert_redirected_to rebuilds_path
  end
end
