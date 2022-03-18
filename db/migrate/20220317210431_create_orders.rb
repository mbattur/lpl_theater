class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :number_of_ticket
      t.integer :show_time_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
