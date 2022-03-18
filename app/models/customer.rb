class Customer < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates :first_name, :last_name, :credit_card_number, :expiration_date, :email, presence: true
  validates :email, format: { with: EMAIL_REGEX }
  #credit_card_number - card can have as many as 19 digits or as little as 13. Details are in README.
  validates :credit_card_number, numericality: { only_integer: true, greater_than_or_equal_to: 13, less_than_or_equal_to: 19 }

  has_many :orders
end
