require 'test_helper'

class SupplierHighlightsControllerTest < ActionController::TestCase
  setup do
    @supplier_highlight = supplier_highlights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplier_highlights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier_highlight" do
    assert_difference('SupplierHighlight.count') do
      post :create, supplier_highlight: { name: @supplier_highlight.name }
    end

    assert_redirected_to supplier_highlight_path(assigns(:supplier_highlight))
  end

  test "should show supplier_highlight" do
    get :show, id: @supplier_highlight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier_highlight
    assert_response :success
  end

  test "should update supplier_highlight" do
    patch :update, id: @supplier_highlight, supplier_highlight: { name: @supplier_highlight.name }
    assert_redirected_to supplier_highlight_path(assigns(:supplier_highlight))
  end

  test "should destroy supplier_highlight" do
    assert_difference('SupplierHighlight.count', -1) do
      delete :destroy, id: @supplier_highlight
    end

    assert_redirected_to supplier_highlights_path
  end
end
