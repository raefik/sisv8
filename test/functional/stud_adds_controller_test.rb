require 'test_helper'

class StudAddsControllerTest < ActionController::TestCase
  setup do
    @stud_add = stud_adds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stud_adds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stud_add" do
    assert_difference('StudAdd.count') do
      post :create, stud_add: @stud_add.attributes
    end

    assert_redirected_to stud_add_path(assigns(:stud_add))
  end

  test "should show stud_add" do
    get :show, id: @stud_add.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stud_add.to_param
    assert_response :success
  end

  test "should update stud_add" do
    put :update, id: @stud_add.to_param, stud_add: @stud_add.attributes
    assert_redirected_to stud_add_path(assigns(:stud_add))
  end

  test "should destroy stud_add" do
    assert_difference('StudAdd.count', -1) do
      delete :destroy, id: @stud_add.to_param
    end

    assert_redirected_to stud_adds_path
  end
end
