require 'test_helper'

class PAttributesControllerTest < ActionController::TestCase
  setup do
    @p_attribute = p_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_attribute" do
    assert_difference('PAttribute.count') do
      post :create, p_attribute: @p_attribute.attributes
    end

    assert_redirected_to p_attribute_path(assigns(:p_attribute))
  end

  test "should show p_attribute" do
    get :show, id: @p_attribute.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_attribute.to_param
    assert_response :success
  end

  test "should update p_attribute" do
    put :update, id: @p_attribute.to_param, p_attribute: @p_attribute.attributes
    assert_redirected_to p_attribute_path(assigns(:p_attribute))
  end

  test "should destroy p_attribute" do
    assert_difference('PAttribute.count', -1) do
      delete :destroy, id: @p_attribute.to_param
    end

    assert_redirected_to p_attributes_path
  end
end
