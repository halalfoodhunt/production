require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  setup do
    @place = places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place" do
    assert_difference('Place.count') do
      post :create, place: { business_name: @place.business_name, delivery_link: @place.delivery_link, draft: @place.draft, expiry_date: @place.expiry_date, facebook: @place.facebook, friends_rewards_terms: @place.friends_rewards_terms, general_contact_number: @place.general_contact_number, general_email: @place.general_email, instagram: @place.instagram, latitude: @place.latitude, longitude: @place.longitude, merchant_id: @place.merchant_id, operating_address: @place.operating_address, question_1: @place.question_1, question_2: @place.question_2, question_3: @place.question_3, question_4: @place.question_4, question_5: @place.question_5, question_6: @place.question_6, reservation_link: @place.reservation_link, verified: @place.verified, website: @place.website }
    end

    assert_redirected_to place_path(assigns(:place))
  end

  test "should show place" do
    get :show, id: @place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place
    assert_response :success
  end

  test "should update place" do
    patch :update, id: @place, place: { business_name: @place.business_name, delivery_link: @place.delivery_link, draft: @place.draft, expiry_date: @place.expiry_date, facebook: @place.facebook, friends_rewards_terms: @place.friends_rewards_terms, general_contact_number: @place.general_contact_number, general_email: @place.general_email, instagram: @place.instagram, latitude: @place.latitude, longitude: @place.longitude, merchant_id: @place.merchant_id, operating_address: @place.operating_address, question_1: @place.question_1, question_2: @place.question_2, question_3: @place.question_3, question_4: @place.question_4, question_5: @place.question_5, question_6: @place.question_6, reservation_link: @place.reservation_link, verified: @place.verified, website: @place.website }
    assert_redirected_to place_path(assigns(:place))
  end

  test "should destroy place" do
    assert_difference('Place.count', -1) do
      delete :destroy, id: @place
    end

    assert_redirected_to places_path
  end
end
