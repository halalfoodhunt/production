require 'test_helper'

class SuppliersControllerTest < ActionController::TestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier" do
    assert_difference('Supplier.count') do
      post :create, supplier: { business_name: @supplier.business_name, delivery_url: @supplier.delivery_url, draft: @supplier.draft, expiry_date: @supplier.expiry_date, facebook: @supplier.facebook, friends_terms: @supplier.friends_terms, general_contact_number: @supplier.general_contact_number, general_email: @supplier.general_email, instagram: @supplier.instagram, merchant_id: @supplier.merchant_id, operating_address: @supplier.operating_address, preferred_contact: @supplier.preferred_contact, preferred_order_method: @supplier.preferred_order_method, question_1: @supplier.question_1, question_2: @supplier.question_2, verified: @supplier.verified, website: @supplier.website }
    end

    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should show supplier" do
    get :show, id: @supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier
    assert_response :success
  end

  test "should update supplier" do
    patch :update, id: @supplier, supplier: { business_name: @supplier.business_name, delivery_url: @supplier.delivery_url, draft: @supplier.draft, expiry_date: @supplier.expiry_date, facebook: @supplier.facebook, friends_terms: @supplier.friends_terms, general_contact_number: @supplier.general_contact_number, general_email: @supplier.general_email, instagram: @supplier.instagram, merchant_id: @supplier.merchant_id, operating_address: @supplier.operating_address, preferred_contact: @supplier.preferred_contact, preferred_order_method: @supplier.preferred_order_method, question_1: @supplier.question_1, question_2: @supplier.question_2, verified: @supplier.verified, website: @supplier.website }
    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should destroy supplier" do
    assert_difference('Supplier.count', -1) do
      delete :destroy, id: @supplier
    end

    assert_redirected_to suppliers_path
  end
end
