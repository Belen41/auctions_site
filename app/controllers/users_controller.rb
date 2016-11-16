class UsersController < ApplicationController
  def new
    @new_user = User.new
  end
  def create
    @new_user = User.new(
      :name=> params[:user][:name],
      :email => params[:user][:email])
    @new_user.save
    redirect_to "/users/#{@new_user.id}/show"
  end
  def show
    @user = User.find(params[:id])
    @products = @user.products.all
  end
  def destroy
  end
end
