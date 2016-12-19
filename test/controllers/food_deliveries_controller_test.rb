require 'test_helper'

class FoodDeliveriesControllerTest < ActionController::TestCase
  setup do
    @food_delivery = food_deliveries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_deliveries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_delivery" do
    assert_difference('FoodDelivery.count') do
      post :create, food_delivery: { brand_name: @food_delivery.brand_name, contactable_hours: @food_delivery.contactable_hours, cuisine_type_id: @food_delivery.cuisine_type_id, draft: @food_delivery.draft, expiry_date: @food_delivery.expiry_date, facebook: @food_delivery.facebook, food_delivery_type_id: @food_delivery.food_delivery_type_id, friends_reward_id: @food_delivery.friends_reward_id, friends_rewards_terms: @food_delivery.friends_rewards_terms, general_contact_number: @food_delivery.general_contact_number, general_email: @food_delivery.general_email, instagram: @food_delivery.instagram, merchant_id: @food_delivery.merchant_id, ordering_link: @food_delivery.ordering_link, price_range_id: @food_delivery.price_range_id, question_1: @food_delivery.question_1, question_2: @food_delivery.question_2, question_3: @food_delivery.question_3, question_4: @food_delivery.question_4, question_5: @food_delivery.question_5, region_id: @food_delivery.region_id, verified: @food_delivery.verified, website: @food_delivery.website }
    end

    assert_redirected_to food_delivery_path(assigns(:food_delivery))
  end

  test "should show food_delivery" do
    get :show, id: @food_delivery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_delivery
    assert_response :success
  end

  test "should update food_delivery" do
    patch :update, id: @food_delivery, food_delivery: { brand_name: @food_delivery.brand_name, contactable_hours: @food_delivery.contactable_hours, cuisine_type_id: @food_delivery.cuisine_type_id, draft: @food_delivery.draft, expiry_date: @food_delivery.expiry_date, facebook: @food_delivery.facebook, food_delivery_type_id: @food_delivery.food_delivery_type_id, friends_reward_id: @food_delivery.friends_reward_id, friends_rewards_terms: @food_delivery.friends_rewards_terms, general_contact_number: @food_delivery.general_contact_number, general_email: @food_delivery.general_email, instagram: @food_delivery.instagram, merchant_id: @food_delivery.merchant_id, ordering_link: @food_delivery.ordering_link, price_range_id: @food_delivery.price_range_id, question_1: @food_delivery.question_1, question_2: @food_delivery.question_2, question_3: @food_delivery.question_3, question_4: @food_delivery.question_4, question_5: @food_delivery.question_5, region_id: @food_delivery.region_id, verified: @food_delivery.verified, website: @food_delivery.website }
    assert_redirected_to food_delivery_path(assigns(:food_delivery))
  end

  test "should destroy food_delivery" do
    assert_difference('FoodDelivery.count', -1) do
      delete :destroy, id: @food_delivery
    end

    assert_redirected_to food_deliveries_path
  end
end
