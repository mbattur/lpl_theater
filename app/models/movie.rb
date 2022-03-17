class Movie < ApplicationRecord
  has_many :show_times, foreign_key: "movie_id", primary_key: "id"
end
