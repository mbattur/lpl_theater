json.extract! order, :id, :number_of_ticket, :showtime_id, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
