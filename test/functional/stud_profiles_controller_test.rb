require 'test_helper'

class StudProfilesControllerTest < ActionController::TestCase
  setup do
    @stud_profile = stud_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stud_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stud_profile" do
    assert_difference('StudProfile.count') do
      post :create, stud_profile: @stud_profile.attributes
    end

    assert_redirected_to stud_profile_path(assigns(:stud_profile))
  end

  test "should show stud_profile" do
    get :show, id: @stud_profile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stud_profile.to_param
    assert_response :success
  end

  test "should update stud_profile" do
    put :update, id: @stud_profile.to_param, stud_profile: @stud_profile.attributes
    assert_redirected_to stud_profile_path(assigns(:stud_profile))
  end

  test "should destroy stud_profile" do
    assert_difference('StudProfile.count', -1) do
      delete :destroy, id: @stud_profile.to_param
    end

    assert_redirected_to stud_profiles_path
  end
end
