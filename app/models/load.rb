class Load < ApplicationRecord
  belongs_to :branch_office
  belongs_to :worker
  has_many :vehicles
  has_many :load_shippings
  has_many :shippings, through: :load_shipping

end
