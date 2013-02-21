require 'test_helper'

class SManagementsControllerTest < ActionController::TestCase
  setup do
    @s_management = s_managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:s_managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create s_management" do
    assert_difference('SManagement.count') do
      post :create, s_management: @s_management.attributes
    end

    assert_redirected_to s_management_path(assigns(:s_management))
  end

  test "should show s_management" do
    get :show, id: @s_management.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @s_management.to_param
    assert_response :success
  end

  test "should update s_management" do
    put :update, id: @s_management.to_param, s_management: @s_management.attributes
    assert_redirected_to s_management_path(assigns(:s_management))
  end

  test "should destroy s_management" do
    assert_difference('SManagement.count', -1) do
      delete :destroy, id: @s_management.to_param
    end

    assert_redirected_to s_managements_path
  end
end
