class Artist < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :songs, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :artist_type, presence: true
  validates :image, presence:true

  def self.order_by_name
    order :name
  end
end
