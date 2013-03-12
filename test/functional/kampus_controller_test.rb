require 'test_helper'

class KampusControllerTest < ActionController::TestCase
  setup do
    @kampu = kampus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kampus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kampu" do
    assert_difference('Kampu.count') do
      post :create, kampu: @kampu.attributes
    end

    assert_redirected_to kampu_path(assigns(:kampu))
  end

  test "should show kampu" do
    get :show, id: @kampu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kampu.to_param
    assert_response :success
  end

  test "should update kampu" do
    put :update, id: @kampu.to_param, kampu: @kampu.attributes
    assert_redirected_to kampu_path(assigns(:kampu))
  end

  test "should destroy kampu" do
    assert_difference('Kampu.count', -1) do
      delete :destroy, id: @kampu.to_param
    end

    assert_redirected_to kampus_path
  end
end
