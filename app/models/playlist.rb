class Playlist < ApplicationRecord
  has_many :likes
  has_many :songs, through: :likes

  validates :name, presence: true, uniqueness: true
end
