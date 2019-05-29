json.extract! shipping, :id, :expedition_date, :delivery_date, :ship_type, :authorization_sign, :delivery_sign, :package_number, :delivery_cost, :insurance_cost, :pick_up_cost, :taxes, :final_cost, :created_at, :updated_at
json.url shipping_url(shipping, format: :json)
