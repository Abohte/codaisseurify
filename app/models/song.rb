class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true
  validates :year, presence: true, length: { is: 4 }

  def self.order_by_year
    order :year
  end
end
