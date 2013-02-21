require 'test_helper'

class StudEdusControllerTest < ActionController::TestCase
  setup do
    @stud_edu = stud_edus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stud_edus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stud_edu" do
    assert_difference('StudEdu.count') do
      post :create, stud_edu: @stud_edu.attributes
    end

    assert_redirected_to stud_edu_path(assigns(:stud_edu))
  end

  test "should show stud_edu" do
    get :show, id: @stud_edu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stud_edu.to_param
    assert_response :success
  end

  test "should update stud_edu" do
    put :update, id: @stud_edu.to_param, stud_edu: @stud_edu.attributes
    assert_redirected_to stud_edu_path(assigns(:stud_edu))
  end

  test "should destroy stud_edu" do
    assert_difference('StudEdu.count', -1) do
      delete :destroy, id: @stud_edu.to_param
    end

    assert_redirected_to stud_edus_path
  end
end
