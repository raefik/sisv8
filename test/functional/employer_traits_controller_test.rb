require 'test_helper'

class EmployerTraitsControllerTest < ActionController::TestCase
  setup do
    @employer_trait = employer_traits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employer_traits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employer_trait" do
    assert_difference('EmployerTrait.count') do
      post :create, employer_trait: @employer_trait.attributes
    end

    assert_redirected_to employer_trait_path(assigns(:employer_trait))
  end

  test "should show employer_trait" do
    get :show, id: @employer_trait.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employer_trait.to_param
    assert_response :success
  end

  test "should update employer_trait" do
    put :update, id: @employer_trait.to_param, employer_trait: @employer_trait.attributes
    assert_redirected_to employer_trait_path(assigns(:employer_trait))
  end

  test "should destroy employer_trait" do
    assert_difference('EmployerTrait.count', -1) do
      delete :destroy, id: @employer_trait.to_param
    end

    assert_redirected_to employer_traits_path
  end
end
