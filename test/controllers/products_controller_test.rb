require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { business_name: @product.business_name, delivery_url: @product.delivery_url, draft: @product.draft, expiry_date: @product.expiry_date, facebook: @product.facebook, friends_terms: @product.friends_terms, general_contact_number: @product.general_contact_number, general_email: @product.general_email, instagram: @product.instagram, merchant_id: @product.merchant_id, operating_address: @product.operating_address, preferred_contact: @product.preferred_contact, preferred_order_method: @product.preferred_order_method, question_1: @product.question_1, question_2: @product.question_2, verified: @product.verified, website: @product.website }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { business_name: @product.business_name, delivery_url: @product.delivery_url, draft: @product.draft, expiry_date: @product.expiry_date, facebook: @product.facebook, friends_terms: @product.friends_terms, general_contact_number: @product.general_contact_number, general_email: @product.general_email, instagram: @product.instagram, merchant_id: @product.merchant_id, operating_address: @product.operating_address, preferred_contact: @product.preferred_contact, preferred_order_method: @product.preferred_order_method, question_1: @product.question_1, question_2: @product.question_2, verified: @product.verified, website: @product.website }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
