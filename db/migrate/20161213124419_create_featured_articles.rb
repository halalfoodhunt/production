class CreateFeaturedArticles < ActiveRecord::Migration
  def change
    create_table :featured_articles do |t|
      t.string :title
      t.string :article_url

      t.timestamps null: false
    end
  end
end
