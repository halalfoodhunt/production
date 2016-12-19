require 'test_helper'

class QualifyingTypesControllerTest < ActionController::TestCase
  setup do
    @qualifying_type = qualifying_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualifying_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualifying_type" do
    assert_difference('QualifyingType.count') do
      post :create, qualifying_type: { name: @qualifying_type.name }
    end

    assert_redirected_to qualifying_type_path(assigns(:qualifying_type))
  end

  test "should show qualifying_type" do
    get :show, id: @qualifying_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualifying_type
    assert_response :success
  end

  test "should update qualifying_type" do
    patch :update, id: @qualifying_type, qualifying_type: { name: @qualifying_type.name }
    assert_redirected_to qualifying_type_path(assigns(:qualifying_type))
  end

  test "should destroy qualifying_type" do
    assert_difference('QualifyingType.count', -1) do
      delete :destroy, id: @qualifying_type
    end

    assert_redirected_to qualifying_types_path
  end
end
