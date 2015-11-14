require 'test_helper'

class CodeProgramsControllerTest < ActionController::TestCase
  setup do
    @code_program = code_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_program" do
    assert_difference('CodeProgram.count') do
      post :create, code_program: @code_program.attributes
    end

    assert_redirected_to code_program_path(assigns(:code_program))
  end

  test "should show code_program" do
    get :show, id: @code_program.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_program.to_param
    assert_response :success
  end

  test "should update code_program" do
    put :update, id: @code_program.to_param, code_program: @code_program.attributes
    assert_redirected_to code_program_path(assigns(:code_program))
  end

  test "should destroy code_program" do
    assert_difference('CodeProgram.count', -1) do
      delete :destroy, id: @code_program.to_param
    end

    assert_redirected_to code_programs_path
  end
end
