require 'test_helper'

class GrocerTypesControllerTest < ActionController::TestCase
  setup do
    @grocer_type = grocer_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grocer_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grocer_type" do
    assert_difference('GrocerType.count') do
      post :create, grocer_type: { name: @grocer_type.name }
    end

    assert_redirected_to grocer_type_path(assigns(:grocer_type))
  end

  test "should show grocer_type" do
    get :show, id: @grocer_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grocer_type
    assert_response :success
  end

  test "should update grocer_type" do
    patch :update, id: @grocer_type, grocer_type: { name: @grocer_type.name }
    assert_redirected_to grocer_type_path(assigns(:grocer_type))
  end

  test "should destroy grocer_type" do
    assert_difference('GrocerType.count', -1) do
      delete :destroy, id: @grocer_type
    end

    assert_redirected_to grocer_types_path
  end
end
