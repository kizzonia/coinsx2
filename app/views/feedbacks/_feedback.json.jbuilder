json.extract! feedback, :id, :title, :body, :icon, :slug, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
