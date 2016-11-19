class UsersController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @products =Product.all
  end
  def new
    @new_user = User.new
  end
  def create
    @new_user = User.new(
      :name=> params[:user][:name],
      :email => params[:user][:email])
    if @new_user.save
      session[:user_id] = @new_user.id
      redirect_to "/users/#{@new_user.id}/index"
    else
      render '/users/new'
    end
  end
  def show
    @user = User.find(session[:user_id])
    @user_bids =Bid.where("user_id =?",session[:user_id])
    @products=@user.products.all
  end
end
