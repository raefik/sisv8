require 'test_helper'

class SectionC1sControllerTest < ActionController::TestCase
  setup do
    @section_c1 = section_c1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_c1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_c1" do
    assert_difference('SectionC1.count') do
      post :create, section_c1: @section_c1.attributes
    end

    assert_redirected_to section_c1_path(assigns(:section_c1))
  end

  test "should show section_c1" do
    get :show, id: @section_c1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_c1.to_param
    assert_response :success
  end

  test "should update section_c1" do
    put :update, id: @section_c1.to_param, section_c1: @section_c1.attributes
    assert_redirected_to section_c1_path(assigns(:section_c1))
  end

  test "should destroy section_c1" do
    assert_difference('SectionC1.count', -1) do
      delete :destroy, id: @section_c1.to_param
    end

    assert_redirected_to section_c1s_path
  end
end
