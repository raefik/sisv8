require 'test_helper'

class EmployabilitySkillsControllerTest < ActionController::TestCase
  setup do
    @employability_skill = employability_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employability_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employability_skill" do
    assert_difference('EmployabilitySkill.count') do
      post :create, employability_skill: @employability_skill.attributes
    end

    assert_redirected_to employability_skill_path(assigns(:employability_skill))
  end

  test "should show employability_skill" do
    get :show, id: @employability_skill.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employability_skill.to_param
    assert_response :success
  end

  test "should update employability_skill" do
    put :update, id: @employability_skill.to_param, employability_skill: @employability_skill.attributes
    assert_redirected_to employability_skill_path(assigns(:employability_skill))
  end

  test "should destroy employability_skill" do
    assert_difference('EmployabilitySkill.count', -1) do
      delete :destroy, id: @employability_skill.to_param
    end

    assert_redirected_to employability_skills_path
  end
end
