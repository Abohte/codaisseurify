class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :destroy]

  def index
    @sort = params[:sort]
    @artists = Artist.order_by_name
    if @sort == "desc"
      @artists = @artists.reverse
    end
  end

  def show
    @songs = @artist.songs.order_by_year
    @song = Song.new
  end

  def destroy
    @artist.destroy
    redirect_to root_path, notice: "Artist deleted"
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
