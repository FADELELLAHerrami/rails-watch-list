class Movie < ApplicationRecord
  # associations
  has_many :bookmarks
  has_many :lists, through: :bookmark
  # validates
  validates :title , uniqueness: true , presence: true
  validates :overview , presence: true
end
