require 'test_helper'

class IntershipPeriodsControllerTest < ActionController::TestCase
  setup do
    @intership_period = intership_periods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intership_periods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intership_period" do
    assert_difference('IntershipPeriod.count') do
      post :create, intership_period: @intership_period.attributes
    end

    assert_redirected_to intership_period_path(assigns(:intership_period))
  end

  test "should show intership_period" do
    get :show, id: @intership_period.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intership_period.to_param
    assert_response :success
  end

  test "should update intership_period" do
    put :update, id: @intership_period.to_param, intership_period: @intership_period.attributes
    assert_redirected_to intership_period_path(assigns(:intership_period))
  end

  test "should destroy intership_period" do
    assert_difference('IntershipPeriod.count', -1) do
      delete :destroy, id: @intership_period.to_param
    end

    assert_redirected_to intership_periods_path
  end
end
