require 'test_helper'

class VerifyingTypesControllerTest < ActionController::TestCase
  setup do
    @verifying_type = verifying_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:verifying_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create verifying_type" do
    assert_difference('VerifyingType.count') do
      post :create, verifying_type: { name: @verifying_type.name }
    end

    assert_redirected_to verifying_type_path(assigns(:verifying_type))
  end

  test "should show verifying_type" do
    get :show, id: @verifying_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @verifying_type
    assert_response :success
  end

  test "should update verifying_type" do
    patch :update, id: @verifying_type, verifying_type: { name: @verifying_type.name }
    assert_redirected_to verifying_type_path(assigns(:verifying_type))
  end

  test "should destroy verifying_type" do
    assert_difference('VerifyingType.count', -1) do
      delete :destroy, id: @verifying_type
    end

    assert_redirected_to verifying_types_path
  end
end
