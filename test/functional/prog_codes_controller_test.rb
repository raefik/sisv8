require 'test_helper'

class ProgCodesControllerTest < ActionController::TestCase
  setup do
    @prog_code = prog_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prog_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prog_code" do
    assert_difference('ProgCode.count') do
      post :create, prog_code: @prog_code.attributes
    end

    assert_redirected_to prog_code_path(assigns(:prog_code))
  end

  test "should show prog_code" do
    get :show, id: @prog_code.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prog_code.to_param
    assert_response :success
  end

  test "should update prog_code" do
    put :update, id: @prog_code.to_param, prog_code: @prog_code.attributes
    assert_redirected_to prog_code_path(assigns(:prog_code))
  end

  test "should destroy prog_code" do
    assert_difference('ProgCode.count', -1) do
      delete :destroy, id: @prog_code.to_param
    end

    assert_redirected_to prog_codes_path
  end
end
