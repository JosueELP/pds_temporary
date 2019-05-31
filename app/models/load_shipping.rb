class LoadShipping < ApplicationRecord
    has_many :shipping
    belongs_to :load
end
