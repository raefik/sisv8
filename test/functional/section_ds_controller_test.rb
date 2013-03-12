require 'test_helper'

class SectionDsControllerTest < ActionController::TestCase
  setup do
    @section_d = section_ds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_ds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_d" do
    assert_difference('SectionD.count') do
      post :create, section_d: @section_d.attributes
    end

    assert_redirected_to section_d_path(assigns(:section_d))
  end

  test "should show section_d" do
    get :show, id: @section_d.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_d.to_param
    assert_response :success
  end

  test "should update section_d" do
    put :update, id: @section_d.to_param, section_d: @section_d.attributes
    assert_redirected_to section_d_path(assigns(:section_d))
  end

  test "should destroy section_d" do
    assert_difference('SectionD.count', -1) do
      delete :destroy, id: @section_d.to_param
    end

    assert_redirected_to section_ds_path
  end
end
