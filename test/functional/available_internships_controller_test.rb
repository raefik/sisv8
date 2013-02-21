require 'test_helper'

class AvailableInternshipsControllerTest < ActionController::TestCase
  setup do
    @available_internship = available_internships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:available_internships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create available_internship" do
    assert_difference('AvailableInternship.count') do
      post :create, available_internship: @available_internship.attributes
    end

    assert_redirected_to available_internship_path(assigns(:available_internship))
  end

  test "should show available_internship" do
    get :show, id: @available_internship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @available_internship.to_param
    assert_response :success
  end

  test "should update available_internship" do
    put :update, id: @available_internship.to_param, available_internship: @available_internship.attributes
    assert_redirected_to available_internship_path(assigns(:available_internship))
  end

  test "should destroy available_internship" do
    assert_difference('AvailableInternship.count', -1) do
      delete :destroy, id: @available_internship.to_param
    end

    assert_redirected_to available_internships_path
  end
end
