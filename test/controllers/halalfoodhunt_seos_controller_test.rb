require 'test_helper'

class HalalfoodhuntSeosControllerTest < ActionController::TestCase
  setup do
    @halalfoodhunt_seo = halalfoodhunt_seos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:halalfoodhunt_seos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create halalfoodhunt_seo" do
    assert_difference('HalalfoodhuntSeo.count') do
      post :create, halalfoodhunt_seo: { meta_description: @halalfoodhunt_seo.meta_description }
    end

    assert_redirected_to halalfoodhunt_seo_path(assigns(:halalfoodhunt_seo))
  end

  test "should show halalfoodhunt_seo" do
    get :show, id: @halalfoodhunt_seo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @halalfoodhunt_seo
    assert_response :success
  end

  test "should update halalfoodhunt_seo" do
    patch :update, id: @halalfoodhunt_seo, halalfoodhunt_seo: { meta_description: @halalfoodhunt_seo.meta_description }
    assert_redirected_to halalfoodhunt_seo_path(assigns(:halalfoodhunt_seo))
  end

  test "should destroy halalfoodhunt_seo" do
    assert_difference('HalalfoodhuntSeo.count', -1) do
      delete :destroy, id: @halalfoodhunt_seo
    end

    assert_redirected_to halalfoodhunt_seos_path
  end
end
