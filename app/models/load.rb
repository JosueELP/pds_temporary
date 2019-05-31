class Load < ApplicationRecord
  belongs_to :branch_office
  belongs_to :worker
  has_many :vehicles
  has_many :load_shipping
  has_many :shipping, through: :load_shipping

end
