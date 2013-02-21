require 'test_helper'

class SectionC4sControllerTest < ActionController::TestCase
  setup do
    @section_c4 = section_c4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_c4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_c4" do
    assert_difference('SectionC4.count') do
      post :create, section_c4: @section_c4.attributes
    end

    assert_redirected_to section_c4_path(assigns(:section_c4))
  end

  test "should show section_c4" do
    get :show, id: @section_c4.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_c4.to_param
    assert_response :success
  end

  test "should update section_c4" do
    put :update, id: @section_c4.to_param, section_c4: @section_c4.attributes
    assert_redirected_to section_c4_path(assigns(:section_c4))
  end

  test "should destroy section_c4" do
    assert_difference('SectionC4.count', -1) do
      delete :destroy, id: @section_c4.to_param
    end

    assert_redirected_to section_c4s_path
  end
end
