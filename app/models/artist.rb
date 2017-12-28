class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :artist_type, presence: true
end
