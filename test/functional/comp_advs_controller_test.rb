require 'test_helper'

class CompAdvsControllerTest < ActionController::TestCase
  setup do
    @comp_adv = comp_advs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comp_advs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comp_adv" do
    assert_difference('CompAdv.count') do
      post :create, comp_adv: @comp_adv.attributes
    end

    assert_redirected_to comp_adv_path(assigns(:comp_adv))
  end

  test "should show comp_adv" do
    get :show, id: @comp_adv.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comp_adv.to_param
    assert_response :success
  end

  test "should update comp_adv" do
    put :update, id: @comp_adv.to_param, comp_adv: @comp_adv.attributes
    assert_redirected_to comp_adv_path(assigns(:comp_adv))
  end

  test "should destroy comp_adv" do
    assert_difference('CompAdv.count', -1) do
      delete :destroy, id: @comp_adv.to_param
    end

    assert_redirected_to comp_advs_path
  end
end
