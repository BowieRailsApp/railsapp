class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @tables = Table.all
    @fooditems = Fooditem.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    fooditem = Fooditem.find(params[fooditem.id])
    if @order.save
      redirect_to orders_path
    else
      redirect_to new_order_path
    end
  end

  private

  def order_params
    params.require(:order).permit(:tables_id, :cooked)
  end

end
