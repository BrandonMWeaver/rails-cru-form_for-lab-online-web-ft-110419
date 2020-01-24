class ArtistsController < ApplicationController
  
  def new
    @artist = Artist.new
  end
  
  def create
    artist = Artist.create(artist_params(:name, :bio))
    redirect_to artist_path(artist)
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  private
  
  def artist_path(*args)
    return params.require(:artist).permit(*args)
  end
  
end
