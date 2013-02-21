require 'test_helper'

class SectionC7sControllerTest < ActionController::TestCase
  setup do
    @section_c7 = section_c7s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_c7s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_c7" do
    assert_difference('SectionC7.count') do
      post :create, section_c7: @section_c7.attributes
    end

    assert_redirected_to section_c7_path(assigns(:section_c7))
  end

  test "should show section_c7" do
    get :show, id: @section_c7.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_c7.to_param
    assert_response :success
  end

  test "should update section_c7" do
    put :update, id: @section_c7.to_param, section_c7: @section_c7.attributes
    assert_redirected_to section_c7_path(assigns(:section_c7))
  end

  test "should destroy section_c7" do
    assert_difference('SectionC7.count', -1) do
      delete :destroy, id: @section_c7.to_param
    end

    assert_redirected_to section_c7s_path
  end
end
