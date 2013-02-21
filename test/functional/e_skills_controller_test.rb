require 'test_helper'

class ESkillsControllerTest < ActionController::TestCase
  setup do
    @e_skill = e_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:e_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create e_skill" do
    assert_difference('ESkill.count') do
      post :create, e_skill: @e_skill.attributes
    end

    assert_redirected_to e_skill_path(assigns(:e_skill))
  end

  test "should show e_skill" do
    get :show, id: @e_skill.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @e_skill.to_param
    assert_response :success
  end

  test "should update e_skill" do
    put :update, id: @e_skill.to_param, e_skill: @e_skill.attributes
    assert_redirected_to e_skill_path(assigns(:e_skill))
  end

  test "should destroy e_skill" do
    assert_difference('ESkill.count', -1) do
      delete :destroy, id: @e_skill.to_param
    end

    assert_redirected_to e_skills_path
  end
end
