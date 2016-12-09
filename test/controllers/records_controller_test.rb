require 'test_helper'

class RecordsControllerTest < ActionController::TestCase
  setup do
    @record = records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record" do
    assert_difference('Record.count') do
      post :create, record: { ACCOUNT_id: @record.ACCOUNT_id, CAR_id: @record.CAR_id, COEF: @record.COEF, CUSTOMERPROVIDER_id: @record.CUSTOMERPROVIDER_id, DATE_EMISSION: @record.DATE_EMISSION, FINANCIAL_OP_TYPE: @record.FINANCIAL_OP_TYPE, PAYMENT_METHOD_id: @record.PAYMENT_METHOD_id, QT_PORTION: @record.QT_PORTION, USER_id: @record.USER_id, VALUE_FINANCED: @record.VALUE_FINANCED, VALUE_PORTION: @record.VALUE_PORTION, VALUE_TOTAL?: @record.VALUE_TOTAL? }
    end

    assert_redirected_to record_path(assigns(:record))
  end

  test "should show record" do
    get :show, id: @record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record
    assert_response :success
  end

  test "should update record" do
    patch :update, id: @record, record: { ACCOUNT_id: @record.ACCOUNT_id, CAR_id: @record.CAR_id, COEF: @record.COEF, CUSTOMERPROVIDER_id: @record.CUSTOMERPROVIDER_id, DATE_EMISSION: @record.DATE_EMISSION, FINANCIAL_OP_TYPE: @record.FINANCIAL_OP_TYPE, PAYMENT_METHOD_id: @record.PAYMENT_METHOD_id, QT_PORTION: @record.QT_PORTION, USER_id: @record.USER_id, VALUE_FINANCED: @record.VALUE_FINANCED, VALUE_PORTION: @record.VALUE_PORTION, VALUE_TOTAL?: @record.VALUE_TOTAL? }
    assert_redirected_to record_path(assigns(:record))
  end

  test "should destroy record" do
    assert_difference('Record.count', -1) do
      delete :destroy, id: @record
    end

    assert_redirected_to records_path
  end
end
