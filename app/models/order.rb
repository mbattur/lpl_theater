class Order < ApplicationRecord
  belongs_to :show_time
  belongs_to :customer
  accepts_nested_attributes_for :customer

  validates :number_of_ticket, :show_time_id, :customer_id, presence: true
  validates :number_of_ticket, numericality: { only_integer: true }
  validates_associated :customer
end
