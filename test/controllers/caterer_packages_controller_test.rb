require 'test_helper'

class CatererPackagesControllerTest < ActionController::TestCase
  setup do
    @caterer_package = caterer_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caterer_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caterer_package" do
    assert_difference('CatererPackage.count') do
      post :create, caterer_package: { description: @caterer_package.description, minimum_pax: @caterer_package.minimum_pax, name: @caterer_package.name, price: @caterer_package.price }
    end

    assert_redirected_to caterer_package_path(assigns(:caterer_package))
  end

  test "should show caterer_package" do
    get :show, id: @caterer_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caterer_package
    assert_response :success
  end

  test "should update caterer_package" do
    patch :update, id: @caterer_package, caterer_package: { description: @caterer_package.description, minimum_pax: @caterer_package.minimum_pax, name: @caterer_package.name, price: @caterer_package.price }
    assert_redirected_to caterer_package_path(assigns(:caterer_package))
  end

  test "should destroy caterer_package" do
    assert_difference('CatererPackage.count', -1) do
      delete :destroy, id: @caterer_package
    end

    assert_redirected_to caterer_packages_path
  end
end
