json.extract! friends_card, :id, :name, :email, :ic_number, :date_of_birth, :contact_number, :shipping_address, :expiry_date, :gift, :paid, :created_at, :updated_at
json.url friends_card_url(friends_card, format: :json)
