require 'test_helper'

class SemInternshipsControllerTest < ActionController::TestCase
  setup do
    @sem_internship = sem_internships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sem_internships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sem_internship" do
    assert_difference('SemInternship.count') do
      post :create, sem_internship: @sem_internship.attributes
    end

    assert_redirected_to sem_internship_path(assigns(:sem_internship))
  end

  test "should show sem_internship" do
    get :show, id: @sem_internship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sem_internship.to_param
    assert_response :success
  end

  test "should update sem_internship" do
    put :update, id: @sem_internship.to_param, sem_internship: @sem_internship.attributes
    assert_redirected_to sem_internship_path(assigns(:sem_internship))
  end

  test "should destroy sem_internship" do
    assert_difference('SemInternship.count', -1) do
      delete :destroy, id: @sem_internship.to_param
    end

    assert_redirected_to sem_internships_path
  end
end
