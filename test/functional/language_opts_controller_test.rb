require 'test_helper'

class LanguageOptsControllerTest < ActionController::TestCase
  setup do
    @language_opt = language_opts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:language_opts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create language_opt" do
    assert_difference('LanguageOpt.count') do
      post :create, language_opt: @language_opt.attributes
    end

    assert_redirected_to language_opt_path(assigns(:language_opt))
  end

  test "should show language_opt" do
    get :show, id: @language_opt.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @language_opt.to_param
    assert_response :success
  end

  test "should update language_opt" do
    put :update, id: @language_opt.to_param, language_opt: @language_opt.attributes
    assert_redirected_to language_opt_path(assigns(:language_opt))
  end

  test "should destroy language_opt" do
    assert_difference('LanguageOpt.count', -1) do
      delete :destroy, id: @language_opt.to_param
    end

    assert_redirected_to language_opts_path
  end
end
