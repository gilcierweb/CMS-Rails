json.array!(@auth_roles) do |auth_role|
  json.extract! auth_role, :id, :name, :title, :description
  json.url auth_role_url(auth_role, format: :json)
end
