class StoreController < ApplicationController
before_action :set_time
  include CurrentCart
  before_action :set_cart
  
  def index
  @products = Product.order(:title)
  end

  def set_time
  @time = Time.now.strftime("Time: %H:%M")
  end

end
