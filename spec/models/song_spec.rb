require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "Validations" do
    it "is invalid without a title" do
      song = Song.new(title: nil)
      song.valid?
      expect(song.errors).to have_key(:title)
    end

    it "is invalid without a year" do
      song = Song.new(year: nil)
      song.valid?
      expect(song.errors).to have_key(:year)
    end
  end

  describe ".order_by_year" do
    let!(:song1) { create :song, year: 1999 }
    let!(:song2) { create :song, year: 2012 }
    let!(:song3) { create :song, year: 1967 }

    it "returns a sorted array of songs" do
      expect(Song.order_by_year).to eq([song3, song1, song2])
    end
  end

  describe "association with artist" do
    let(:artist) { create :artist }

    it "belongs to a artist" do
      song = artist.songs.build

      expect(song.artist).to eq(artist)
    end
  end

end
