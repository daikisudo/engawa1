class OrdersController < ApplicationController

  before_action :authenticate_illustrator! , only: [:new, :create, :update, :destroy]

  before_action :set_order, only: [:show, :edit, :update, :destroy]

  protect_from_forgery except: :update

  def pay
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
    :amount => params[:amount],
    :card => params['payjp-token'],
    :currency => 'jpy'
  )
  end


  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
    # @orders = Illustrator.where(activated: true).paginate(page: params[:page]).search(params[:search])
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end


  # POST /orders
  # POST /orders.json
 def create
   @order = Order.new(order_params)
   @order.illustrator_id = current_illustrator.id
   respond_to do |format|
    if @order.save
      format.html { redirect_to @order, notice: '依頼の投稿が完了しました。'}
      format.json { render :show, status: :created, location: @order}
      
    else
      format.html { render :new }
      format.json { render json: @order.erros, status: :unprocessable_entity }
    end
  end
end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: '依頼内容の更新が完了しました。' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: '依頼の削除が完了しました。' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:orders_id, :name, :amount, :caption, :image, :category)
    end
end
