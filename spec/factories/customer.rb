FactoryBot.define do
  factory :customer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    credit_card_number { Faker::Number.number(digits: 16) }
    expiration_date { Faker::Number.number(digits: 4) }
  end
end