class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :credit_card_number
      t.string :expiration_date
      t.string :email

      t.timestamps
    end
  end
end
