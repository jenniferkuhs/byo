json.array!(@locations) do |location|
  json.extract! location, :id, :name, :street_address, :city, :state, :zip_code
  json.url location_url(location, format: :json)
end
