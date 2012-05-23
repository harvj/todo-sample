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
      flash[:alert] = "nope."
    end
    redirect_to root_url
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_url
  end

end
