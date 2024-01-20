class Bookmark < ApplicationRecord
  # associations
  belongs_to :movie
  belongs_to :list
  # validates
  validates :comment, length: {minimum: 6}
  validates_uniqueness_of :list_id, :scope => [:movie_id]
end
