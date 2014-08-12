require 'test_helper'

class CSkillsControllerTest < ActionController::TestCase
  setup do
    @c_skill = c_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_skill" do
    assert_difference('CSkill.count') do
      post :create, c_skill: @c_skill.attributes
    end

    assert_redirected_to c_skill_path(assigns(:c_skill))
  end

  test "should show c_skill" do
    get :show, id: @c_skill.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_skill.to_param
    assert_response :success
  end

  test "should update c_skill" do
    put :update, id: @c_skill.to_param, c_skill: @c_skill.attributes
    assert_redirected_to c_skill_path(assigns(:c_skill))
  end

  test "should destroy c_skill" do
    assert_difference('CSkill.count', -1) do
      delete :destroy, id: @c_skill.to_param
    end

    assert_redirected_to c_skills_path
  end
end
