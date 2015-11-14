require 'test_helper'

class StudentListsControllerTest < ActionController::TestCase
  setup do
    @student_list = student_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_list" do
    assert_difference('StudentList.count') do
      post :create, student_list: @student_list.attributes
    end

    assert_redirected_to student_list_path(assigns(:student_list))
  end

  test "should show student_list" do
    get :show, id: @student_list.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_list.to_param
    assert_response :success
  end

  test "should update student_list" do
    put :update, id: @student_list.to_param, student_list: @student_list.attributes
    assert_redirected_to student_list_path(assigns(:student_list))
  end

  test "should destroy student_list" do
    assert_difference('StudentList.count', -1) do
      delete :destroy, id: @student_list.to_param
    end

    assert_redirected_to student_lists_path
  end
end
