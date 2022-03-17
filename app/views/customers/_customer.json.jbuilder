json.extract! customer, :id, :first_name, :last_name, :credit_card_number, :expiration_date, :email, :created_at, :updated_at
json.url customer_url(customer, format: :json)
