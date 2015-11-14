require 'test_helper'

class LecturerListsControllerTest < ActionController::TestCase
  setup do
    @lecturer_list = lecturer_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lecturer_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecturer_list" do
    assert_difference('LecturerList.count') do
      post :create, lecturer_list: @lecturer_list.attributes
    end

    assert_redirected_to lecturer_list_path(assigns(:lecturer_list))
  end

  test "should show lecturer_list" do
    get :show, id: @lecturer_list.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecturer_list.to_param
    assert_response :success
  end

  test "should update lecturer_list" do
    put :update, id: @lecturer_list.to_param, lecturer_list: @lecturer_list.attributes
    assert_redirected_to lecturer_list_path(assigns(:lecturer_list))
  end

  test "should destroy lecturer_list" do
    assert_difference('LecturerList.count', -1) do
      delete :destroy, id: @lecturer_list.to_param
    end

    assert_redirected_to lecturer_lists_path
  end
end
