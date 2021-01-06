class TopController < ApplicationController
  def index
    @orders = Order.all
    @orders = Order.page(params[:page]).per(12)
  end

end
