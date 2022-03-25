class Customer < ApplicationRecord
  has_many :orders

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates :first_name, :last_name, :credit_card_number, :expiration_date, :email, presence: true
  validates :email, format: { with: EMAIL_REGEX }
  #credit_card_number - card can have as many as 19 digits or as little as 13. Details are in README.
  validates :credit_card_number, length: { minimum: 13, maximum: 19 }, numericality: { only_integer: true }

  def full_name
    first_name + " " + last_name
  end
end
