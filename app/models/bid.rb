class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :product
  before_save :check_product_deadline
  def check_product_deadline(product)
    errors.add(:created_at,"can't bid after product deadline")
    if created_at > Product.params[:deadline]
    end
  end
end
