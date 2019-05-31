class PickUp < ApplicationRecord
  belongs_to :client
  belongs_to :address
  belongs_to :branch_office
end
