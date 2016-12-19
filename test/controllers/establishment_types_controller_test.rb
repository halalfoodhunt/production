require 'test_helper'

class EstablishmentTypesControllerTest < ActionController::TestCase
  setup do
    @establishment_type = establishment_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:establishment_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create establishment_type" do
    assert_difference('EstablishmentType.count') do
      post :create, establishment_type: { name: @establishment_type.name }
    end

    assert_redirected_to establishment_type_path(assigns(:establishment_type))
  end

  test "should show establishment_type" do
    get :show, id: @establishment_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @establishment_type
    assert_response :success
  end

  test "should update establishment_type" do
    patch :update, id: @establishment_type, establishment_type: { name: @establishment_type.name }
    assert_redirected_to establishment_type_path(assigns(:establishment_type))
  end

  test "should destroy establishment_type" do
    assert_difference('EstablishmentType.count', -1) do
      delete :destroy, id: @establishment_type
    end

    assert_redirected_to establishment_types_path
  end
end
