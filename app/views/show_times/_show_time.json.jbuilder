json.extract! show_time, :id, :total_seats, :sold_seats, :show_date_and_time, :ticket_price, :movie_id, :created_at, :updated_at
json.url show_time_url(show_time, format: :json)
