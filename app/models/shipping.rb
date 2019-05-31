class Shipping < ApplicationRecord
    belongs_to :address
    belongs_to :client, optional: true
    belongs_to :payment_method
    belongs_to :status
    belongs_to :worker
    belongs_to :branch_office, optional: true
    has_many :load, through: :load_shipping
    has_many :load_shippings
end
