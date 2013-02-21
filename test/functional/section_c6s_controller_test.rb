require 'test_helper'

class SectionC6sControllerTest < ActionController::TestCase
  setup do
    @section_c6 = section_c6s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_c6s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_c6" do
    assert_difference('SectionC6.count') do
      post :create, section_c6: @section_c6.attributes
    end

    assert_redirected_to section_c6_path(assigns(:section_c6))
  end

  test "should show section_c6" do
    get :show, id: @section_c6.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_c6.to_param
    assert_response :success
  end

  test "should update section_c6" do
    put :update, id: @section_c6.to_param, section_c6: @section_c6.attributes
    assert_redirected_to section_c6_path(assigns(:section_c6))
  end

  test "should destroy section_c6" do
    assert_difference('SectionC6.count', -1) do
      delete :destroy, id: @section_c6.to_param
    end

    assert_redirected_to section_c6s_path
  end
end
