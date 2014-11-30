json.array!(@users) do |user|
  json.extract! user, :id, :login, :email, :password, :salt, :role_id
  json.url user_url(user, format: :json)
end
