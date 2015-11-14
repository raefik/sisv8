require 'test_helper'

class SectionC3sControllerTest < ActionController::TestCase
  setup do
    @section_c3 = section_c3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_c3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_c3" do
    assert_difference('SectionC3.count') do
      post :create, section_c3: @section_c3.attributes
    end

    assert_redirected_to section_c3_path(assigns(:section_c3))
  end

  test "should show section_c3" do
    get :show, id: @section_c3.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_c3.to_param
    assert_response :success
  end

  test "should update section_c3" do
    put :update, id: @section_c3.to_param, section_c3: @section_c3.attributes
    assert_redirected_to section_c3_path(assigns(:section_c3))
  end

  test "should destroy section_c3" do
    assert_difference('SectionC3.count', -1) do
      delete :destroy, id: @section_c3.to_param
    end

    assert_redirected_to section_c3s_path
  end
end
