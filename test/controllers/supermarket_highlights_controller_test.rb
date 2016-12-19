require 'test_helper'

class SupermarketHighlightsControllerTest < ActionController::TestCase
  setup do
    @supermarket_highlight = supermarket_highlights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supermarket_highlights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supermarket_highlight" do
    assert_difference('SupermarketHighlight.count') do
      post :create, supermarket_highlight: { name: @supermarket_highlight.name }
    end

    assert_redirected_to supermarket_highlight_path(assigns(:supermarket_highlight))
  end

  test "should show supermarket_highlight" do
    get :show, id: @supermarket_highlight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supermarket_highlight
    assert_response :success
  end

  test "should update supermarket_highlight" do
    patch :update, id: @supermarket_highlight, supermarket_highlight: { name: @supermarket_highlight.name }
    assert_redirected_to supermarket_highlight_path(assigns(:supermarket_highlight))
  end

  test "should destroy supermarket_highlight" do
    assert_difference('SupermarketHighlight.count', -1) do
      delete :destroy, id: @supermarket_highlight
    end

    assert_redirected_to supermarket_highlights_path
  end
end
