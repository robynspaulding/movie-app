class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :plot, length: { minimum: 10}
end
