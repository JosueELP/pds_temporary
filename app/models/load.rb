class Load < ApplicationRecord
  belongs_to :branch_office
  belongs_to :worker
  has_many :vehicles
end
