class Admin::ItemsController < ApplicationController
  before_action :set_genres, only: [:index, :new, :edit, :create,:update]
  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to root_path
  end
  
  def edit
    @item = Item.find(params[:id])
  end
  
  
  private
  
  def item_params
    params.require(:item).permit(:genre_id, :name, :image, :introduction, :price, :is_active)
  end 
  
  def set_genres
    @genres = Genre.all
  end 
end
