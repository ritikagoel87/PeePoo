json.extract! location, :id, :suburb, :street, :house, :typeOfHouse, :description, :availableFrom, :availableTo, :availability, :created_at, :updated_at
json.url location_url(location, format: :json)
