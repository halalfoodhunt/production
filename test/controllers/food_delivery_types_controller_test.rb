require 'test_helper'

class FoodDeliveryTypesControllerTest < ActionController::TestCase
  setup do
    @food_delivery_type = food_delivery_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_delivery_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_delivery_type" do
    assert_difference('FoodDeliveryType.count') do
      post :create, food_delivery_type: { name: @food_delivery_type.name }
    end

    assert_redirected_to food_delivery_type_path(assigns(:food_delivery_type))
  end

  test "should show food_delivery_type" do
    get :show, id: @food_delivery_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_delivery_type
    assert_response :success
  end

  test "should update food_delivery_type" do
    patch :update, id: @food_delivery_type, food_delivery_type: { name: @food_delivery_type.name }
    assert_redirected_to food_delivery_type_path(assigns(:food_delivery_type))
  end

  test "should destroy food_delivery_type" do
    assert_difference('FoodDeliveryType.count', -1) do
      delete :destroy, id: @food_delivery_type
    end

    assert_redirected_to food_delivery_types_path
  end
end
