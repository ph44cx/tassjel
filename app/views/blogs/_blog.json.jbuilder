json.extract! blog, :id, :title, :subtitle, :blog_image, :body, :tags, :share, :created_at, :updated_at
json.url blog_url(blog, format: :json)
