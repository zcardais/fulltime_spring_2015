json.array!(@users) do |user|
  json.extract! user, :id, :name, :location, :age
  json.url user_url(user, format: :json)
end
