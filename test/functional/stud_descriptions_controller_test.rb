require 'test_helper'

class StudDescriptionsControllerTest < ActionController::TestCase
  setup do
    @stud_description = stud_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stud_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stud_description" do
    assert_difference('StudDescription.count') do
      post :create, stud_description: @stud_description.attributes
    end

    assert_redirected_to stud_description_path(assigns(:stud_description))
  end

  test "should show stud_description" do
    get :show, id: @stud_description.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stud_description.to_param
    assert_response :success
  end

  test "should update stud_description" do
    put :update, id: @stud_description.to_param, stud_description: @stud_description.attributes
    assert_redirected_to stud_description_path(assigns(:stud_description))
  end

  test "should destroy stud_description" do
    assert_difference('StudDescription.count', -1) do
      delete :destroy, id: @stud_description.to_param
    end

    assert_redirected_to stud_descriptions_path
  end
end
