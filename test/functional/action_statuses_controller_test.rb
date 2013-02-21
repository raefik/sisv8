require 'test_helper'

class ActionStatusesControllerTest < ActionController::TestCase
  setup do
    @action_status = action_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_status" do
    assert_difference('ActionStatus.count') do
      post :create, action_status: @action_status.attributes
    end

    assert_redirected_to action_status_path(assigns(:action_status))
  end

  test "should show action_status" do
    get :show, id: @action_status.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_status.to_param
    assert_response :success
  end

  test "should update action_status" do
    put :update, id: @action_status.to_param, action_status: @action_status.attributes
    assert_redirected_to action_status_path(assigns(:action_status))
  end

  test "should destroy action_status" do
    assert_difference('ActionStatus.count', -1) do
      delete :destroy, id: @action_status.to_param
    end

    assert_redirected_to action_statuses_path
  end
end
