require 'test_helper'

class SectionBsControllerTest < ActionController::TestCase
  setup do
    @section_b = section_bs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_bs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_b" do
    assert_difference('SectionB.count') do
      post :create, section_b: @section_b.attributes
    end

    assert_redirected_to section_b_path(assigns(:section_b))
  end

  test "should show section_b" do
    get :show, id: @section_b.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_b.to_param
    assert_response :success
  end

  test "should update section_b" do
    put :update, id: @section_b.to_param, section_b: @section_b.attributes
    assert_redirected_to section_b_path(assigns(:section_b))
  end

  test "should destroy section_b" do
    assert_difference('SectionB.count', -1) do
      delete :destroy, id: @section_b.to_param
    end

    assert_redirected_to section_bs_path
  end
end
