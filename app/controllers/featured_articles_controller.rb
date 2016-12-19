class FeaturedArticlesController < ApplicationController
  before_action :set_featured_article, only: [:show, :edit, :update, :destroy]

  # GET /featured_articles
  # GET /featured_articles.json
  def index
    @featured_articles = FeaturedArticle.all
  end

  # GET /featured_articles/1
  # GET /featured_articles/1.json
  def show
  end

  # GET /featured_articles/new
  def new
    @featured_article = FeaturedArticle.new
  end

  # GET /featured_articles/1/edit
  def edit
  end

  # POST /featured_articles
  # POST /featured_articles.json
  def create
    @featured_article = FeaturedArticle.new(featured_article_params)

    respond_to do |format|
      if @featured_article.save
        format.html { redirect_to @featured_article, notice: 'Featured article was successfully created.' }
        format.json { render :show, status: :created, location: @featured_article }
      else
        format.html { render :new }
        format.json { render json: @featured_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /featured_articles/1
  # PATCH/PUT /featured_articles/1.json
  def update
    respond_to do |format|
      if @featured_article.update(featured_article_params)
        format.html { redirect_to @featured_article, notice: 'Featured article was successfully updated.' }
        format.json { render :show, status: :ok, location: @featured_article }
      else
        format.html { render :edit }
        format.json { render json: @featured_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featured_articles/1
  # DELETE /featured_articles/1.json
  def destroy
    @featured_article.destroy
    respond_to do |format|
      format.html { redirect_to featured_articles_url, notice: 'Featured article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_featured_article
      @featured_article = FeaturedArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def featured_article_params
      params.require(:featured_article).permit(:title, :article_url)
    end
end
