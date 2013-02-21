require 'test_helper'

class DateVisitsControllerTest < ActionController::TestCase
  setup do
    @date_visit = date_visits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:date_visits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create date_visit" do
    assert_difference('DateVisit.count') do
      post :create, date_visit: @date_visit.attributes
    end

    assert_redirected_to date_visit_path(assigns(:date_visit))
  end

  test "should show date_visit" do
    get :show, id: @date_visit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @date_visit.to_param
    assert_response :success
  end

  test "should update date_visit" do
    put :update, id: @date_visit.to_param, date_visit: @date_visit.attributes
    assert_redirected_to date_visit_path(assigns(:date_visit))
  end

  test "should destroy date_visit" do
    assert_difference('DateVisit.count', -1) do
      delete :destroy, id: @date_visit.to_param
    end

    assert_redirected_to date_visits_path
  end
end
