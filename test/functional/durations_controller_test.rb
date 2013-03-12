require 'test_helper'

class DurationsControllerTest < ActionController::TestCase
  setup do
    @duration = durations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:durations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create duration" do
    assert_difference('Duration.count') do
      post :create, duration: @duration.attributes
    end

    assert_redirected_to duration_path(assigns(:duration))
  end

  test "should show duration" do
    get :show, id: @duration.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @duration.to_param
    assert_response :success
  end

  test "should update duration" do
    put :update, id: @duration.to_param, duration: @duration.attributes
    assert_redirected_to duration_path(assigns(:duration))
  end

  test "should destroy duration" do
    assert_difference('Duration.count', -1) do
      delete :destroy, id: @duration.to_param
    end

    assert_redirected_to durations_path
  end
end
