class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @items = Item.order("created_at DESC")
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

  private

  def item_params
    params.require(:item).permit(:image,:shohin_name,:explanation,:price,:genre_id,:status_id,:charge_id,:prefecture_id,:sending_day_id).merge(user_id: current_user.id)
  end

end
