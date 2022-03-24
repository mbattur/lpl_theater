class ShowTime < ApplicationRecord
  belongs_to :movie
  has_many :orders
  accepts_nested_attributes_for :orders

  scope :seats_available, -> { where("sold_seats < total_seats") }
  scope :active, -> { where("show_date_and_time >= ?", Date.today) }
  scope :popular, -> { where("sold_seats > ?", 10) }
  scope :by_date, ->(sort_order = :asc) { order(show_date_and_time: sort_order) }
  scope :by_sold_seats, ->(sort_order = :desc) { order(sold_seats: sort_order) }

  def movie_name
    movie.name
  end

  def total_sale_per_show
    ticket_price * sold_seats
  end
end
