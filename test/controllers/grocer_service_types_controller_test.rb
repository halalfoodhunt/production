require 'test_helper'

class GrocerServiceTypesControllerTest < ActionController::TestCase
  setup do
    @grocer_service_type = grocer_service_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grocer_service_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grocer_service_type" do
    assert_difference('GrocerServiceType.count') do
      post :create, grocer_service_type: { name: @grocer_service_type.name }
    end

    assert_redirected_to grocer_service_type_path(assigns(:grocer_service_type))
  end

  test "should show grocer_service_type" do
    get :show, id: @grocer_service_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grocer_service_type
    assert_response :success
  end

  test "should update grocer_service_type" do
    patch :update, id: @grocer_service_type, grocer_service_type: { name: @grocer_service_type.name }
    assert_redirected_to grocer_service_type_path(assigns(:grocer_service_type))
  end

  test "should destroy grocer_service_type" do
    assert_difference('GrocerServiceType.count', -1) do
      delete :destroy, id: @grocer_service_type
    end

    assert_redirected_to grocer_service_types_path
  end
end
