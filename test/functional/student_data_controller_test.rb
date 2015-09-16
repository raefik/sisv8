require 'test_helper'

class StudentDataControllerTest < ActionController::TestCase
  setup do
    @student_datum = student_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_datum" do
    assert_difference('StudentDatum.count') do
      post :create, student_datum: @student_datum.attributes
    end

    assert_redirected_to student_datum_path(assigns(:student_datum))
  end

  test "should show student_datum" do
    get :show, id: @student_datum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_datum.to_param
    assert_response :success
  end

  test "should update student_datum" do
    put :update, id: @student_datum.to_param, student_datum: @student_datum.attributes
    assert_redirected_to student_datum_path(assigns(:student_datum))
  end

  test "should destroy student_datum" do
    assert_difference('StudentDatum.count', -1) do
      delete :destroy, id: @student_datum.to_param
    end

    assert_redirected_to student_data_path
  end
end
