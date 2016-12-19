require 'test_helper'

class LessonTypesControllerTest < ActionController::TestCase
  setup do
    @lesson_type = lesson_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lesson_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson_type" do
    assert_difference('LessonType.count') do
      post :create, lesson_type: { name: @lesson_type.name }
    end

    assert_redirected_to lesson_type_path(assigns(:lesson_type))
  end

  test "should show lesson_type" do
    get :show, id: @lesson_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson_type
    assert_response :success
  end

  test "should update lesson_type" do
    patch :update, id: @lesson_type, lesson_type: { name: @lesson_type.name }
    assert_redirected_to lesson_type_path(assigns(:lesson_type))
  end

  test "should destroy lesson_type" do
    assert_difference('LessonType.count', -1) do
      delete :destroy, id: @lesson_type
    end

    assert_redirected_to lesson_types_path
  end
end
