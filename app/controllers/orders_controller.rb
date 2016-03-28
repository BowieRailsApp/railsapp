class OrdersController < ApplicationController

  def index
    @orders = Order.all

  end

  def new
    @order = Order.new
    @tables = Table.all
    @fooditems = Fooditem.all
  end

  def create
    @order = Order.new(order_params)
    # @fooditem = Fooditem.find(params[:id])
    # @order.fooditems << @fooditem

    # params[:fooditem][:id].each do |fooditem|
    #   @order.fooditems.build(:fooditem_id => fooditem)
    # end

    if @order.save
      redirect_to orders_path(@order)
    else
      redirect_to new_order_path
    end
  end

  def show
    @order = Order.find(params[:id])
    @fooditems = Fooditem.all
  end

  def add_item
    order = Order.find(params[:id])
    fooditem = Fooditem.find(params[:fooditem_id])

    order.add_item(fooditem)
    redirect_to orders_path(order)
  end


  private

  def order_params
    params.require(:order).permit(:table_id, :cooked, :fooditems)
  end

end
