class SiteController < ApplicationController
  helper_method :current_user, :logged_in?
  def home
    @products =Product.all
  end
  def show
    @product_details = Product.find(params[:id])
  end
  def current_user
    @current_user ||= User.find_by_id(session[:user])
  end
  def logged_in?
    current_user != nil
  end
end
