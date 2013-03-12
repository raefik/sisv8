require 'test_helper'

class CawangansControllerTest < ActionController::TestCase
  setup do
    @cawangan = cawangans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cawangans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cawangan" do
    assert_difference('Cawangan.count') do
      post :create, cawangan: @cawangan.attributes
    end

    assert_redirected_to cawangan_path(assigns(:cawangan))
  end

  test "should show cawangan" do
    get :show, id: @cawangan.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cawangan.to_param
    assert_response :success
  end

  test "should update cawangan" do
    put :update, id: @cawangan.to_param, cawangan: @cawangan.attributes
    assert_redirected_to cawangan_path(assigns(:cawangan))
  end

  test "should destroy cawangan" do
    assert_difference('Cawangan.count', -1) do
      delete :destroy, id: @cawangan.to_param
    end

    assert_redirected_to cawangans_path
  end
end
