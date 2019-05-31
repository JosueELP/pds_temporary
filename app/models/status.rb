class Status < ApplicationRecord
  belongs_to :branch_office
  has_many :shippings
end
