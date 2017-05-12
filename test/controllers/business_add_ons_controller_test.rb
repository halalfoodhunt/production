require 'test_helper'

class BusinessAddOnsControllerTest < ActionController::TestCase
  setup do
    @business_add_on = business_add_ons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_add_ons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_add_on" do
    assert_difference('BusinessAddOn.count') do
      post :create, business_add_on: { business_advertising: @business_add_on.business_advertising, business_consultation: @business_add_on.business_consultation, business_matching: @business_add_on.business_matching, digital_communication: @business_add_on.digital_communication, jumaiyah_exclusive: @business_add_on.jumaiyah_exclusive, legal_consulting: @business_add_on.legal_consulting, muslim_owner_collaboration: @business_add_on.muslim_owner_collaboration, offer_friends_rewards: @business_add_on.offer_friends_rewards }
    end

    assert_redirected_to business_add_on_path(assigns(:business_add_on))
  end

  test "should show business_add_on" do
    get :show, id: @business_add_on
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_add_on
    assert_response :success
  end

  test "should update business_add_on" do
    patch :update, id: @business_add_on, business_add_on: { business_advertising: @business_add_on.business_advertising, business_consultation: @business_add_on.business_consultation, business_matching: @business_add_on.business_matching, digital_communication: @business_add_on.digital_communication, jumaiyah_exclusive: @business_add_on.jumaiyah_exclusive, legal_consulting: @business_add_on.legal_consulting, muslim_owner_collaboration: @business_add_on.muslim_owner_collaboration, offer_friends_rewards: @business_add_on.offer_friends_rewards }
    assert_redirected_to business_add_on_path(assigns(:business_add_on))
  end

  test "should destroy business_add_on" do
    assert_difference('BusinessAddOn.count', -1) do
      delete :destroy, id: @business_add_on
    end

    assert_redirected_to business_add_ons_path
  end
end
