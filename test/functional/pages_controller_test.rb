require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get staff" do
    get :staff
    assert_response :success
  end

  test "should get student" do
    get :student
    assert_response :success
  end

  test "should get company" do
    get :company
    assert_response :success
  end

end
