require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "Validations" do
    it "is invalid without a name" do
      song = Song.new(name: nil)
      song.valid?
      expect(song.errors).to have_key(:name)
    end

    it "is invalid without a year" do
      song = Song.new(year: nil)
      song.valid?
      expect(song.errors).to have_key(:year)
    end
  end

end
