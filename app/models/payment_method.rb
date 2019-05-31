class PaymentMethod < ApplicationRecord
    has_many :shippings
end
