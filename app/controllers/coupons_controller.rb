class CouponsController < ApplicationController
  def new
    @coupon = Coupon.new
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def edit
    @coupon = Coupon.find(params[:id])
  end

  def index
    @coupons  = Coupon.all
  end

  def create 
    coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(coupon)

  end 

  def update 
    coupon = Coupon.find(params[:id])
    coupon.update(coupon_params)
    redirect_to coupon_path(coupon)
  end


  private 

  def coupon_params 
    params.require(:coupon).permit(:coupon_code, :store)
  end 


end
