require 'test_helper'

class CaterersControllerTest < ActionController::TestCase
  setup do
    @caterer = caterers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caterers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caterer" do
    assert_difference('Caterer.count') do
      post :create, caterer: { business_name: @caterer.business_name, delivery_link: @caterer.delivery_link, delivery_terms: @caterer.delivery_terms, draft: @caterer.draft, expiry_date: @caterer.expiry_date, facebook: @caterer.facebook, friends_rewards_terms: @caterer.friends_rewards_terms, general_contact_number: @caterer.general_contact_number, general_email: @caterer.general_email, instagram: @caterer.instagram, merchant_id: @caterer.merchant_id, operating_address: @caterer.operating_address, question_1: @caterer.question_1, question_2: @caterer.question_2, question_3: @caterer.question_3, question_4: @caterer.question_4, question_5: @caterer.question_5, verified: @caterer.verified, website: @caterer.website }
    end

    assert_redirected_to caterer_path(assigns(:caterer))
  end

  test "should show caterer" do
    get :show, id: @caterer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caterer
    assert_response :success
  end

  test "should update caterer" do
    patch :update, id: @caterer, caterer: { business_name: @caterer.business_name, delivery_link: @caterer.delivery_link, delivery_terms: @caterer.delivery_terms, draft: @caterer.draft, expiry_date: @caterer.expiry_date, facebook: @caterer.facebook, friends_rewards_terms: @caterer.friends_rewards_terms, general_contact_number: @caterer.general_contact_number, general_email: @caterer.general_email, instagram: @caterer.instagram, merchant_id: @caterer.merchant_id, operating_address: @caterer.operating_address, question_1: @caterer.question_1, question_2: @caterer.question_2, question_3: @caterer.question_3, question_4: @caterer.question_4, question_5: @caterer.question_5, verified: @caterer.verified, website: @caterer.website }
    assert_redirected_to caterer_path(assigns(:caterer))
  end

  test "should destroy caterer" do
    assert_difference('Caterer.count', -1) do
      delete :destroy, id: @caterer
    end

    assert_redirected_to caterers_path
  end
end
