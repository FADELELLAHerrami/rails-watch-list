class List < ApplicationRecord
  # association
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # validates
  validates :name , presence: true , uniqueness: true
end
