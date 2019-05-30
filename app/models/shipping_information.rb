class ShippingInformation < ApplicationRecord
  has_many :addresses
  has_many :clients
end
