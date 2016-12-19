require 'test_helper'

class SupermarketsControllerTest < ActionController::TestCase
  setup do
    @supermarket = supermarkets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supermarkets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supermarket" do
    assert_difference('Supermarket.count') do
      post :create, supermarket: { brand_name: @supermarket.brand_name, draft: @supermarket.draft, expiry_date: @supermarket.expiry_date, facebook: @supermarket.facebook, friends_reward_id: @supermarket.friends_reward_id, friends_rewards_terms: @supermarket.friends_rewards_terms, general_contact_number: @supermarket.general_contact_number, general_email: @supermarket.general_email, instagram: @supermarket.instagram, latitude: @supermarket.latitude, location_id: @supermarket.location_id, longitude: @supermarket.longitude, merchant_id: @supermarket.merchant_id, operating_address: @supermarket.operating_address, ordering_link: @supermarket.ordering_link, question_1: @supermarket.question_1, question_2: @supermarket.question_2, question_3: @supermarket.question_3, question_4: @supermarket.question_4, question_5: @supermarket.question_5, region_id: @supermarket.region_id, supermarket_highlight_id: @supermarket.supermarket_highlight_id, verified: @supermarket.verified, website: @supermarket.website }
    end

    assert_redirected_to supermarket_path(assigns(:supermarket))
  end

  test "should show supermarket" do
    get :show, id: @supermarket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supermarket
    assert_response :success
  end

  test "should update supermarket" do
    patch :update, id: @supermarket, supermarket: { brand_name: @supermarket.brand_name, draft: @supermarket.draft, expiry_date: @supermarket.expiry_date, facebook: @supermarket.facebook, friends_reward_id: @supermarket.friends_reward_id, friends_rewards_terms: @supermarket.friends_rewards_terms, general_contact_number: @supermarket.general_contact_number, general_email: @supermarket.general_email, instagram: @supermarket.instagram, latitude: @supermarket.latitude, location_id: @supermarket.location_id, longitude: @supermarket.longitude, merchant_id: @supermarket.merchant_id, operating_address: @supermarket.operating_address, ordering_link: @supermarket.ordering_link, question_1: @supermarket.question_1, question_2: @supermarket.question_2, question_3: @supermarket.question_3, question_4: @supermarket.question_4, question_5: @supermarket.question_5, region_id: @supermarket.region_id, supermarket_highlight_id: @supermarket.supermarket_highlight_id, verified: @supermarket.verified, website: @supermarket.website }
    assert_redirected_to supermarket_path(assigns(:supermarket))
  end

  test "should destroy supermarket" do
    assert_difference('Supermarket.count', -1) do
      delete :destroy, id: @supermarket
    end

    assert_redirected_to supermarkets_path
  end
end
