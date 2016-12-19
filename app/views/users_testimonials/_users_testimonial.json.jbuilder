json.extract! users_testimonial, :id, :name, :testimonial, :created_at, :updated_at
json.url users_testimonial_url(users_testimonial, format: :json)