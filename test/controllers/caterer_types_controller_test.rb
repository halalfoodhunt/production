require 'test_helper'

class CatererTypesControllerTest < ActionController::TestCase
  setup do
    @caterer_type = caterer_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caterer_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caterer_type" do
    assert_difference('CatererType.count') do
      post :create, caterer_type: { name: @caterer_type.name }
    end

    assert_redirected_to caterer_type_path(assigns(:caterer_type))
  end

  test "should show caterer_type" do
    get :show, id: @caterer_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caterer_type
    assert_response :success
  end

  test "should update caterer_type" do
    patch :update, id: @caterer_type, caterer_type: { name: @caterer_type.name }
    assert_redirected_to caterer_type_path(assigns(:caterer_type))
  end

  test "should destroy caterer_type" do
    assert_difference('CatererType.count', -1) do
      delete :destroy, id: @caterer_type
    end

    assert_redirected_to caterer_types_path
  end
end
