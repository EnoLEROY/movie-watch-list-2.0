class Playlist < ApplicationRecord
  has_many :likes
  has_many :songs, through: :like

  validates :name, presence: true, uniqueness: true
end
