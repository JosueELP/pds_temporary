class BranchOffice < ApplicationRecord
  has_many :statuses
  has_many :pick_ups
  has_many :loads
  belongs_to :address
  has_many :workers
  has_many :shippings
end
