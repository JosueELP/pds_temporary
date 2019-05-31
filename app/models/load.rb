class Load < ApplicationRecord
  belongs_to :branch_office
  belongs_to :worker
  belongs_to :vehicle
end
