class BranchOffice < ApplicationRecord
  belongs_to :status
  belongs_to :pick_up
  belongs_to :load
end
