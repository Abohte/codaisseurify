class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :type, presence: true
end
