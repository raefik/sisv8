require 'test_helper'

class AgreeLevelsControllerTest < ActionController::TestCase
  setup do
    @agree_level = agree_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agree_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agree_level" do
    assert_difference('AgreeLevel.count') do
      post :create, agree_level: @agree_level.attributes
    end

    assert_redirected_to agree_level_path(assigns(:agree_level))
  end

  test "should show agree_level" do
    get :show, id: @agree_level.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agree_level.to_param
    assert_response :success
  end

  test "should update agree_level" do
    put :update, id: @agree_level.to_param, agree_level: @agree_level.attributes
    assert_redirected_to agree_level_path(assigns(:agree_level))
  end

  test "should destroy agree_level" do
    assert_difference('AgreeLevel.count', -1) do
      delete :destroy, id: @agree_level.to_param
    end

    assert_redirected_to agree_levels_path
  end
end
