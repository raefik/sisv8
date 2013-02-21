require 'test_helper'

class LearningSkillsControllerTest < ActionController::TestCase
  setup do
    @learning_skill = learning_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:learning_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create learning_skill" do
    assert_difference('LearningSkill.count') do
      post :create, learning_skill: @learning_skill.attributes
    end

    assert_redirected_to learning_skill_path(assigns(:learning_skill))
  end

  test "should show learning_skill" do
    get :show, id: @learning_skill.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @learning_skill.to_param
    assert_response :success
  end

  test "should update learning_skill" do
    put :update, id: @learning_skill.to_param, learning_skill: @learning_skill.attributes
    assert_redirected_to learning_skill_path(assigns(:learning_skill))
  end

  test "should destroy learning_skill" do
    assert_difference('LearningSkill.count', -1) do
      delete :destroy, id: @learning_skill.to_param
    end

    assert_redirected_to learning_skills_path
  end
end
