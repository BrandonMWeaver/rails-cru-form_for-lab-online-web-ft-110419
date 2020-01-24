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
  
end
