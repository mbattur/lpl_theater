FactoryBot.define do
  factory :movie do
    name { Faker::Hipster.sentence }
  end
end