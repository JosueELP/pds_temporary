class Load < ApplicationRecord
  has_many :branch_offices
  has_many :workers
  has_many :vehicles
end
