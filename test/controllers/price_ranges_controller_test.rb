require 'test_helper'

class PriceRangesControllerTest < ActionController::TestCase
  setup do
    @price_range = price_ranges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:price_ranges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create price_range" do
    assert_difference('PriceRange.count') do
      post :create, price_range: { price: @price_range.price }
    end

    assert_redirected_to price_range_path(assigns(:price_range))
  end

  test "should show price_range" do
    get :show, id: @price_range
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @price_range
    assert_response :success
  end

  test "should update price_range" do
    patch :update, id: @price_range, price_range: { price: @price_range.price }
    assert_redirected_to price_range_path(assigns(:price_range))
  end

  test "should destroy price_range" do
    assert_difference('PriceRange.count', -1) do
      delete :destroy, id: @price_range
    end

    assert_redirected_to price_ranges_path
  end
end
