class CouponsController < ApplicationController
    before_action :set_coupon, only: [:show]
    
    def index
        @coupons = Coupon.all
    end

    def show 
    end

    def new
       @coupon = Coupon.new()
    end

    def create
        @coupon = Coupon.new(coupon_params)
        if @coupon.save
            redirect_to coupon_path(@coupon)
        end
    end



    private 
        def coupon_params
            params.require(:coupon).permit(:coupon_code, :store)
        end

        def set_coupon
            @coupon = Coupon.find_by_id(params[:id])
        end
end
