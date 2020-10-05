class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :set_item, only: [:index, :create, :login, :move_index]
  before_action :login
  before_action :move_index
 
  
  def index
    @order = Order.new
    @price = @item.price.to_s(:delimited, delimiter: ',')
  end
  
  def create
    @order = OrderBuy.new(order_params)
    if @order.valid?
      pay_item
      @order.save
      return redirect_to root_path
    else
      render 'index'
    end

  end

  private

  def order_params
    params.permit(:token, :postnumber, :prefecture_id, :city, :address, :buildname, :tellnumber, :item_id).merge(user_id: current_user.id)
  end

  def pay_item
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      amount: @item.price,
      card: order_params[:token],
      currency:'jpy'
    )
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

  def login
    if user_signed_in? && @item.user_id == current_user.id
      redirect_to root_path
    end
  end

  def move_index
   if @item.buy != nil
    redirect_to root_path
   end
  end
end


