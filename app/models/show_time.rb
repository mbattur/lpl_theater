class ShowTime < ApplicationRecord
  has_many :orders

  belongs_to :movie
end
