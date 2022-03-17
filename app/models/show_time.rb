class ShowTime < ApplicationRecord
  has_many :orders, foreign_key: "customer_id", primary_key: "id"
end
