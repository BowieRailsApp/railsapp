class FooditemsController < ApplicationController
  def index
    @fooditems = Fooditem.all
  end

  def show
    @fooditem = Fooditem.find(params[:id])
  end

  def new
    @fooditem = Fooditem.new
  end

  def create
    @fooditem = Fooditem.new(fooditem_params)
    if @fooditem.save
    redirect_to fooditems_path
  else
    redirect_to new_fooditem_path
  end
  end

  def edit
    @fooditem = Fooditem.find(params[:id])
  end

  def update
    @fooditem = Fooditem.find(params[:id])
    @fooditem.update(fooditem_params)
    redirect_to fooditems_path
  end

  def destroy
    @fooditem = Fooditem.find(params[:id])
    @fooditem.destroy
    redirect_to fooditems_path
  end

  private

  def fooditem_params
    params.require(:fooditem).permit(:itemname, :cuisine, :price)
  end

end
