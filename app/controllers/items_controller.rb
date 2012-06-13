class ItemsController < ApplicationController

  def index
    @items = Item.order('updated_at desc')
    @item  = Item.new
  end

  def create
    @items = Item.all
    @item = Item.new(params[:item])
    if @item.save
      flash[:notice] = "Nice."
    else
      flash[:alert] = "Nope."
    end
    redirect_to root_url
  end

  def update
    @item = Item.find(params[:id])
    @item.update_attributes(:description => params[:description])
    @items = Item.order('updated_at desc')
    respond_to :js
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_url
  end

end
