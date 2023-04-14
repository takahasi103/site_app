class GenresController < ApplicationController
  def index
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(params[:name])
    @genre.save
    redirect_to root_path
  end
  
  def update
  end

  def edit
  end
  
end
