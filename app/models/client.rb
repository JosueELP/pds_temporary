class Client < ApplicationRecord
  has_many :pick_ups
  has_many :billing_informations
  belongs_to :shipping_information
  belongs_to :address
  has_many :shippings
end
