class Order < ApplicationRecord
  belongs_to :show_time
  belongs_to :customer
end
