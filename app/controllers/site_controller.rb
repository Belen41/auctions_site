class SiteController < ApplicationController
  def index
    @products =Product.all
  end
  def show
    @product_details = Product.find(params[:id])
  end
end
