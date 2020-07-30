class Coupon < ApplicationRecord
    validates_presence_of :coupon_code, :store
end
