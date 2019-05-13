json.extract! booking, :id, :timeIn, :timeOut, :amount, :amenities_id, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
