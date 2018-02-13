class SongsController < ApplicationController
  before_action :set_song, only: [:destroy]

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    if @song.save
      respond_to do |format|
        format.html { redirect_to artist_path(@song.artist), notice: "Song added" }
        format.json { render json: @song  }
      end
    else
      error_message = @song.errors.full_messages.join(". ").concat(".")
      respond_to do |format|
        format.html {redirect_to artist_path(@song.artist),
          notice: "Song not added",
          alert: error_message }
        format.json { render json: error_message, status: :unprocessable_entity }
      end
    end

  end

  def destroy
    @artist = @song.artist
    @song.destroy

    respond_to do |format|
      format.html { redirect_to @artist, notice: "Song deleted" }
      format.json { head :no_content }
    end
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params
        .require(:song)
        .permit(:artist_id, :year, :title)
    end
end
