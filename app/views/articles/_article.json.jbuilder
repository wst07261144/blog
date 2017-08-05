json.extract! article, :id, :title, :image, :summary, :content, :read_count, :user_id, :status, :top, :created_at, :updated_at
json.url article_url(article, format: :json)
