class SongsController < ApplicationController
before_action :set_song, only: [:destroy]

  def destroy
    @artist = @song.artist
    @song.destroy
    redirect_to @artist, notice: "Song deleted"
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end
end
