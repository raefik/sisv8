require 'test_helper'

class ProgNamesControllerTest < ActionController::TestCase
  setup do
    @prog_name = prog_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prog_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prog_name" do
    assert_difference('ProgName.count') do
      post :create, prog_name: @prog_name.attributes
    end

    assert_redirected_to prog_name_path(assigns(:prog_name))
  end

  test "should show prog_name" do
    get :show, id: @prog_name.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prog_name.to_param
    assert_response :success
  end

  test "should update prog_name" do
    put :update, id: @prog_name.to_param, prog_name: @prog_name.attributes
    assert_redirected_to prog_name_path(assigns(:prog_name))
  end

  test "should destroy prog_name" do
    assert_difference('ProgName.count', -1) do
      delete :destroy, id: @prog_name.to_param
    end

    assert_redirected_to prog_names_path
  end
end
