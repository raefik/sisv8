require 'test_helper'

class StudSkillsControllerTest < ActionController::TestCase
  setup do
    @stud_skill = stud_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stud_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stud_skill" do
    assert_difference('StudSkill.count') do
      post :create, stud_skill: @stud_skill.attributes
    end

    assert_redirected_to stud_skill_path(assigns(:stud_skill))
  end

  test "should show stud_skill" do
    get :show, id: @stud_skill.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stud_skill.to_param
    assert_response :success
  end

  test "should update stud_skill" do
    put :update, id: @stud_skill.to_param, stud_skill: @stud_skill.attributes
    assert_redirected_to stud_skill_path(assigns(:stud_skill))
  end

  test "should destroy stud_skill" do
    assert_difference('StudSkill.count', -1) do
      delete :destroy, id: @stud_skill.to_param
    end

    assert_redirected_to stud_skills_path
  end
end
