class Client < ApplicationRecord
  has_many :pick_ups
  belongs_to :billing_information
  belongs_to :shipping_information
  belongs_to :address
end
