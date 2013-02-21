require 'test_helper'

class SectionC2sControllerTest < ActionController::TestCase
  setup do
    @section_c2 = section_c2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_c2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_c2" do
    assert_difference('SectionC2.count') do
      post :create, section_c2: @section_c2.attributes
    end

    assert_redirected_to section_c2_path(assigns(:section_c2))
  end

  test "should show section_c2" do
    get :show, id: @section_c2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_c2.to_param
    assert_response :success
  end

  test "should update section_c2" do
    put :update, id: @section_c2.to_param, section_c2: @section_c2.attributes
    assert_redirected_to section_c2_path(assigns(:section_c2))
  end

  test "should destroy section_c2" do
    assert_difference('SectionC2.count', -1) do
      delete :destroy, id: @section_c2.to_param
    end

    assert_redirected_to section_c2s_path
  end
end
