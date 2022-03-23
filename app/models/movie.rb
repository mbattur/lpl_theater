class Movie < ApplicationRecord
  has_many :show_times

  scope :popular, -> { where("LENGTH(name) < 10") }
end
