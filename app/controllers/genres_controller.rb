class GenresController < ApplicationController
  
  def new
    @genre = Genre.new
  end
  
  def create
    genre = Genre.create(genre_params(:name))
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  private
  
  def genre_params(*args)
    return params.require(:artist).permit(*args)
  end
  
end
