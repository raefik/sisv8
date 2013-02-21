require 'test_helper'

class StuEdusControllerTest < ActionController::TestCase
  setup do
    @stu_edu = stu_edus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stu_edus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stu_edu" do
    assert_difference('StuEdu.count') do
      post :create, stu_edu: @stu_edu.attributes
    end

    assert_redirected_to stu_edu_path(assigns(:stu_edu))
  end

  test "should show stu_edu" do
    get :show, id: @stu_edu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stu_edu.to_param
    assert_response :success
  end

  test "should update stu_edu" do
    put :update, id: @stu_edu.to_param, stu_edu: @stu_edu.attributes
    assert_redirected_to stu_edu_path(assigns(:stu_edu))
  end

  test "should destroy stu_edu" do
    assert_difference('StuEdu.count', -1) do
      delete :destroy, id: @stu_edu.to_param
    end

    assert_redirected_to stu_edus_path
  end
end
