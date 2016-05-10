json.array!(@gardens) do |garden|
  json.extract! garden, :id, :name, :square_feet, :zone, :garden_type, :user_id
  json.url garden_url(garden, format: :json)
end
