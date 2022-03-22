class ShowTime < ApplicationRecord
  has_many :orders

  belongs_to :movie

  scope :seats_available, -> { where("sold_seats < total_seats") }

  def movie_name
    movie.name
  end
end
