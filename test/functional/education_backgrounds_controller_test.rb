require 'test_helper'

class EducationBackgroundsControllerTest < ActionController::TestCase
  setup do
    @education_background = education_backgrounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:education_backgrounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create education_background" do
    assert_difference('EducationBackground.count') do
      post :create, education_background: @education_background.attributes
    end

    assert_redirected_to education_background_path(assigns(:education_background))
  end

  test "should show education_background" do
    get :show, id: @education_background.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @education_background.to_param
    assert_response :success
  end

  test "should update education_background" do
    put :update, id: @education_background.to_param, education_background: @education_background.attributes
    assert_redirected_to education_background_path(assigns(:education_background))
  end

  test "should destroy education_background" do
    assert_difference('EducationBackground.count', -1) do
      delete :destroy, id: @education_background.to_param
    end

    assert_redirected_to education_backgrounds_path
  end
end
