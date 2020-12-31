class TopController < ApplicationController
  def index
    @orders = Order.all
    @orders = Order.page(params[:page]).per(10)
  end

end
