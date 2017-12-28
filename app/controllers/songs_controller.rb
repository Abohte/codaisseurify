class SongsController < ApplicationController
before_action :set_song, only: [:destroy]

  def destroy
    @artist = @song.artist
    @song.destroy
    flash[:success] = "Song deleted"
    redirect_to @artist
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end
end
