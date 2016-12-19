json.extract! featured_article, :id, :title, :article_url, :created_at, :updated_at
json.url featured_article_url(featured_article, format: :json)