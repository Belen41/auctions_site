class BidsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @product = Product.find(params[:id])
    @bid = @product.bids.new
  end

  def create
    @product=Product.find(params[:product_id])
    @user_bid = @product.bids.new(
    :amount=> params[:bid][:amount],
    :user_id=> params[:user_id],
    :product_id=>params[:product_id])
    @user_bid.save
    redirect_to "/users/#{params[:user_id]}/show"
  end
end
