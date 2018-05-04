json.extract! post, :id, :name, :body, :tec, :point, :link, :created_at, :updated_at
json.url post_url(post, format: :json)
