class Shipping < ApplicationRecord
    belongs_to :addresses
    belongs_to :clients
    belongs_to :payment_methods
    belongs_to :statuses
    belongs_to :workers
    belongs_to :branch_offices
    belongs_to :packages
    belongs_to :load_shipping
    has_many :load, through: :load_shipping
end
