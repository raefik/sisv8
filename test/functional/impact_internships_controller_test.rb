require 'test_helper'

class ImpactInternshipsControllerTest < ActionController::TestCase
  setup do
    @impact_internship = impact_internships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:impact_internships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create impact_internship" do
    assert_difference('ImpactInternship.count') do
      post :create, impact_internship: @impact_internship.attributes
    end

    assert_redirected_to impact_internship_path(assigns(:impact_internship))
  end

  test "should show impact_internship" do
    get :show, id: @impact_internship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @impact_internship.to_param
    assert_response :success
  end

  test "should update impact_internship" do
    put :update, id: @impact_internship.to_param, impact_internship: @impact_internship.attributes
    assert_redirected_to impact_internship_path(assigns(:impact_internship))
  end

  test "should destroy impact_internship" do
    assert_difference('ImpactInternship.count', -1) do
      delete :destroy, id: @impact_internship.to_param
    end

    assert_redirected_to impact_internships_path
  end
end
