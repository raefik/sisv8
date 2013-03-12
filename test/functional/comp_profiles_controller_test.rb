require 'test_helper'

class CompProfilesControllerTest < ActionController::TestCase
  setup do
    @comp_profile = comp_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comp_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comp_profile" do
    assert_difference('CompProfile.count') do
      post :create, comp_profile: @comp_profile.attributes
    end

    assert_redirected_to comp_profile_path(assigns(:comp_profile))
  end

  test "should show comp_profile" do
    get :show, id: @comp_profile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comp_profile.to_param
    assert_response :success
  end

  test "should update comp_profile" do
    put :update, id: @comp_profile.to_param, comp_profile: @comp_profile.attributes
    assert_redirected_to comp_profile_path(assigns(:comp_profile))
  end

  test "should destroy comp_profile" do
    assert_difference('CompProfile.count', -1) do
      delete :destroy, id: @comp_profile.to_param
    end

    assert_redirected_to comp_profiles_path
  end
end
