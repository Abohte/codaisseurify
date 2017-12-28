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
      artist = Artist.new(type: nil)
      artist.valid?
      expect(artist.errors).to have_key(:type)
    end
  end
end
