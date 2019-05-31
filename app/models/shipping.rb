class Shipping < ApplicationRecord
    has_many :addresses
    has_many :clients
    has_many :payment_methods
    has_many :statuses
    has_many :workers
    has_many :branch_offices
    belongs_to :packages
    has_many :load_shipping
    has_many :load, through: :load_shipping
end
