require 'test_helper'

class SectionCsControllerTest < ActionController::TestCase
  setup do
    @section_c = section_cs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_cs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_c" do
    assert_difference('SectionC.count') do
      post :create, section_c: @section_c.attributes
    end

    assert_redirected_to section_c_path(assigns(:section_c))
  end

  test "should show section_c" do
    get :show, id: @section_c.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_c.to_param
    assert_response :success
  end

  test "should update section_c" do
    put :update, id: @section_c.to_param, section_c: @section_c.attributes
    assert_redirected_to section_c_path(assigns(:section_c))
  end

  test "should destroy section_c" do
    assert_difference('SectionC.count', -1) do
      delete :destroy, id: @section_c.to_param
    end

    assert_redirected_to section_cs_path
  end
end
