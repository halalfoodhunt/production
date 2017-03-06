require 'test_helper'

class PlacesMenusControllerTest < ActionController::TestCase
  setup do
    @places_menu = places_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create places_menu" do
    assert_difference('PlacesMenu.count') do
      post :create, places_menu: { name: @places_menu.name }
    end

    assert_redirected_to places_menu_path(assigns(:places_menu))
  end

  test "should show places_menu" do
    get :show, id: @places_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @places_menu
    assert_response :success
  end

  test "should update places_menu" do
    patch :update, id: @places_menu, places_menu: { name: @places_menu.name }
    assert_redirected_to places_menu_path(assigns(:places_menu))
  end

  test "should destroy places_menu" do
    assert_difference('PlacesMenu.count', -1) do
      delete :destroy, id: @places_menu
    end

    assert_redirected_to places_menus_path
  end
end
