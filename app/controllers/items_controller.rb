class ItemsController < ApplicationController
  before_action :authenticate_user!

  # def index
  #   @items = Item.all
  #   @items = Item.order("created_at DESC")
  # end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new 
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  # def  done
  #   @item= Product.find(params[:id])
  #   @item.update( item_id: current_user.id)
  #  end

  private
  def item_params
    params.require(:item).permit(:name, :image, :text, :category_id, :status_id, :burden_id, :area_id, :price, :send_time_id).merge(user_id: current_user.id)
  end
  
end
