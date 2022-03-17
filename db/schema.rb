ActiveRecord::Schema[7.0].define(version: 2022_03_17_210508) do
  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "credit_card_number"
    t.string "expiration_date"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "number_of_ticket"
    t.integer "showtime_id"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_times", force: :cascade do |t|
    t.integer "total_seats"
    t.integer "sold_seats"
    t.datetime "show_date_and_time"
    t.integer "ticket_price"
    t.integer "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
