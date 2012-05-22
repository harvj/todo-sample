class ItemsController < ApplicationController

  def index
    @items = Item.all
    @item  = Item.new
  end

  def create
    @items = Item.all
    @item = Item.new(params[:item])
    if @item.save
      flash[:notice] = "Nice."
    else
      flash[:notice] = "nope."
    end
    redirect_to items_url
  end

end
