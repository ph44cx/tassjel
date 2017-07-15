json.extract! article, :id, :title, :subtitle, :blog_image, :body, :tags, :share, :created_at, :updated_at
json.url article_url(article, format: :json)
