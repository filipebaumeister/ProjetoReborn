require 'test_helper'

class ProcCsControllerTest < ActionController::TestCase
  setup do
    @procc = proccs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proccs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procc" do
    assert_difference('Procc.count') do
      post :create, procc: { NAME: @procc.NAME }
    end

    assert_redirected_to procc_path(assigns(:procc))
  end

  test "should show procc" do
    get :show, id: @procc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procc
    assert_response :success
  end

  test "should update procc" do
    patch :update, id: @procc, procc: { NAME: @procc.NAME }
    assert_redirected_to procc_path(assigns(:procc))
  end

  test "should destroy procc" do
    assert_difference('Procc.count', -1) do
      delete :destroy, id: @procc
    end

    assert_redirected_to proccs_path
  end
end
