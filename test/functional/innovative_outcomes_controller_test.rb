require 'test_helper'

class InnovativeOutcomesControllerTest < ActionController::TestCase
  setup do
    @innovative_outcome = innovative_outcomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:innovative_outcomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create innovative_outcome" do
    assert_difference('InnovativeOutcome.count') do
      post :create, innovative_outcome: @innovative_outcome.attributes
    end

    assert_redirected_to innovative_outcome_path(assigns(:innovative_outcome))
  end

  test "should show innovative_outcome" do
    get :show, id: @innovative_outcome.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @innovative_outcome.to_param
    assert_response :success
  end

  test "should update innovative_outcome" do
    put :update, id: @innovative_outcome.to_param, innovative_outcome: @innovative_outcome.attributes
    assert_redirected_to innovative_outcome_path(assigns(:innovative_outcome))
  end

  test "should destroy innovative_outcome" do
    assert_difference('InnovativeOutcome.count', -1) do
      delete :destroy, id: @innovative_outcome.to_param
    end

    assert_redirected_to innovative_outcomes_path
  end
end
