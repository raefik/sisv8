require 'test_helper'

class WorkingExperiencesControllerTest < ActionController::TestCase
  setup do
    @working_experience = working_experiences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:working_experiences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create working_experience" do
    assert_difference('WorkingExperience.count') do
      post :create, working_experience: @working_experience.attributes
    end

    assert_redirected_to working_experience_path(assigns(:working_experience))
  end

  test "should show working_experience" do
    get :show, id: @working_experience.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @working_experience.to_param
    assert_response :success
  end

  test "should update working_experience" do
    put :update, id: @working_experience.to_param, working_experience: @working_experience.attributes
    assert_redirected_to working_experience_path(assigns(:working_experience))
  end

  test "should destroy working_experience" do
    assert_difference('WorkingExperience.count', -1) do
      delete :destroy, id: @working_experience.to_param
    end

    assert_redirected_to working_experiences_path
  end
end
