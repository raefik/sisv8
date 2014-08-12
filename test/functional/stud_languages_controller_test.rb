require 'test_helper'

class StudLanguagesControllerTest < ActionController::TestCase
  setup do
    @stud_language = stud_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stud_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stud_language" do
    assert_difference('StudLanguage.count') do
      post :create, stud_language: @stud_language.attributes
    end

    assert_redirected_to stud_language_path(assigns(:stud_language))
  end

  test "should show stud_language" do
    get :show, id: @stud_language.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stud_language.to_param
    assert_response :success
  end

  test "should update stud_language" do
    put :update, id: @stud_language.to_param, stud_language: @stud_language.attributes
    assert_redirected_to stud_language_path(assigns(:stud_language))
  end

  test "should destroy stud_language" do
    assert_difference('StudLanguage.count', -1) do
      delete :destroy, id: @stud_language.to_param
    end

    assert_redirected_to stud_languages_path
  end
end
