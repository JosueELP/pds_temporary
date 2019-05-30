class PickUp < ApplicationRecord
  has_many :clients
  has_many :addresses
  has_many :branch_offices
end
