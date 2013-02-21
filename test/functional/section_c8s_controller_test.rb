require 'test_helper'

class SectionC8sControllerTest < ActionController::TestCase
  setup do
    @section_c8 = section_c8s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_c8s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_c8" do
    assert_difference('SectionC8.count') do
      post :create, section_c8: @section_c8.attributes
    end

    assert_redirected_to section_c8_path(assigns(:section_c8))
  end

  test "should show section_c8" do
    get :show, id: @section_c8.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_c8.to_param
    assert_response :success
  end

  test "should update section_c8" do
    put :update, id: @section_c8.to_param, section_c8: @section_c8.attributes
    assert_redirected_to section_c8_path(assigns(:section_c8))
  end

  test "should destroy section_c8" do
    assert_difference('SectionC8.count', -1) do
      delete :destroy, id: @section_c8.to_param
    end

    assert_redirected_to section_c8s_path
  end
end
