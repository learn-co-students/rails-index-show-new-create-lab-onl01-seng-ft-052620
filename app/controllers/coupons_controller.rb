class CouponsController < ApplicationController

    before_action :set_coupon, only: [:show]

    def index
        @coupons = Coupon.all
    end

    def show
    end

    def new
    end

    def create
        @coupon = Coupon.new()
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        
        if (@coupon.save)
            redirect_to @coupon
        else
            render 'new'
        end
    end

    private

        def set_coupon
            @coupon = Coupon.find(params[:id])
        end

end
