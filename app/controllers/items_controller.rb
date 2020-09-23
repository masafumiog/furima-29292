class ItemsController < ApplicationController

  def index
    @items = Item.all
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)

  privateｆ
  der item_params
    params.repuire(:items).permit(:name, :image, :text)
  end

end
