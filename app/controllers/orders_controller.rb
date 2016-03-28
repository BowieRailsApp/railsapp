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
    # dropping the first element of the array as it is always "" for some reason.
    foodarr = params["fooditem_order"]["fooditem_id"].drop(1)
    if @order.save
      # looping over food arr and inserting the values in fooditems_orders join table
      foodarr.each { |id|
        fooditem = Fooditem.find(id)
        order = Order.find(@order.id)
        order.fooditems << fooditem
      }
      redirect_to orders_path
    else
      redirect_to new_order_path
    end
  end

  def destroy
    @order = Order.find(params[:id]).destroy
    redirect_to orders_path
  end

  def edit
    @order = Order.find(params[:id]).destroy
    @order = Order.new
    @tables = Table.all
    @fooditems = Fooditem.all
  end

  private

  def order_params
    params.require(:order).permit(:table_id, :fooditem_id , :cooked)
  end

end
