require 'test_helper'

class PerfilProcessesControllerTest < ActionController::TestCase
  setup do
    @perfil_process = perfil_processes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perfil_processes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perfil_process" do
    assert_difference('PerfilProcess.count') do
      post :create, perfil_process: { ABLE: @perfil_process.ABLE, PERFIL_id: @perfil_process.PERFIL_id, PROCC_id: @perfil_process.PROCC_id }
    end

    assert_redirected_to perfil_process_path(assigns(:perfil_process))
  end

  test "should show perfil_process" do
    get :show, id: @perfil_process
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perfil_process
    assert_response :success
  end

  test "should update perfil_process" do
    patch :update, id: @perfil_process, perfil_process: { ABLE: @perfil_process.ABLE, PERFIL_id: @perfil_process.PERFIL_id, PROCC_id: @perfil_process.PROCC_id }
    assert_redirected_to perfil_process_path(assigns(:perfil_process))
  end

  test "should destroy perfil_process" do
    assert_difference('PerfilProcess.count', -1) do
      delete :destroy, id: @perfil_process
    end

    assert_redirected_to perfil_processes_path
  end
end
