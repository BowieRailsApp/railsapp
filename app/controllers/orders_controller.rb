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

    foodarr = params["order"]["fooditem_order"]["fooditem_id"].drop(1)

    if @order.save
      # looping over food arr and inserting the values in fooditems_orders join table
      foodarr.each { |id|
        fooditem = Fooditem.find(id)
        # order = Order.find(@order.id)
        @order.fooditems << fooditem
      }
      redirect_to orders_path
    else
      redirect_to new_order_path
    end
  end

  def edit
    @order = Order.find(params[:id])
    @tables = Table.all
    @fooditems = Fooditem.all
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to orders_path
  end

  def destroy
    # if the order associated with the food item is cooked then delete the food item
    @fooditem = Fooditem.find(params[:id])
    @fooditem.destroy
    redirect_to fooditems_path
  end

  private

  def order_params
    params.require(:order).permit(:table_id, :fooditem_id , :cooked)
  end

end
