json.extract! billing_information, :id, :rfc, :email, :created_at, :updated_at
json.url billing_information_url(billing_information, format: :json)
