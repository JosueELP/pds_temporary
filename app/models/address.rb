class Address < ApplicationRecord
  belongs_to :shipping_information
  belongs_to :pick_up
  belongs_to :city
  has_many :branch_offices
  has_many :workers
  has_many :clients
end
