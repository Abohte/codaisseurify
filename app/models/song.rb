class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true
  validates :year, presence: true
end
