require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  setup do
    @lesson = lessons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lessons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson" do
    assert_difference('Lesson.count') do
      post :create, lesson: { brand_name: @lesson.brand_name, delivery_link: @lesson.delivery_link, delivery_terms: @lesson.delivery_terms, draft: @lesson.draft, expiry_date: @lesson.expiry_date, facebook: @lesson.facebook, friends_rewards_terms: @lesson.friends_rewards_terms, general_contact_number: @lesson.general_contact_number, general_email: @lesson.general_email, instagram: @lesson.instagram, merchant_id: @lesson.merchant_id, preferred_contact: @lesson.preferred_contact, preferred_sign_up_method: @lesson.preferred_sign_up_method, question_1: @lesson.question_1, question_2: @lesson.question_2, question_3: @lesson.question_3, question_4: @lesson.question_4, question_5: @lesson.question_5, string: @lesson.string, verified: @lesson.verified, website: @lesson.website }
    end

    assert_redirected_to lesson_path(assigns(:lesson))
  end

  test "should show lesson" do
    get :show, id: @lesson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson
    assert_response :success
  end

  test "should update lesson" do
    patch :update, id: @lesson, lesson: { brand_name: @lesson.brand_name, delivery_link: @lesson.delivery_link, delivery_terms: @lesson.delivery_terms, draft: @lesson.draft, expiry_date: @lesson.expiry_date, facebook: @lesson.facebook, friends_rewards_terms: @lesson.friends_rewards_terms, general_contact_number: @lesson.general_contact_number, general_email: @lesson.general_email, instagram: @lesson.instagram, merchant_id: @lesson.merchant_id, preferred_contact: @lesson.preferred_contact, preferred_sign_up_method: @lesson.preferred_sign_up_method, question_1: @lesson.question_1, question_2: @lesson.question_2, question_3: @lesson.question_3, question_4: @lesson.question_4, question_5: @lesson.question_5, string: @lesson.string, verified: @lesson.verified, website: @lesson.website }
    assert_redirected_to lesson_path(assigns(:lesson))
  end

  test "should destroy lesson" do
    assert_difference('Lesson.count', -1) do
      delete :destroy, id: @lesson
    end

    assert_redirected_to lessons_path
  end
end
