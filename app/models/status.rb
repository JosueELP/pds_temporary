class Status < ApplicationRecord
  belongs_to :branch_office
  belongs_to :shippings
end
