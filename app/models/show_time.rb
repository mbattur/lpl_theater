class ShowTime < ApplicationRecord
  has_many :orders

  belongs_to :movie

  scope :seats_available, -> { where("sold_seats < total_seats") }
  scope :popular, -> { where("sold_seats > ?", 10) }

  def movie_name
    movie.name
  end

  def total_sale_per_show
    ticket_price * sold_seats
  end
end
