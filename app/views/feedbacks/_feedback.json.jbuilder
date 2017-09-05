json.extract! feedback, :id, :name, :email, :subject, :content, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
