require 'test_helper'

class GelaransControllerTest < ActionController::TestCase
  setup do
    @gelaran = gelarans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gelarans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gelaran" do
    assert_difference('Gelaran.count') do
      post :create, gelaran: @gelaran.attributes
    end

    assert_redirected_to gelaran_path(assigns(:gelaran))
  end

  test "should show gelaran" do
    get :show, id: @gelaran.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gelaran.to_param
    assert_response :success
  end

  test "should update gelaran" do
    put :update, id: @gelaran.to_param, gelaran: @gelaran.attributes
    assert_redirected_to gelaran_path(assigns(:gelaran))
  end

  test "should destroy gelaran" do
    assert_difference('Gelaran.count', -1) do
      delete :destroy, id: @gelaran.to_param
    end

    assert_redirected_to gelarans_path
  end
end
