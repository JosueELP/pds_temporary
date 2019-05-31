class ShippingInformation < ApplicationRecord
  belongs_to :address
  has_many :clients
end
