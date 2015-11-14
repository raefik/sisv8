require 'test_helper'

class EvalIndustrySvsControllerTest < ActionController::TestCase
  setup do
    @eval_industry_sv = eval_industry_svs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eval_industry_svs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eval_industry_sv" do
    assert_difference('EvalIndustrySv.count') do
      post :create, eval_industry_sv: @eval_industry_sv.attributes
    end

    assert_redirected_to eval_industry_sv_path(assigns(:eval_industry_sv))
  end

  test "should show eval_industry_sv" do
    get :show, id: @eval_industry_sv.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eval_industry_sv.to_param
    assert_response :success
  end

  test "should update eval_industry_sv" do
    put :update, id: @eval_industry_sv.to_param, eval_industry_sv: @eval_industry_sv.attributes
    assert_redirected_to eval_industry_sv_path(assigns(:eval_industry_sv))
  end

  test "should destroy eval_industry_sv" do
    assert_difference('EvalIndustrySv.count', -1) do
      delete :destroy, id: @eval_industry_sv.to_param
    end

    assert_redirected_to eval_industry_svs_path
  end
end
