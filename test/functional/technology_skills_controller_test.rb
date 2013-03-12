require 'test_helper'

class TechnologySkillsControllerTest < ActionController::TestCase
  setup do
    @technology_skill = technology_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technology_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technology_skill" do
    assert_difference('TechnologySkill.count') do
      post :create, technology_skill: @technology_skill.attributes
    end

    assert_redirected_to technology_skill_path(assigns(:technology_skill))
  end

  test "should show technology_skill" do
    get :show, id: @technology_skill.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @technology_skill.to_param
    assert_response :success
  end

  test "should update technology_skill" do
    put :update, id: @technology_skill.to_param, technology_skill: @technology_skill.attributes
    assert_redirected_to technology_skill_path(assigns(:technology_skill))
  end

  test "should destroy technology_skill" do
    assert_difference('TechnologySkill.count', -1) do
      delete :destroy, id: @technology_skill.to_param
    end

    assert_redirected_to technology_skills_path
  end
end
