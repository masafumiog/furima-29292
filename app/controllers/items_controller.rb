class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :create]
  before_action :set_item, only: [:show, :edit, :update]
  before_action :authenticate_user!, except:[:index]
 
  def index
    @items = Item.all.order("created_at DESC")
  end
 
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
  end
 
  def edit
  end
 
  def update
    if @item.user_id == current_user.id
      if @item.update(item_params)
        redirect_to item_path(@item.id)
        @item.destroy
      else
        render :edit
      end
    else
      redirect_to action: :show
    end
  end

  def destroy
      @item = Item.find(params[:id])
      redirect_to root_path
  end
 
  private
  def item_params
    params.require(:item).permit(:name, :text, :image, :category_id, :status_id, :burden_id, :area_id, :send_time_id, :price).merge(user_id: current_user.id)
  end
 
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
 
  def set_item
    @item = Item.find(params[:id])
  end
 end