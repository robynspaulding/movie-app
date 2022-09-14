class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :plot, length: { minimum: 10}
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def movie_names
    movie = Movie.find_by(id: params["id"])

    genres = []
    genre << movie.genres.name

    render json: genres.as_json
  end
end
