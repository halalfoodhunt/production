require 'test_helper'

class SpecialTagsControllerTest < ActionController::TestCase
  setup do
    @special_tag = special_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_tag" do
    assert_difference('SpecialTag.count') do
      post :create, special_tag: { name: @special_tag.name }
    end

    assert_redirected_to special_tag_path(assigns(:special_tag))
  end

  test "should show special_tag" do
    get :show, id: @special_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_tag
    assert_response :success
  end

  test "should update special_tag" do
    patch :update, id: @special_tag, special_tag: { name: @special_tag.name }
    assert_redirected_to special_tag_path(assigns(:special_tag))
  end

  test "should destroy special_tag" do
    assert_difference('SpecialTag.count', -1) do
      delete :destroy, id: @special_tag
    end

    assert_redirected_to special_tags_path
  end
end
