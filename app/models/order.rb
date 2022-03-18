class Order < ApplicationRecord
  validates :number_of_ticket, :show_time_id, :customer_id, presence: true
  validates :number_of_ticket, numericality: { only_integer: true }

  belongs_to :show_time
  belongs_to :customer
end
