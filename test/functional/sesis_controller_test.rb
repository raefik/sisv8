require 'test_helper'

class SesisControllerTest < ActionController::TestCase
  setup do
    @sesi = sesis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sesis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sesi" do
    assert_difference('Sesi.count') do
      post :create, sesi: @sesi.attributes
    end

    assert_redirected_to sesi_path(assigns(:sesi))
  end

  test "should show sesi" do
    get :show, id: @sesi.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sesi.to_param
    assert_response :success
  end

  test "should update sesi" do
    put :update, id: @sesi.to_param, sesi: @sesi.attributes
    assert_redirected_to sesi_path(assigns(:sesi))
  end

  test "should destroy sesi" do
    assert_difference('Sesi.count', -1) do
      delete :destroy, id: @sesi.to_param
    end

    assert_redirected_to sesis_path
  end
end
