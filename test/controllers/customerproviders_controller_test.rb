require 'test_helper'

class CustomerprovidersControllerTest < ActionController::TestCase
  setup do
    @customerprovider = customerproviders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customerproviders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customerprovider" do
    assert_difference('Customerprovider.count') do
      post :create, customerprovider: { ADDRESS: @customerprovider.ADDRESS, BIRTHDAY: @customerprovider.BIRTHDAY, CPFCNPJ: @customerprovider.CPFCNPJ, CUSPRO: @customerprovider.CUSPRO, EMAIL: @customerprovider.EMAIL, FISOUJUR: @customerprovider.FISOUJUR, NAME: @customerprovider.NAME, PHONE1: @customerprovider.PHONE1, PHONE2: @customerprovider.PHONE2 }
    end

    assert_redirected_to customerprovider_path(assigns(:customerprovider))
  end

  test "should show customerprovider" do
    get :show, id: @customerprovider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customerprovider
    assert_response :success
  end

  test "should update customerprovider" do
    patch :update, id: @customerprovider, customerprovider: { ADDRESS: @customerprovider.ADDRESS, BIRTHDAY: @customerprovider.BIRTHDAY, CPFCNPJ: @customerprovider.CPFCNPJ, CUSPRO: @customerprovider.CUSPRO, EMAIL: @customerprovider.EMAIL, FISOUJUR: @customerprovider.FISOUJUR, NAME: @customerprovider.NAME, PHONE1: @customerprovider.PHONE1, PHONE2: @customerprovider.PHONE2 }
    assert_redirected_to customerprovider_path(assigns(:customerprovider))
  end

  test "should destroy customerprovider" do
    assert_difference('Customerprovider.count', -1) do
      delete :destroy, id: @customerprovider
    end

    assert_redirected_to customerproviders_path
  end
end
