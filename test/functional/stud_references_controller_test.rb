require 'test_helper'

class StudReferencesControllerTest < ActionController::TestCase
  setup do
    @stud_reference = stud_references(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stud_references)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stud_reference" do
    assert_difference('StudReference.count') do
      post :create, stud_reference: @stud_reference.attributes
    end

    assert_redirected_to stud_reference_path(assigns(:stud_reference))
  end

  test "should show stud_reference" do
    get :show, id: @stud_reference.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stud_reference.to_param
    assert_response :success
  end

  test "should update stud_reference" do
    put :update, id: @stud_reference.to_param, stud_reference: @stud_reference.attributes
    assert_redirected_to stud_reference_path(assigns(:stud_reference))
  end

  test "should destroy stud_reference" do
    assert_difference('StudReference.count', -1) do
      delete :destroy, id: @stud_reference.to_param
    end

    assert_redirected_to stud_references_path
  end
end
