class GenresController < ApplicationController
  
  def new
    @genre = Genre.new
  end
  
  def create
    genre = Genre.create(genre_params(:name))
  end
  
  def show
    @genre = Genre.find(params[:id])
  end
  
  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
  end
  
  private
  
  def genre_params(*args)
    return params.require(:genre).permit(*args)
  end
  
end
