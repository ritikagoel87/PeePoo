json.extract! user, :id, :fname, :lname, :email, :password_digest, :admin, :owner, :created_at, :updated_at
json.url user_url(user, format: :json)
