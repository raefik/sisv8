require 'test_helper'

class GredsControllerTest < ActionController::TestCase
  setup do
    @gred = greds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:greds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gred" do
    assert_difference('Gred.count') do
      post :create, gred: @gred.attributes
    end

    assert_redirected_to gred_path(assigns(:gred))
  end

  test "should show gred" do
    get :show, id: @gred.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gred.to_param
    assert_response :success
  end

  test "should update gred" do
    put :update, id: @gred.to_param, gred: @gred.attributes
    assert_redirected_to gred_path(assigns(:gred))
  end

  test "should destroy gred" do
    assert_difference('Gred.count', -1) do
      delete :destroy, id: @gred.to_param
    end

    assert_redirected_to greds_path
  end
end
