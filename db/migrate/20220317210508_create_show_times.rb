class CreateShowTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :show_times do |t|
      t.integer :total_seats
      t.integer :sold_seats
      t.datetime :show_date_and_time
      t.integer :ticket_price
      t.integer :movie_id

      t.timestamps
    end
  end
end
