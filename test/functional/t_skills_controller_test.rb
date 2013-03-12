require 'test_helper'

class TSkillsControllerTest < ActionController::TestCase
  setup do
    @t_skill = t_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_skill" do
    assert_difference('TSkill.count') do
      post :create, t_skill: @t_skill.attributes
    end

    assert_redirected_to t_skill_path(assigns(:t_skill))
  end

  test "should show t_skill" do
    get :show, id: @t_skill.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_skill.to_param
    assert_response :success
  end

  test "should update t_skill" do
    put :update, id: @t_skill.to_param, t_skill: @t_skill.attributes
    assert_redirected_to t_skill_path(assigns(:t_skill))
  end

  test "should destroy t_skill" do
    assert_difference('TSkill.count', -1) do
      delete :destroy, id: @t_skill.to_param
    end

    assert_redirected_to t_skills_path
  end
end
