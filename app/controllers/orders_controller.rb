class OrdersController < ApplicationController
   before_action :set_order, only: [:show, :edit, :update, :destroy]
  def index
    @orders = Order.all

  end

  def new
    @order = Order.new
  end

  def create
  @order = Order.new(order_params)
  unique_num = random_num
  @order.track_letter = tracking_letter
  @order.track_num = unique_num
  @order.unique_tracker = "#{tracking_letter}#{unique_num}"


    respond_to do |format|
      if @order.save
        format.html { redirect_to '/customers', notice: 'Order was successfully created.' }
      end
    end
  end





  private
  def set_article
     @order = Order.find(params[:id])
   end
  def order_params
    params.require(:order).permit(:track_num, :track_letter, :unique_tracker, :customer_id)
  end

end
