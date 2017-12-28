require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "Validations" do
    it "is invalid without a name" do
      artist = Artist.new(name: nil)
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end

    it "is invalid without a description" do
      artist = Artist.new(description: nil)
      artist.valid?
      expect(artist.errors).to have_key(:description)
    end

    it "is invalid with a description longer than 500 characters" do
      artist = Artist.new(description: "x"*501)
      artist.valid?
      expect(artist.errors).to have_key(:description)
    end

    it "is invalid without a type" do
      artist = Artist.new(artist_type: nil)
      artist.valid?
      expect(artist.errors).to have_key(:artist_type)
    end
  end

  describe "association with songs" do
    let(:artist) { create :artist }
    let!(:song) { create :song, artist: artist }

    it "has many songs" do
      song1 = artist.songs.new
      song2 = artist.songs.new

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end

    it "deletes associated songs" do
      expect { artist.destroy }.to change(Song, :count).by(-1)
    end
  end
end
