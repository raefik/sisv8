require 'test_helper'

class StudPrefLocationsControllerTest < ActionController::TestCase
  setup do
    @stud_pref_location = stud_pref_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stud_pref_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stud_pref_location" do
    assert_difference('StudPrefLocation.count') do
      post :create, stud_pref_location: @stud_pref_location.attributes
    end

    assert_redirected_to stud_pref_location_path(assigns(:stud_pref_location))
  end

  test "should show stud_pref_location" do
    get :show, id: @stud_pref_location.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stud_pref_location.to_param
    assert_response :success
  end

  test "should update stud_pref_location" do
    put :update, id: @stud_pref_location.to_param, stud_pref_location: @stud_pref_location.attributes
    assert_redirected_to stud_pref_location_path(assigns(:stud_pref_location))
  end

  test "should destroy stud_pref_location" do
    assert_difference('StudPrefLocation.count', -1) do
      delete :destroy, id: @stud_pref_location.to_param
    end

    assert_redirected_to stud_pref_locations_path
  end
end
