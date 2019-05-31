class Address < ApplicationRecord
  has_many :shipping_informations
  has_many :pick_ups
  belongs_to :city
  has_many :branch_offices
  has_many :workers
  has_many :clients
  has_many :shippings
end
