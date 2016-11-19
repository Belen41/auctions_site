class ProductsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @product = @user.products.new
  end
  def show
    @user =User.find(params[:user_id])
    @product = Product.find(params[:id])
    @bids = @product.bids.all
  end
  def create
    @user = User.find(params[:user_id])
    @new_product = @user.products.new(
        :title=> params[:product][:title],
        :description=> params[:product][:description],
        :deadline=>params[:product][:deadline])
    if @new_product.save
      redirect_to "/users/#{@user.id}/show"
    else
      render 'new'
    end
  end
  def destroy
    @user = User.find(params[:user_id])
    @product = @user.products.find(:product_id)
    @product.destroy
    redirect_to "/users/#{@user.id}/show"
  end

end
