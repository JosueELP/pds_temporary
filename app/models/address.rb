class Address < ApplicationRecord
  belongs_to :shipping_information
  belongs_to :pick_up
end
