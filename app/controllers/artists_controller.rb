class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
  end

end
