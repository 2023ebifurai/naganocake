class ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_items_path
  end

  def index
  end

  def edit
  end

  def show
  end
end

private

def item_params
  params.require(:item).permit(:image, :name, :introduce, :price)
end