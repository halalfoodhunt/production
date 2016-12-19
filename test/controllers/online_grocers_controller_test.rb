require 'test_helper'

class OnlineGrocersControllerTest < ActionController::TestCase
  setup do
    @online_grocer = online_grocers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:online_grocers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create online_grocer" do
    assert_difference('OnlineGrocer.count') do
      post :create, online_grocer: { brand_name: @online_grocer.brand_name, contactable_hours: @online_grocer.contactable_hours, draft: @online_grocer.draft, expiry_date: @online_grocer.expiry_date, facebook: @online_grocer.facebook, friends_rewards_terms: @online_grocer.friends_rewards_terms, general_contact_number: @online_grocer.general_contact_number, general_email: @online_grocer.general_email, instagram: @online_grocer.instagram, merchant_id: @online_grocer.merchant_id, ordering_link: @online_grocer.ordering_link, question_1: @online_grocer.question_1, question_2: @online_grocer.question_2, question_3: @online_grocer.question_3, question_4: @online_grocer.question_4, question_5: @online_grocer.question_5, website: @online_grocer.website }
    end

    assert_redirected_to online_grocer_path(assigns(:online_grocer))
  end

  test "should show online_grocer" do
    get :show, id: @online_grocer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @online_grocer
    assert_response :success
  end

  test "should update online_grocer" do
    patch :update, id: @online_grocer, online_grocer: { brand_name: @online_grocer.brand_name, contactable_hours: @online_grocer.contactable_hours, draft: @online_grocer.draft, expiry_date: @online_grocer.expiry_date, facebook: @online_grocer.facebook, friends_rewards_terms: @online_grocer.friends_rewards_terms, general_contact_number: @online_grocer.general_contact_number, general_email: @online_grocer.general_email, instagram: @online_grocer.instagram, merchant_id: @online_grocer.merchant_id, ordering_link: @online_grocer.ordering_link, question_1: @online_grocer.question_1, question_2: @online_grocer.question_2, question_3: @online_grocer.question_3, question_4: @online_grocer.question_4, question_5: @online_grocer.question_5, website: @online_grocer.website }
    assert_redirected_to online_grocer_path(assigns(:online_grocer))
  end

  test "should destroy online_grocer" do
    assert_difference('OnlineGrocer.count', -1) do
      delete :destroy, id: @online_grocer
    end

    assert_redirected_to online_grocers_path
  end
end
