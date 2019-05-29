json.extract! client, :id, :client_name, :client_lastname, :created_at, :updated_at
json.url client_url(client, format: :json)
