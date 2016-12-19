require 'test_helper'

class EcommersControllerTest < ActionController::TestCase
  setup do
    @ecommer = ecommers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ecommers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ecommer" do
    assert_difference('Ecommer.count') do
      post :create, ecommer: { business_name: @ecommer.business_name, delivery_link: @ecommer.delivery_link, draft: @ecommer.draft, expiry_date: @ecommer.expiry_date, facebook: @ecommer.facebook, friends_rewards_terms: @ecommer.friends_rewards_terms, general_contact_number: @ecommer.general_contact_number, general_email: @ecommer.general_email, instagram: @ecommer.instagram, merchant_id: @ecommer.merchant_id, operating_address: @ecommer.operating_address, preferred_contact: @ecommer.preferred_contact, preferred_order_method: @ecommer.preferred_order_method, question_1: @ecommer.question_1, question_2: @ecommer.question_2, question_3: @ecommer.question_3, question_4: @ecommer.question_4, question_5: @ecommer.question_5, verified: @ecommer.verified, website: @ecommer.website }
    end

    assert_redirected_to ecommer_path(assigns(:ecommer))
  end

  test "should show ecommer" do
    get :show, id: @ecommer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ecommer
    assert_response :success
  end

  test "should update ecommer" do
    patch :update, id: @ecommer, ecommer: { business_name: @ecommer.business_name, delivery_link: @ecommer.delivery_link, draft: @ecommer.draft, expiry_date: @ecommer.expiry_date, facebook: @ecommer.facebook, friends_rewards_terms: @ecommer.friends_rewards_terms, general_contact_number: @ecommer.general_contact_number, general_email: @ecommer.general_email, instagram: @ecommer.instagram, merchant_id: @ecommer.merchant_id, operating_address: @ecommer.operating_address, preferred_contact: @ecommer.preferred_contact, preferred_order_method: @ecommer.preferred_order_method, question_1: @ecommer.question_1, question_2: @ecommer.question_2, question_3: @ecommer.question_3, question_4: @ecommer.question_4, question_5: @ecommer.question_5, verified: @ecommer.verified, website: @ecommer.website }
    assert_redirected_to ecommer_path(assigns(:ecommer))
  end

  test "should destroy ecommer" do
    assert_difference('Ecommer.count', -1) do
      delete :destroy, id: @ecommer
    end

    assert_redirected_to ecommers_path
  end
end
