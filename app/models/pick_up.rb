class PickUp < ApplicationRecord
  belongs_to :client
  has_many :addresses
  belongs_to :branch_office
end
