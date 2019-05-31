class LoadShipping < ApplicationRecord
    belongs_to :shipping
    belongs_to :load
end
