require 'test_helper'

class MarkahStudentsControllerTest < ActionController::TestCase
  setup do
    @markah_student = markah_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:markah_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create markah_student" do
    assert_difference('MarkahStudent.count') do
      post :create, markah_student: @markah_student.attributes
    end

    assert_redirected_to markah_student_path(assigns(:markah_student))
  end

  test "should show markah_student" do
    get :show, id: @markah_student.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @markah_student.to_param
    assert_response :success
  end

  test "should update markah_student" do
    put :update, id: @markah_student.to_param, markah_student: @markah_student.attributes
    assert_redirected_to markah_student_path(assigns(:markah_student))
  end

  test "should destroy markah_student" do
    assert_difference('MarkahStudent.count', -1) do
      delete :destroy, id: @markah_student.to_param
    end

    assert_redirected_to markah_students_path
  end
end
