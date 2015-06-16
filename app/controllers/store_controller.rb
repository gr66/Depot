class StoreController < ApplicationController
  include SessionCounter
  include CurrentCart
  before_action :set_cart
  before_action :session_counter, only: [:index]

  def index
    @products = Product.order(:title)
  end
end
