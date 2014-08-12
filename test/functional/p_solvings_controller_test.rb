require 'test_helper'

class PSolvingsControllerTest < ActionController::TestCase
  setup do
    @p_solving = p_solvings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_solvings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_solving" do
    assert_difference('PSolving.count') do
      post :create, p_solving: @p_solving.attributes
    end

    assert_redirected_to p_solving_path(assigns(:p_solving))
  end

  test "should show p_solving" do
    get :show, id: @p_solving.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_solving.to_param
    assert_response :success
  end

  test "should update p_solving" do
    put :update, id: @p_solving.to_param, p_solving: @p_solving.attributes
    assert_redirected_to p_solving_path(assigns(:p_solving))
  end

  test "should destroy p_solving" do
    assert_difference('PSolving.count', -1) do
      delete :destroy, id: @p_solving.to_param
    end

    assert_redirected_to p_solvings_path
  end
end
