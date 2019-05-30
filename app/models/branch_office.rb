class BranchOffice < ApplicationRecord
  has_many :statuses
  has_many :pick_up
  has_many :loads
  belongs_to :address
  has_many :workers
end
