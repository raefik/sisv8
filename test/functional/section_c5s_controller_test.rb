require 'test_helper'

class SectionC5sControllerTest < ActionController::TestCase
  setup do
    @section_c5 = section_c5s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_c5s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_c5" do
    assert_difference('SectionC5.count') do
      post :create, section_c5: @section_c5.attributes
    end

    assert_redirected_to section_c5_path(assigns(:section_c5))
  end

  test "should show section_c5" do
    get :show, id: @section_c5.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_c5.to_param
    assert_response :success
  end

  test "should update section_c5" do
    put :update, id: @section_c5.to_param, section_c5: @section_c5.attributes
    assert_redirected_to section_c5_path(assigns(:section_c5))
  end

  test "should destroy section_c5" do
    assert_difference('SectionC5.count', -1) do
      delete :destroy, id: @section_c5.to_param
    end

    assert_redirected_to section_c5s_path
  end
end
