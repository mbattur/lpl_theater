FactoryBot.define do
  factory :show_time do
    total_seats { Faker::Number.number(digits: 2) }
    sold_seats { Faker::Number.number(digits: 1) }
    show_date_and_time { Date.today }
    ticket_price { Faker::Number.number(digits: 2) }
    movie_id { Faker::Number.number(digits: 1) }
  end
end