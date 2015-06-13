class StoreController < ApplicationController
  include SessionCounter
  before_action :session_counter, only: [:index]

  def index
    @products = Product.order(:title)
  end
end
