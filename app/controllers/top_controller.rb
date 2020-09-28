class TopController < ApplicationController
  before_action :move_to_index, except: [:index, :show]


  def index
    @items = Item.order("created_at DESC")
  end


end
