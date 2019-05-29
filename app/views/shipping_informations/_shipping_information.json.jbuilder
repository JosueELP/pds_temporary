json.extract! shipping_information, :id, :phone, :aditional_info, :created_at, :updated_at
json.url shipping_information_url(shipping_information, format: :json)
