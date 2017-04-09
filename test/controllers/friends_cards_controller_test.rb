require 'test_helper'

class FriendsCardsControllerTest < ActionController::TestCase
  setup do
    @friends_card = friends_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friends_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friends_card" do
    assert_difference('FriendsCard.count') do
      post :create, friends_card: { contact_number: @friends_card.contact_number, date_of_birth: @friends_card.date_of_birth, email: @friends_card.email, expiry_date: @friends_card.expiry_date, gift: @friends_card.gift, ic_number: @friends_card.ic_number, name: @friends_card.name, paid: @friends_card.paid, shipping_address: @friends_card.shipping_address }
    end

    assert_redirected_to friends_card_path(assigns(:friends_card))
  end

  test "should show friends_card" do
    get :show, id: @friends_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @friends_card
    assert_response :success
  end

  test "should update friends_card" do
    patch :update, id: @friends_card, friends_card: { contact_number: @friends_card.contact_number, date_of_birth: @friends_card.date_of_birth, email: @friends_card.email, expiry_date: @friends_card.expiry_date, gift: @friends_card.gift, ic_number: @friends_card.ic_number, name: @friends_card.name, paid: @friends_card.paid, shipping_address: @friends_card.shipping_address }
    assert_redirected_to friends_card_path(assigns(:friends_card))
  end

  test "should destroy friends_card" do
    assert_difference('FriendsCard.count', -1) do
      delete :destroy, id: @friends_card
    end

    assert_redirected_to friends_cards_path
  end
end
