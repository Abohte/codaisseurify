class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :destroy]

  def index
    @artists = Artist.all
  end

  def show
    puts "show:"
    puts params[:id]
    @song = Song.new
  end

  def destroy
    @artist.destroy
    redirect_to root_path, notice: "Artist deleted"
  end

  private

  def set_artist
    puts "setting artist"
    @artist = Artist.find(params[:id])
  end


end
