require 'test_helper'

class StudCustodiansControllerTest < ActionController::TestCase
  setup do
    @stud_custodian = stud_custodians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stud_custodians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stud_custodian" do
    assert_difference('StudCustodian.count') do
      post :create, stud_custodian: @stud_custodian.attributes
    end

    assert_redirected_to stud_custodian_path(assigns(:stud_custodian))
  end

  test "should show stud_custodian" do
    get :show, id: @stud_custodian.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stud_custodian.to_param
    assert_response :success
  end

  test "should update stud_custodian" do
    put :update, id: @stud_custodian.to_param, stud_custodian: @stud_custodian.attributes
    assert_redirected_to stud_custodian_path(assigns(:stud_custodian))
  end

  test "should destroy stud_custodian" do
    assert_difference('StudCustodian.count', -1) do
      delete :destroy, id: @stud_custodian.to_param
    end

    assert_redirected_to stud_custodians_path
  end
end
