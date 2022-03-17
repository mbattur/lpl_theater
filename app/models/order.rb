class Order < ApplicationRecord
  belongs_to :show_time, foreign_key: "showtime_id", primary_key: "id"
  belongs_to :customer, foreign_key: "customer_id", primary_key: "id"
end
