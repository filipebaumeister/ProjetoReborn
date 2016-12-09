require 'test_helper'

class RecordFinancialsControllerTest < ActionController::TestCase
  setup do
    @record_financial = record_financials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:record_financials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record_financial" do
    assert_difference('RecordFinancial.count') do
      post :create, record_financial: { FINANCIAL_id: @record_financial.FINANCIAL_id, RECORD_id: @record_financial.RECORD_id }
    end

    assert_redirected_to record_financial_path(assigns(:record_financial))
  end

  test "should show record_financial" do
    get :show, id: @record_financial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record_financial
    assert_response :success
  end

  test "should update record_financial" do
    patch :update, id: @record_financial, record_financial: { FINANCIAL_id: @record_financial.FINANCIAL_id, RECORD_id: @record_financial.RECORD_id }
    assert_redirected_to record_financial_path(assigns(:record_financial))
  end

  test "should destroy record_financial" do
    assert_difference('RecordFinancial.count', -1) do
      delete :destroy, id: @record_financial
    end

    assert_redirected_to record_financials_path
  end
end
