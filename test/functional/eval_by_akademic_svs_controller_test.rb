require 'test_helper'

class EvalByAkademicSvsControllerTest < ActionController::TestCase
  setup do
    @eval_by_akademic_sv = eval_by_akademic_svs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eval_by_akademic_svs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eval_by_akademic_sv" do
    assert_difference('EvalByAkademicSv.count') do
      post :create, eval_by_akademic_sv: @eval_by_akademic_sv.attributes
    end

    assert_redirected_to eval_by_akademic_sv_path(assigns(:eval_by_akademic_sv))
  end

  test "should show eval_by_akademic_sv" do
    get :show, id: @eval_by_akademic_sv.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eval_by_akademic_sv.to_param
    assert_response :success
  end

  test "should update eval_by_akademic_sv" do
    put :update, id: @eval_by_akademic_sv.to_param, eval_by_akademic_sv: @eval_by_akademic_sv.attributes
    assert_redirected_to eval_by_akademic_sv_path(assigns(:eval_by_akademic_sv))
  end

  test "should destroy eval_by_akademic_sv" do
    assert_difference('EvalByAkademicSv.count', -1) do
      delete :destroy, id: @eval_by_akademic_sv.to_param
    end

    assert_redirected_to eval_by_akademic_svs_path
  end
end
