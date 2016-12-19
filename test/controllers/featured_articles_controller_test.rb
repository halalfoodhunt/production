require 'test_helper'

class FeaturedArticlesControllerTest < ActionController::TestCase
  setup do
    @featured_article = featured_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:featured_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create featured_article" do
    assert_difference('FeaturedArticle.count') do
      post :create, featured_article: { article_url: @featured_article.article_url, title: @featured_article.title }
    end

    assert_redirected_to featured_article_path(assigns(:featured_article))
  end

  test "should show featured_article" do
    get :show, id: @featured_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @featured_article
    assert_response :success
  end

  test "should update featured_article" do
    patch :update, id: @featured_article, featured_article: { article_url: @featured_article.article_url, title: @featured_article.title }
    assert_redirected_to featured_article_path(assigns(:featured_article))
  end

  test "should destroy featured_article" do
    assert_difference('FeaturedArticle.count', -1) do
      delete :destroy, id: @featured_article
    end

    assert_redirected_to featured_articles_path
  end
end
