require 'test_helper'

class StudInternshipsControllerTest < ActionController::TestCase
  setup do
    @stud_internship = stud_internships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stud_internships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stud_internship" do
    assert_difference('StudInternship.count') do
      post :create, stud_internship: @stud_internship.attributes
    end

    assert_redirected_to stud_internship_path(assigns(:stud_internship))
  end

  test "should show stud_internship" do
    get :show, id: @stud_internship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stud_internship.to_param
    assert_response :success
  end

  test "should update stud_internship" do
    put :update, id: @stud_internship.to_param, stud_internship: @stud_internship.attributes
    assert_redirected_to stud_internship_path(assigns(:stud_internship))
  end

  test "should destroy stud_internship" do
    assert_difference('StudInternship.count', -1) do
      delete :destroy, id: @stud_internship.to_param
    end

    assert_redirected_to stud_internships_path
  end
end
