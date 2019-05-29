json.extract! vehicle, :id, :brand, :year, :model, :color, :license_plate, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
