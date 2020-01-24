class SongsController < ApplicationController
  
  def new
    @song = Song.new
  end
  
  def create
    song = Song.create(song_params(:name))
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  private
  
  def song_params(*args)
    return params.require(:song).permit(*args)
  end
  
end
